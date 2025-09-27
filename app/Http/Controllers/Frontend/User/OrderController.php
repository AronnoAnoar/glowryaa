<?php

namespace App\Http\Controllers\Frontend\User;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\OrderItem;
use DB;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function orderUpdate($id){
        Order::find($id)->update([
            'status' => 6
        ]);
        return back()->with('message','Order Cancel Successfully');
    }

    public function orderDetails($id){
        $order = DB::table('orders')->where('id', $id)->select('id','invoice_no','customer_id','shipping_cost','discount','paid','paid_by','total')->first();
        $order_items = OrderItem::with('product:id,name,thumbnail_img,product_code')->where('order_id', $id)
                                        ->select('id','order_id','product_id','price','quantity','total','status')
                                        ->get();
        $sub_total = $order_items->sum('total');
        $shipping_charge = $order->shipping_cost;
        $paid = $order->paid;
        $discount = $order->discount;

        $total_amount = $sub_total + $shipping_charge;
        $total_paid_amount = $discount + $paid;
        $total_due_amount = $total_amount - $total_paid_amount;
        $data = [
            'order'       => $order,
            'order_items' => $order_items,
            'sub_total'   => $order_items->sum('total'),
            'total_due_amount' => $total_due_amount,
        ];
        return view('frontend.pages.user.order_details',$data);
    }
}
