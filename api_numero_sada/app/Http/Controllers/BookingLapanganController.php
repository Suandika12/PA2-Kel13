<?php

namespace App\Http\Controllers;

use App\Models\BookingLapangan;
use Illuminate\Http\Request;

class BookingLapanganController extends Controller
{
    public function index()
    {
        $requests = BookingLapangan::all();
        return view('pages.booking_lapangan.index', compact('requests'));
    }

    public function show($id)
    {

        // $product = OrderDetail::where('order_id',$id)
        // ->join('products','products.id','=','order_details.product_id')
        // ->get(['products.name','products.price','order_details.quantity','products.image']);

        $bookingLapangan = BookingLapangan::select('lapangans.name')
        ->join('lapangans', 'lapangans.id', '=', 'booking_lapangans.lapangans_id')
        ->where('booking_lapangans.id', $id)
        ->first();

        $user = BookingLapangan::where('booking_lapangans.id', $id)
        ->first();

        return view('pages.booking_lapangan.show', compact('bookingLapangan','user'));
    }

    public function approve(BookingLapangan $id)
    {
        $id->update([
            'status' => 'Approved',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Field Booking approved successfully',
        ]);
    }

    public function deny(BookingLapangan $id)
    {
        $id->update([
            'status' => 'Denied',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Field Booking denied successfully',
        ]);
    }

    public function destroy(BookingLapangan $id)
    {
        $id->delete();

        return response()->json([
            'status' => 'success',
            'message' => 'Field Booking deleted successfully',
        ]);
    }
}
