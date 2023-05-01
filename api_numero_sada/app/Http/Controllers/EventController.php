<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\Event;

class EventController extends Controller
{
    public function index()
    {
        $events = array();
        $Events = Event::all();
        foreach($Events as $Event) {
            $color = null;
            if($Event->title == 'Test') {
                $color = '#924ACE';
            }
            if($Event->title == 'Test 1') {
                $color = '#68B01A';
            }

            $events[] = [
                'id'   => $Event->id,
                'title' => $Event->title,
                'start' => $Event->start_date,
                'end' => $Event->end_date,
                'color' => $color
            ];
        }
        return view('pages.event.index', ['events' => $events]);
    }
    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required|string'
        ]);

        $Event = Event::create([
            'title' => $request->title,
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
        ]);

        $color = null;

        if($Event->title == 'Test') {
            $color = '#924ACE';
        }

        return response()->json([
            'id' => $Event->id,
            'start' => $Event->start_date,
            'end' => $Event->end_date,
            'title' => $Event->title,
            'color' => $color ? $color: '',

        ]);
    }
    public function update(Request $request ,$id)
    {
        $Event = Event::find($id);
        if(! $Event) {
            return response()->json([
                'error' => 'Unable to locate the event'
            ], 404);
        }
        $Event->update([
            'start_date' => $request->start_date,
            'end_date' => $request->end_date,
        ]);
        return response()->json('Event updated');
    }
    public function destroy($id)
    {
        $Event = Event::find($id);
        if(! $Event) {
            return response()->json([
                'error' => 'Unable to locate the event'
            ], 404);
        }
        $Event->delete();
        return $id;
    }
}
