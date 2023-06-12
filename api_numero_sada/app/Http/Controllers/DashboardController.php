<?php

namespace App\Http\Controllers;
use App\Models\Event;
use App\Models\User;
use App\Models\Order;
use Carbon\Carbon;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $startDate = Carbon::now()->toDateString();
    
    $denied = Order::where('status', 'Denied')->whereDate('created_at', $startDate)->count();
    $pending = Order::where('status', 'Pending')->limit(5)->get();
    $processing = Order::where('status', 'Processing')->whereDate('created_at', $startDate)->count();
    $canceled = Order::where('status', 'Cancelled')->whereDate('created_at', $startDate)->count();
    $completed = Order::where('status', 'Completed')->whereDate('created_at', $startDate)->count();
    $pendings = Order::where('status', 'Pending')->whereDate('created_at', $startDate)->count();
    
    $user = User::where('name', '!=', 'Admin')->get();
    $userTotal = User::where('name', '!=', 'Admin')->count();
    
    $event = Event::all();
    
    return view('pages.dashboard.index', compact('event', 'user', 'completed', 'pendings', 'pending', 'userTotal', 'denied', 'processing', 'canceled'));
    }
}
