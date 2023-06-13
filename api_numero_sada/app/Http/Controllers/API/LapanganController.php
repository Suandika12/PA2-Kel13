<?php

namespace App\Http\Controllers\API;

use App\Models\Room;
use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Http\Resources\Lapangan\LapanganCollection;
use App\Http\Resources\Lapangan\LapanganResource;
use App\Models\Lapangan;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $lapangans = Lapangan::where('name', 'like', '%' . $request->search . '%')->get();
        return ResponseFormatter::success(
            new LapanganCollection($lapangans),
            'Data list rooms berhasil diambil'
        );
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Room  $room
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $lapangan = Lapangan::find($id);
        if ($lapangan) {
            return ResponseFormatter::success(
                LapanganResource::make($lapangan),
                'Data detail room berhasil diambil'
            );
        } else {
            return ResponseFormatter::error(
                null,
                'Data room tidak ada',
                404
            );
        }
    }
}
