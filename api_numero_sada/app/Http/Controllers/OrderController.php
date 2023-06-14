<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\OrderDetail;
use Illuminate\Http\Request;
use Carbon\Carbon;

class OrderController extends Controller
{
    public function index()
    {
        $orders = Order::all();
        return view('pages.orders.index', compact('orders'));
    }

    public function show($id)
    {
        $order = Order::where('id',$id)->first();

        $product = OrderDetail::where('order_id',$id)
        ->join('products','products.id','=','order_details.product_id')
        ->get(['products.name','products.price','order_details.quantity','products.image']);

        return view('pages.orders.show', compact('order','product'));

        // $order = Order::find($id);
        // $orders = Order::all();
        // $num = 1;
        // $product = OrderDetail::where('order_id',$id)
        // ->join('products','products.id','=','order_details_product.product_id')
        // ->get(['products.name','products.price','order_details_product.quantity','products.discount']);

        // $user = User::where('id',$order->user_id)->first();
        //  return view('pages.orders.show', compact('product','order','orders','num','user'));
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

    public function completed(Order $id)
    {
        $id->update([
            'status' => 'Completed',
        ]);

        return response()->json([
            'status' => 'success',
            'message' => 'Order completed successfully',
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
            'message'=>'Order deleted successfully'
        ]);
    }
}
