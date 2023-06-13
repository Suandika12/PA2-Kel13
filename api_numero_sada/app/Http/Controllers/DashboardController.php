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
    $startDate = Carbon::now()->format('d-m-y');
    $month = Carbon::now()->month;
    $monthName = Carbon::now()->monthName;
    $year = Carbon::now()->year;
    
    $denied = Order::where('status', 'Denied')
    ->whereMonth('created_at', '=', $month)
    ->whereYear('created_at', '=', $year)
    ->count();
    $pending = Order::where('status', 'Pending')->limit(5)->get();
    $processing = Order::where('status', 'Processing')
    ->whereMonth('created_at', '=', $month)
    ->whereYear('created_at', '=', $year)
    ->count();
    $canceled = Order::where('status', 'Cancelled')
    ->whereMonth('created_at', '=', $month)
    ->whereYear('created_at', '=', $year)
    ->count();
    $completed = Order::where('status', 'Completed')
    ->whereMonth('created_at', '=', $month)
    ->whereYear('created_at', '=', $year)
    ->count();
    $pendings = Order::where('status', 'Pending')
    ->whereMonth('created_at', '=', $month)
    ->whereYear('created_at', '=', $year)
    ->count();
    
    $user = User::where('name', '!=', 'Admin')->limit(5)->get();
    $userTotal = User::where('name', '!=', 'Admin')->count();
    
    $event = Event::all();
    
    return view('pages.dashboard.index', compact('event', 'user', 'completed', 'pendings', 'pending', 'userTotal', 'denied', 'processing', 'canceled','startDate','monthName','year'));
    }
}
