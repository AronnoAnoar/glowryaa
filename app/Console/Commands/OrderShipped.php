<?php

namespace App\Console\Commands;

use Carbon\Carbon;
use App\Models\Order;
use App\Models\Product;
use App\Models\OrderItem;
use App\Models\ComboProduct;
use Illuminate\Support\Facades\DB;
use Illuminate\Console\Command;
use App\Services\LogTracker;
use App\Services\SteadFast\TrackingOrder;

class OrderShipped extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'order:shipped';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Courier Order Status Check Then change order status in shipment';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        DB::beginTransaction();
        try {
        $orders = Order::where('courier_id', 15)->where('status', 8)->where('tracking_id', '!=', null)->orderBy('id', 'desc')->get();
            foreach ($orders as $order) {
                // $response = (new Parcel())->parcelTracking($order->tracking_id);
                $response = (new TrackingOrder())->tracking($order->tracking_id);
                // return $response['delivery_status'];
                // Log::info($response);
                // return 0;
                if (!empty($response)) {
                    if ($response['delivery_status'] == 'pending') {
                        $order->status = 4;
                        $order->shipment_admin_id = 83;
                        $order->shippment_date = Carbon::now();
                        $order->memo_no = 'https://steadfast.com.bd/t/' . $order->tracking_id;
                        $order->save();

                        if (!empty($order->courier_id) && !empty($order->memo_no)) {
                            //check product stock before order approved
                            $order_items = OrderItem::where('order_id', $order->id)->get();
                            foreach ($order_items as $order_item) {
                                $product = Product::where('id', $order_item->product_id)->firstOrFail();
            
                                //combo campaign products
                                if ($product->is_combo == 1) {
                                    $combo_products_id = ComboProduct::where('combo_product_id', $product->id)->select('general_product_id')->pluck('general_product_id');
                                    $combo_products = Product::whereIn('id', $combo_products_id)->select('id', 'stock', 'product_code')->get();
                                    foreach ($combo_products as $item) {
                                        //for exchange order items. re-stocking exchange items
                                        if($order_item->status == 3 ) {
                                            $product = Product::findOrFail($order_item->product_id);
                                            $product->stock = $product->stock + $order_item->quantity ;
                                            $product->save();
                                        }else{
                                            $item->stock = $item->stock - 1;
                                            $item->save();
                                        }
                                    }
                                } else {
                                    //for exchange order items. re-stocking exchange items
                                    if($order_item->status == 3 ){
                                        $product = Product::findOrFail($order_item->product_id);
                                        $product->stock = $product->stock + $order_item->quantity;
                                        $product->save();
                                    }else{
                                        $product->stock = $product->stock - $order_item->quantity;
                                        $product->save();
                                    }
                                }
                            }
                           
                        }

                    }
                }
            }
            DB::commit();
            return 0;
        } catch (\Throwable $th) {
            DB::rollBack();
            LogTracker::failLog($th, null);
            return 0;
        }
    }
}
