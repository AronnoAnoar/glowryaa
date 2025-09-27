<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Sale;
use App\Models\Debit;
use App\Models\Order;
use App\Models\Credit;
use App\Models\Purchase;
use App\Models\SaleItem;
use App\Models\Supplier;
use App\Models\OrderItem;
use App\Models\PurchaseItem;
use Illuminate\Http\Request;
use App\Models\AccountPurpose;
use App\Models\SupplierPayment;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class ReportController extends Controller
{

  public function __construct()
  {
    $this->middleware('admin');
  }

  public function orderReport(Request $request)
  {

    $item = $request->item ?? 10;
    if (!empty($request->start_date) && empty($request->end_date)) {
      $orders = Order::where('created_at', '=', $request->start_date)
        ->orderBy('id', 'DESC')
        ->with('orderItem')
        ->paginate($item);
    } elseif (!empty($request->start_date) && !empty($request->end_date)) {
      $orders = Order::where('created_at', '>=', $request->start_date)
        ->where('created_at', '<=', $request->end_date)
        ->orderBy('id', 'DESC')
        ->with('orderItem')
        ->paginate($item);
    } else {
      $orders = Order::orderBy('id', 'DESC')->with('orderItem')->paginate($item);
    }


    return \response()->json($orders);
  }

  public function officeSaleReport(Request $request)
  {


    $item = $request->item ?? 10;

    if (!empty($request->start_date) && empty($request->end_date)) {
      $sales = Sale::where('created_at', '=', $request->start_date)
        ->orderBy('id', 'DESC')
        ->with('saleItems')
        ->where('status', 1)
        ->paginate($item);
    } elseif (!empty($request->start_date) && !empty($request->end_date)) {
      $sales = Sale::where('created_at', '>=', $request->start_date)
        ->where('created_at', '<=', $request->end_date)
        ->orderBy('id', 'DESC')
        ->with('saleItems')
        ->where('status', 1)
        ->paginate($item);
    } else {
      $sales = Sale::orderBy('id', 'DESC')->with('saleItems')->where('status', 1)->paginate($item);
    }

    return \response()->json($sales);
  }

  public function accountReport(Request $request)
  {

    $account = array();
    $account['credit'] = 0;
    $account['debit'] = 0;

    if (empty($request->start_date) && empty($request->end_date)) {
      $credit = Credit::all();
      $debit = Debit::all();
    }

    if (!empty($request->start_date) && empty($request->end_date)) {
      $credit = Credit::whereDate('date', '=', $request->start_date)->get();
      $debit = Debit::whereDate('date', '=', $request->start_date)->get();
    }
    if (!empty($request->start_date) && !empty($request->end_date)) {
      $credit = Credit::whereDate('date', '>=', $request->start_date)->whereDate('date', '<=', $request->end_date)->get();
      $debit = Debit::whereDate('date', '>=', $request->start_date)->whereDate('date', '<=', $request->end_date)->get();
    }

    $account['credit'] = $credit->sum('amount');
    $account['debit'] = $debit->sum('amount');

    return \response()->json($account);
  }

  public function purchaseReport(Request $request)
  {

    $item = $request->item ?? 10;

    if (!empty($request->start_date) && empty($request->end_date)) {
      $purchase = Purchase::where('created_at', '=', $request->start_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->paginate($item);
    } elseif (!empty($request->start_date) && !empty($request->end_date)) {
      //return $request->all();
      $purchase = Purchase::where('created_at', '>=', $request->start_date)
        ->where('created_at', '<=', $request->end_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->paginate($item);
    } elseif (empty($request->start_date) && !empty($request->end_date)) {

      $purchase = Purchase::where('created_at', '=', $request->end_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->paginate($item);
    } else {
      $purchase = Purchase::orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->paginate($item);
    }

    return \response()->json($purchase);
  }





  public function supplierReport()
  {
    $supplier_id = Purchase::select('supplier_id')->pluck('supplier_id')->unique();

    $suppliers = Supplier::whereIn('id', $supplier_id)->get();

    $data = [];

    foreach ($suppliers as $k => $supplier) {

      $data[$supplier->company_name] = [
        'total_purchase_amount' => Purchase::where('supplier_id', $supplier->id)->sum('total'),
        'total_paid_amount' => SupplierPayment::where('supplier_id', $supplier->id)->sum('amount'),
        'purchase_count' => Purchase::where('supplier_id', $supplier->id)->count()
      ];
    }
    return \response()->json($data);
  }










  public function office_sale_report_pdf($start_date, $end_date)
  {

    if ($start_date == "All" && $end_date == "All") {
      $sales = Sale::orderBy('id', 'DESC')->with('saleItems')->get();
    }

    if ($start_date != "All" && $end_date == "All") {
      $sales = Sale::where('created_at', '=', $start_date)
        ->orderBy('id', 'DESC')
        ->with('saleItems')
        ->where('status', 1)
        ->get();
    }

    if ($start_date == "All" && $end_date != "All") {
      $sales = Sale::where('created_at', '=', $start_date)
        ->orderBy('id', 'DESC')
        ->with('saleItems')
        ->where('status', 1)
        ->get();
    }

    if ($start_date != 'All' && $end_date != "All") {
      $sales = Sale::where('created_at', '>=', $start_date)
        ->where('created_at', '<=', $end_date)
        ->orderBy('id', 'DESC')
        ->with('saleItems')
        ->where('status', 1)
        ->get();
    }

    $pdf = PDF::loadView('admin.pdf.office_sale_report', compact('sales'));
    return $pdf->stream();
  }



  public function order_sale_report_pdf($start_date, $end_date)
  {

    if ($start_date == "All" && $end_date == "All") {
      $orders = Order::orderBy('id', 'DESC')->with('orderItem')->get();
    }

    if ($start_date != "All" && $end_date == "All") {
      $orders = Order::where('created_at', '=', $start_date)
        ->orderBy('id', 'DESC')
        ->with('orderItem')
        ->get();
    }

    if ($start_date == "All" && $end_date != "All") {
      $orders = Order::where('created_at', '=', $end_date)
        ->orderBy('id', 'DESC')
        ->with('orderItem')
        ->get();
    }

    if ($start_date != 'All' && $end_date != "All") {
      $orders = Order::where('created_at', '>=', $start_date)
        ->where('created_at', '<=', $end_date)
        ->orderBy('id', 'DESC')
        ->with('orderItem')
        ->get();
    }

    $pdf = PDF::loadView('admin.pdf.order_sale_report', compact('orders'));
    return $pdf->stream();
  }



  public function purchase_report_pdf($start_date, $end_date)
  {

    if ($start_date == "All" && $end_date == "All") {
      $purchases = Purchase::orderBy('id', 'DESC')->with(['purchaseItems', 'supplier'])->get();
    }

    if ($start_date != "All" && $end_date == "All") {
      $purchases = Purchase::where('created_at', '=', $start_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->get();
    }

    if ($start_date == "All" && $end_date != "All") {
      $purchases = Purchase::where('created_at', '=', $end_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->get();
    }

    if ($start_date != 'All' && $end_date != "All") {
      $purchases = Purchase::where('created_at', '>=', $start_date)
        ->where('created_at', '<=', $end_date)
        ->orderBy('id', 'DESC')
        ->with(['purchaseItems', 'supplier'])
        ->get();
    }

    $pdf = PDF::loadView('admin.pdf.purchase_report', compact('purchases'));
    return $pdf->stream();
  }

  public function saleProfite(Request $request)
  {


    //  return $request->all();

    $sale_items = SaleItem::orderBy('id', 'DESC')->where('status', 1)->groupBy('sale_id');

    if (!empty($request->start_date) && empty($request->end_date)) {
      $sale_items = SaleItem::whereDate('created_at', '=', $request->start_date)
        ->orderBy('id', 'DESC')
        ->where('status', 1)
        ->get()
        ->groupBy('sale_id');
    }
    if (!empty($request->start_date) && !empty($request->end_date)) {
      $sale_items = SaleItem::whereDate('created_at', '>=', $request->start_date)
        ->whereDate('created_at', '<=', $request->end_date)
        ->orderBy('id', 'DESC')->where('status', 1)
        ->get()
        ->groupBy('sale_id');
    }



    $data = [];

    $i = 0;
    foreach ($sale_items as $k => $sale_item) {

      //  return $sale_item;
      $i++;
      $purchase_total = 0;

      foreach ($sale_item as $item) {
        $product_purchase_items = purchaseItem::where('product_id', $item->product_id)->get();
        $purchase_price = 0;
        foreach ($product_purchase_items as $product_purchase_item) {
          $purchase_price += $product_purchase_item->price * $product_purchase_item->stock;
        }
        if ($purchase_price > 0) {
          $a_price = $purchase_price / $product_purchase_items->sum('stock');
          $purchase_total += $a_price * $item->qty;
        }
      }
      $sale = Sale::where('id', $k)->where('status', 1)->first();
      $s_total = 0;
      $s_discount = 0;

      if (!empty($sale->total)) {
        $s_total = $sale->total;
      }
      if (!empty($sale->discount)) {
        $s_discount = $sale->discount;
      }
      $data[$i] = [
        'sale_invoice' => $k,
        'sale_total' => $s_total - $s_discount,
        'product_purchase_amount' => $purchase_total,
        'product_count' => $sale_item->sum('qty')
      ];
    }
    return \response()->json($data);
  }




  public function orderProfit(Request $request)
  {

    $order_items = OrderItem::get()->groupBy('order_id');
    if (!empty($request->start_date) && empty($request->end_date)) {
      $order_items = OrderItem::whereDate('created_at', '=', $request->start_date)->get()->groupBy('order_id');
    }

    if (!empty($request->start_date) && !empty($request->end_date)) {
      $order_items = OrderItem::whereDate('created_at', '>=', $request->start_date)
        ->whereDate('created_at', '<=', $request->end_date)
        ->get()
        ->groupBy('order_id');
    }

    $data = [];
    $i = 0;
    foreach ($order_items as $k => $order_item) {

      $i++;
      $purchase_total = 0;

      foreach ($order_item as $item) {
        $product_purchase_items = purchaseItem::where('product_id', $item->product_id)->get();
        $purchase_price = 0;
        foreach ($product_purchase_items as $product_purchase_item) {
          $purchase_price += $product_purchase_item->price * $product_purchase_item->stock;
        }
        if ($purchase_price > 0) {
          $a_price = $purchase_price / $product_purchase_items->sum('stock');
        }
        $purchase_total += $a_price * $item->quantity;
      }
      $order = Order::where('id', $k)->first();

      if (!empty($order) && $order->status == 5) {
        $data[$i] = [
          'order_invoice' => $order->invoice_no,
          'order_total' => $order->total - $order->discount,
          'product_purchase_amount' => $purchase_total,
          'product_count' => $order_item->sum('quantity'),
          'order_date' => date("d-m-Y", strtotime($order->created_at)),
          'order_delivered_date' => date("d-m-Y", strtotime($order->delivery_date)) ?? ""
        ];
      }
    }
    return $data;
  }




     
  public function  profitReport(Request  $request){
        

    if (!empty($request->start_date)  &&  !empty($request->end_date )) {

          $expense = Debit::where('is_expense',1)->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)->sum('amount') ;
          $debit_purposes = AccountPurpose::where('is_expense',1)->select('id','text','is_expense')->get() ;
          foreach ($debit_purposes as $key => $item) {
              $item->{'amount'} = DB::table('debits')->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)->where('purpose',$item->id)->sum('amount');
          }
         

          //sales
          $sales = Sale::select('id','total','discount')->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)->with(['saleItem:id,sale_id,product_id'])->orderBy('id','desc')->get() ;
          $total_sales_amount = $sales->sum('total') - $sales->sum('discount')  ;
          // total sales purchase amount
          $total_sales_purchase_amount = 0 ;
          foreach ($sales as $key => $order) {
            foreach($order->saleItem as $item){
                $total_sales_purchase_amount += purchaseItem::where('product_id',$item->product_id)->avg('price') ;
            }
          }

   
          //orders only delivered and shipment 
          $orders =Order::whereIn('status',[4,5])->select('id','total','shipping_cost','discount')->whereDate('created_at','>=',$request->start_date)->whereDate('created_at','<=',$request->end_date)->with(['orderItem:id,order_id,product_id'])->orderBy('id','desc')->get();
          $total_orders_amount =($orders->sum('total') + $orders->sum('shipping_cost')) - $orders->sum('discount')  ;
          // total orders purchase amount
          $total_orders_purchase_amount = 0 ;
          foreach ($orders as $key => $order) {
            foreach($order->orderItem as $item){
                $total_orders_purchase_amount += purchaseItem::where('product_id',$item->product_id)->avg('price') ;
            }
          }


          return response()->json([
            'success' => true,
            'debit_purposes' => $debit_purposes,
            'expense' => $expense,
            'total_orders_amount' => $total_orders_amount,
            'total_sales_amount' => $total_sales_amount,
            'total_orders_purchase_amount' =>  $total_orders_purchase_amount,
            'total_sales_purchase_amount' =>  $total_sales_purchase_amount
      ]);


           
    }


        
  }


  






}
