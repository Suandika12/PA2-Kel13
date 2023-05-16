<?php

namespace App\Http\Controllers;
use App\Models\Event;
use App\Models\User;
use App\Models\Order;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $order = Order::where('status', 'like', "Pending")->get();
        $completed = Order::where('status','like',"Completed")->count();
        $pending = Order::where('status','like',"Pending")->count();
        $user = User::where('name', 'not like', "Admin")->get();
        $userTotal = User::where('name', 'not like', "Admin")->count();
        $event = Event::all();
        return view('pages.dashboard.index', compact('event','user','completed','pending','userTotal','order'));
    }
}
