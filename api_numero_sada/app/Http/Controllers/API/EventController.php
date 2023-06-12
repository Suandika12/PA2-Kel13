<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Helpers\ResponseFormatter;
use App\Http\Controllers\Controller;
use App\Http\Resources\Event\EventResource;
use App\Models\Event;

class EventController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $search = $request->input('search');
        $events = Event::where('name', 'like', "%$search%")->get();

        return ResponseFormatter::success(
            EventResource::collection($events),
            'Data list event berhasil diambil'
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
        $event = Event::find($id);
        if ($event) {
            return ResponseFormatter::success(
                new EventResource($event),
                'Data detail event berhasil diambil'
            );
        } else {
            return ResponseFormatter::error(
                null,
                'Data event tidak ditemukan',
                404
            );
        }
    }
}
