<?php

namespace App\Http\Controllers;

use App\Models\Order;
use Illuminate\Http\Request;
use Carbon\Carbon;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::all();
        return view('pages.orders.index', compact('orders'));
    }

    public function show(Order $order)
    {
        return view('pages.orders.show', compact('order'));
    }

    public function process(Order $id)
    {
        $id->update([
            'status' => 'Processing',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Order processed successfully',
        ]);
    }

    public function deny(Order $id)
    {
        $id->update([
            'status' => 'Denied',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Order denied successfully',
        ]);
    }
    public function destroy(Order $id)
    {
        $id->delete();
        return response()->json([
            'alert'=>'success',
            'message'=>'Order berhasil dihapus secara permanent'
        ]);
    }
}
