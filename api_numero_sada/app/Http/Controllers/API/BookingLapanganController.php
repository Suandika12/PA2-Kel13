<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use App\Http\Resources\BookingLapangan\BookingLapanganCollection;
use App\Http\Resources\BookingLapangan\BookingLapanganResource;
use App\Models\BookingLapangan;

class BookingLapanganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $bookingLapangan = BookingLapangan::where('user_id', Auth::user()->id)->where('status', 'like', '%' . $request->status . '%')
            ->orderBy('created_at', 'DESC')->get();
        return ResponseFormatter::success(
            new BookingLapanganCollection($bookingLapangan),
            'Data list booking lapangan berhasil diambil'
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $bookingLapangan = BookingLapangan::find($id);
        if ($bookingLapangan) {
            return ResponseFormatter::success(
                new BookingLapanganCollection($bookingLapangan),
                'Data detail request lapangan berhasil diambil'
            );
        } else {
            return ResponseFormatter::error(
                null,
                'Data request lapangan tidak ada',
                404
            );
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // Validasi waktu yang sama
        $startTime = date('H:i', strtotime(explode(' ', $request->start_time)[0]));
        $endTime = date('H:i', strtotime(explode(' ', $request->end_time)[0]));
        $existingBooking = BookingLapangan::where('lapangan_id', $request->lapangan_id)
            ->where(function ($query) use ($startTime, $endTime) {
                $query->where(function ($q) use ($startTime, $endTime) {
                    $q->where('start_time', '<=', $startTime)
                        ->where('end_time', '>=', $startTime);
                })->orWhere(function ($q) use ($startTime, $endTime) {
                    $q->where('start_time', '>=', $startTime)
                        ->where('end_time', '<=', $endTime);
                })->orWhere(function ($q) use ($startTime, $endTime) {
                    $q->where('start_time', '<=', $endTime)
                        ->where('end_time', '>=', $endTime);
                });
            })
            ->first();

        if ($existingBooking) {
            return ResponseFormatter::error(
                null,
                'The selected time has been used by another user',
            );
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('images/buktipembayaran/'), $imageName);
        }

        $durasi = $request->durasi;
        $hargaPerJam = 100000;
        $totalPrice = $durasi * $hargaPerJam;

        $bookingLapangan = BookingLapangan::create([
            'user_id' => Auth::user()->id,
            'lapangan_id' => $request->lapangan_id,
            'opsiPembayaran' => $request->opsiPembayaran,
            'start_time' => date('H:i', strtotime(explode(' ', $request->start_time)[0])),
            'end_time' => date('H:i', strtotime(explode(' ', $request->end_time)[0])),
            'durasi' => $request->durasi,
            'price' => $hargaPerJam,
            'totalPrice' => $totalPrice,
            'image' => $imageName
        ]);

        $bookingLapangan->save();

        return ResponseFormatter::success(
            $bookingLapangan,
            'Booking has succsesfully been created'
        );
    }
    /**
     * Update status request room to canceled.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function cancel(Request $request, $id)
    {
        $bookingLapangan = BookingLapangan::find($id);
        if ($bookingLapangan) {
            $bookingLapangan->update([
                'status' => 'Denied',
            ]);

            return ResponseFormatter::success(
                BookingLapanganResource::make($bookingLapangan),
                'Data request lapangan berhasil dibatalkan'
            );
        } else {
            return ResponseFormatter::error(
                null,
                'Data request lapangan tidak ada',
                404
            );
        }
    }
}
