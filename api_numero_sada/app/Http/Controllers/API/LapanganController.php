<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Http\Resources\Lapangan\LapanganResource;
use App\Models\Lapangan;

class LapanganController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->input('search');
        $lapangans = Lapangan::where('name', 'like', "%$search%")
            ->where('status', 'available')
            ->get();

        return ResponseFormatter::success(
            LapanganResource::collection($lapangans),
            'Data list lapangan berhasil diambil'
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
        $lapangan = Lapangan::find($id);
        if ($lapangan) {
            return ResponseFormatter::success(
                new LapanganResource($lapangan),
                'Data detail lapangan berhasil diambil'
            );
        } else {
            return ResponseFormatter::error(
                null,
                'Data lapangan tidak ditemukan',
                404
            );
        }
    }
}
