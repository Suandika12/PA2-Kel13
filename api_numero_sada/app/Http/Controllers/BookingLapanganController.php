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

    public function show(BookingLapangan $BookingLapangan)
    {
        return view('pages.booking_lapangan.show', compact('requests'));
    }

    public function approve(BookingLapangan $BookingLapangan)
    {
        $BookingLapangan->update([
            'status' => 'Approved',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Booking Lapangan approved successfully',
        ]);
    }

    public function deny(BookingLapangan $BookingLapangan)
    {
        $BookingLapangan->update([
            'status' => 'Denied',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Booking Lapangan denied successfully',
        ]);
    }
}
