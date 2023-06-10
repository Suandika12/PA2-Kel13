<?php

namespace App\Http\Controllers;
use App\Models\Event;
use App\Models\User;
use App\Models\Order;
use DB;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $denied = Order::where('status', 'like', "Denied")->count();
        $pending = Order::where('status', 'like', "Pending")->limit(5)->get();
        $processing = Order::where('status', 'like', "Processing")->count();
        $canceled = Order::where('status', 'like', "Cancelled")->count();
        $completed = Order::where('status','like',"Completed")->count();
        $pendings = Order::where('status','like',"Pending")->count();
        $user = User::where('name', 'not like', "Admin")->get();
        $userTotal = User::where('name', 'not like', "Admin")->count();
        $event = Event::all();
        return view('pages.dashboard.index', compact('event','user','completed','pendings','pending','userTotal', 'denied','processing','canceled'));
    }
}
