<?php

namespace App\Http\Controllers\Admin;

use Throwable;
use Carbon\Carbon;
use App\Services\HelperService;
use App\Models\Sale;
use App\Models\Debit;
use App\Models\Credit;
use App\Models\Company;
use App\Models\Product;
use App\Models\Customer;
use App\Models\CustomerDue;
use App\Models\Reseller;
use App\Models\Supplier;
use App\Services\LogTracker;
use App\Models\SaleItem;
use App\Services\SmsService;
use Illuminate\Http\Request;
use App\Models\GeneralSetting;
use App\Models\CompanySalePaid;
use App\Models\SupplierPayment;
use App\Services\AccountService;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class SaleController extends Controller
{
    private $company = '';
    public function __construct(Request $request)
    {
        $this->middleware('admin');
    }

    public function office_sale_index(Request $request)
    {
        $item = $request->item ?? 20;
        $sales = Sale::orderBy('id', 'DESC')
            ->where('sale_type', 1)
            ->with('company')
            ->paginate($item);
        return response()->json([
            'sales' => $sales,
            'status' => 'SUCCESS',
        ]);
    }

    public function store(Request $request)
    {
        // return $request->all();
        $data = $request->validate([
            'products' => 'required',
            'sale_type' => 'required|numeric',
            'total' => 'required|numeric',
            'paid' => 'required|numeric',
            'paid_by' => 'nullable',
            'partials_payment_amount' => 'nullable',
            'partials_paid_by' => 'nullable',
            'discount' => 'required|numeric',
            'supplier_id' => 'nullable|numeric',
            'company_id' => 'nullable|numeric',
            'reseller_id' => 'nullable|numeric',
            'name' => 'nullable',
            'address' => 'nullable',
            'comment' => 'nullable',
            'mobile_no' => 'nullable|digits:11',
        ]);
        DB::beginTransaction();
        try {

            //if company sale then sell will be according to company role
            $max_id = Sale::max('id') ?? 1;
            $invoice_number = rand(111, 999) + $max_id;
            $data['create_by'] = session()->get('admin')['id'];
            $data['invoice_no'] = $invoice_number;
            $sale = Sale::query()->create($data);
            //save the sale item
            foreach ($data['products'] as $item) {
                //manage product stock
                $product = Product::where('id', $item['product_id'])->firstOrFail();
                if ($product->stock <= 0 || $product->stock < $item['quantity']) {
                    return response()->json([
                        'message' => 'This product ' . $product->product_code . '  available stock is ' . $product->stock . '. but ordered quantity is ' . $item['quantity'] . ' . So please stock the product first ',
                    ]);
                } else {
                    $product->stock = $product->stock - $item['quantity'];
                    $product->save();
                }
                // $product->stock = $product->stock - $item['quantity'];
                // $product->save();
                //save the product stock
                $sale_item = new SaleItem();
                $sale_item->sale_id = $sale->id;
                $sale_item->product_id = $item['product_id'];
                $sale_item->price = $item['price'];
                $sale_item->qty = $item['quantity'];
                $sale_item->total = $item['price'] * $item['quantity'];
                $sale_item->variant_id = $item['variant_id'] ?? null;
                $sale_item->save();
            }


            if (!empty($data['company_id'])) {
                $company = Company::where('id', $data['company_id'])->firstOrFail();
                $data['company_id'] = $company->id;
                $data['name'] = $company->name;
                $data['address'] = $company->address;
                $data['mobile_no'] = $company->phone;
                $sale->update($data);
                if ($sale->paid > 0) {
                    AccountService::creditStore('company sale', $sale->paid - $data['partials_payment_amount'], $sale->paid_by, null,  $sale->id, 'company sale(' . $company->name . '), invoice no  S-' . $sale->id);

                    //inserting partial payment
                    if ($data['partials_payment_amount'] > 0) {
                        AccountService::creditStore('company sale',  $data['partials_payment_amount'], $data['partials_paid_by'], null, $sale->id, 'company sale, Partials Payment');
                    }
                }
                //save due record
                $due = $sale->total - ($sale->paid + $sale->discount);
                $due > 0 ? AccountService::customerDueStore($company->name,  $company->phone, $sale->id, $due)  : '';
                (new SmsService())->SendMessageToCompany($company,  $sale->total, $sale->invoice_no,  $sale->paid, $due);
            } elseif (!empty($data['reseller_id'])) {
                $reseller = Reseller::where('id', $data['reseller_id'])->firstOrFail();
                $data['reseller_id'] = $reseller->id;
                $data['name'] = $reseller->name;
                $data['address'] = $reseller->address;
                $data['mobile_no'] = $reseller->phone;
                $sale->update($data);

                if ($sale->paid > 0) {
                    //if the reseller is referred by any reseller then apply referred commission to referred reseller
                    if (!empty($reseller->refer_id)) {
                        $referred_reseller = Reseller::where('username',  $reseller->refer_id)->firstOrFail();
                        $commission_value = GeneralSetting::latest()->first()->reseller_refer_commission;
                        $commission_amount = intval(($sale->total / 100) * $commission_value);
                        $c_note =  'referred commission received ' .  $commission_amount . ' BDT. the referred reseller is ' . $reseller->name . ' the sale invoice number is ' . $sale->invoice_no;
                        HelperService::resellerCashbookStore($sale->id, $referred_reseller->id, $commission_amount, 1, $c_note);
                    }
                    AccountService::creditStore('reseller sale', $sale->paid - $commission_amount, $sale->paid_by, null, $sale->id, 'reseller sale(' . $reseller->name . '), invoice no  S-' . $sale->id . ' total amount BDT ' . $sale->total . ' referred commission paid  BDT ' . $commission_amount);
                }
            } elseif (!empty($data['supplier_id'])) {
                $supplier = Supplier::where('id', $data['supplier_id'])->firstOrFail();
                $data['supplier_id'] = $supplier->id;
                $data['name'] = $supplier->name;
                $data['address'] = $supplier->address;
                $data['mobile_no'] = $supplier->phone;
                $sale->update($data);

                if ($sale->paid > 0) {
                    AccountService::creditStore('supplier reverse sell', $sale->paid, $sale->paid_by, null, $sale->id, 'supplier ' . $supplier->company_name . '- invoice no  S-' . $sale->id);
                    //debit insert
                    AccountService::storeDebit(28, $sale->paid, $sale->paid_by, 0,  'supplier ' . $supplier->company_name . ' reverse sale, invoice no  S-' . $sale->id);
                }

                $supplier_payment = new SupplierPayment();
                $supplier_payment->supplier_id = $supplier->id;
                $supplier_payment->amount = $data['total'];
                $supplier_payment->date = date('Y-m-d');
                $supplier_payment->paid_by = 'reverse sale, invoice no  S-' . $sale->id . ' and paid by ' . $sale->paid_by . ' || ' .  $data['comment'];
                $supplier_payment->save();
                (new SmsService())->SendReverseSaleMessageToSupplier($supplier, $sale->invoice_no,  $supplier_payment->amount);
            } else {
                //first search customer new or exists
                $customer = Customer::where('phone', $data['mobile_no'])->first();
                //if not customer then save, as a new customer
                if (!$customer) {
                    $customer = new Customer();
                    $customer->name = $data['name'];
                    $customer->phone = $data['mobile_no'];
                    $customer->address = $data['address'];
                    $customer->city_id = 2;
                    $customer->customer_type = 3; //office sale customer
                    $customer->save();
                } else {
                    $customer->name = $data['name'];
                    $customer->address = $data['address'];
                    $customer->save();
                }
                //send message to customer
                $amount = $sale->total - $sale->discount;
                (new SmsService())->SendMessageToCustomer($customer, $amount, $sale->id);
                //create a credit.......
                $amount = $sale->paid - $data['partials_payment_amount'];
                AccountService::creditStore('Office sale', $sale->paid, $sale->paid_by,  null, $sale->id, 'Office Sale. Invoice No  S-' . $sale->id);
                if ($data['partials_payment_amount'] > 0) {
                    AccountService::creditStore('Office sale', $data['partials_payment_amount'], $data['partials_paid_by'], null,  $sale->id,  'Office sale, Partials Payment');
                }
                //if customer not paid total amount,then create a customer dues
                $due = $sale->total - ($sale->paid + $sale->discount);
                $due > 0 ? AccountService::customerDueStore($data['name'],  $data['mobile_no'], $sale->id,  $due)  : '';
            }

            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'sale_id' => $sale->id,
                'message' => 'new sale  added',
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }




    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'products' => 'required',
            'sale_type' => 'required|numeric',
            'total' => 'required|numeric',
            'paid' => 'required|numeric',
            'paid_by' => 'nullable',
            'partials_payment_amount' => 'nullable',
            'partials_paid_by' => 'nullable',
            'discount' => 'required|numeric',
            'supplier_id' => 'nullable|numeric',
            'company_id' => 'nullable|numeric',
            'reseller_id' => 'nullable|numeric',
            'name' => 'required',
            'address' => 'required',
            'mobile_no' => 'required|digits:11',
        ]);


        $sale = Sale::findOrFail($id);
        DB::beginTransaction();
        try {
            if ($data['sale_type'] == 1) {
                $customer = Customer::where('phone', $data['mobile_no'])->first();
                !empty($customer) ? $customer->update($data) : $customer = Customer::storeCustomer($data);
                $data['customer_id'] = $customer->id;
            }

            //create or update a credit.......
            if ($data['paid'] > 0) {
                $credit = Credit::where('sale_id', $sale->id)->first();
                if (!empty($credit)) {
                    $credit->comment = 'sale paid amount updated. previous amount was BDT ' . $credit->amount . ' and sale updated paid amount is BDT ' . $data['paid'] . ' sale updated by ' . session()->get('admin')['name'];
                    $credit->amount = $data['paid'];
                    $credit->save();
                }else{
                    $credit->comment = 'sale paid amount updated. previous amount was BDT ' . $credit->amount . ' and sale updated paid amount is BDT ' . $data['paid'] . ' sale updated by ' . session()->get('admin')['name'];
                    $credit->amount = $data['paid'];
                    $credit->save();
                }
            }

            $data['updated_by'] = session()->get('admin')['id'];
            $sale->update($data);
            $exist_items = SaleItem::where('sale_id', $sale->id)->get();
            foreach ($exist_items as $key => $item) {
                //re-stock
                $product = Product::where('id', $item->product_id)->firstOrFail();
                $product->stock = $product->stock + $item->qty;
                $product->save();
                //delete existed item
                $item->delete();
            }

            //re-insert items
            foreach ($request->products as $product) {
                $sale_product = Product::where('id', $product['product_id'])->firstOrFail();
                if ($sale_product->stock <= 0 || $sale_product->stock < $product['quantity']) {
                    return response()->json([
                        'message' => 'This product ' . $sale_product->product_code . '  available stock is ' . $sale_product->stock . '. but ordered quantity is ' . $product['quantity'] . ' . So please stock the product first ',
                    ]);
                } else {
                    $sale_product->stock = $sale_product->stock - $product['quantity'];
                    $sale_product->save();
                }

                $details = new SaleItem();
                $details->sale_id = $sale->id;
                $details->product_id = $product['product_id'];
                $details->price = $product['price'];
                $details->qty = $product['quantity'];
                $details->total = $product['quantity'] * $product['price'];
                $details->variant_id = $product['variant_id'] ?? null;
                $details->save();
            }




            $due_amount = $sale->total - ($sale->paid + $sale->discount);
            if ($sale->sale_type == 1 && $due_amount > 0) {
                $due_customer = CustomerDue::where('sale_id', $sale->id)->first();
                if ($due_customer) {
                    $due_customer->amount = $due_amount;
                    $due_customer->save();
                } else {
                    AccountService::customerDueStore($customer->name, $customer->id, $sale->id, $due_amount);
                }
            }


            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'Office Sale Updated'
            ]);
        } catch (Throwable $th) {

            DB::rollBack();
            LogTracker::failLog($th, session()->get('admin'));
            return HelperService::failMessage($th->getMessage());
        }
    }




    public function saleEdit($id)
    {
        $sale = Sale::where('id', $id)->firstOrFail();
        $sale_items = SaleItem::where('sale_id', $sale->id)->with(['product.productVariant.variant', 'variant', 'product.productImage',])->get();
        return response()->json([
            'success' => true,
            'sale' => $sale,
            'items' => $sale_items,
        ]);
    }

    public function companySalePayment(Request $request)
    {
        // return $request->all();

        DB::transaction(function () use ($request) {
            //finding company
            $this->company = Company::where('id', $request->company_id)->firstOrFail();
            //inserting data in payment table
            $payment = new CompanySalePaid();
            $payment->date = $request->date;
            $payment->company_id = $this->company->id;
            $payment->amount = $request->amount;
            $payment->credit_in = $request->credit_in;
            $payment->comment = $request->comment ?? null;
            $payment->save();
            $credit = new Credit();
            $credit->purpose = $this->company->name . ' paid money';
            $credit->amount = $request->amount;
            $credit->comment = $request->comment ?? null;
            $credit->date = $request->date;
            $credit->credit_in = $request->credit_in;
            $credit->insert_admin_id = session()->get('admin')['id'];
            $credit->save();
        });



        return response()->json([
            'status' => 'OK',
            'message' => 'Payment inserted successfully',
        ]);
    }

    public function CompanySaleDetails($id)
    {
        $company = Company::findOrFail($id);
        $sales = Sale::where('company_id', $id)
            ->orderBy('id', 'DESC')
            ->with('saleItems', 'dueAmount')
            ->paginate(50);
        $paid_from_paid_table = CompanySalePaid::where('company_id', $id)->sum('amount');
        $partial_paid = Sale::where('company_id', $id)->sum('paid');
        $paid_amount = intval($paid_from_paid_table) + intval($partial_paid);
        $paid_records = CompanySalePaid::where('company_id', $id)
            ->orderBy('id', 'desc')
            ->paginate(20);
        $total_purchase = Sale::where('company_id', $id)->sum('total');
        $total_discount = Sale::where('company_id', $id)->sum('discount');

        return response()->json([
            'sales' => $sales,
            'status' => 'OK',
            'company' => $company,
            'paid_amount' => $paid_amount,
            'paid_records' => $paid_records,
            'total_purchase' => $total_purchase,
            'total_discount' => $total_discount,
        ]);
    }

    public function SupplierSaleDetails($id)
    {
        $sales = Sale::where('supplier_id', $id)
            ->orderBy('created_at', 'DESC')
            ->get();
        return response()->json([
            'sales' => $sales,
            'status' => 'OK',
        ]);
    }

    public function companyPayment($id)
    {
        $company = Company::findOrFail($id);
        $payments = CompanySalePaid::where('company_id', $id)
            ->orderBy('id', 'DESC')
            ->paginate(50);
        return response()->json([
            'payments' => $payments,
            'status' => 'OK',
            'company' => $company,
        ]);
    }

    public function show($id)
    {
        $sale = Sale::where('id', $id)
            ->with('company', 'create')
            ->firstOrFail();
        $sale_item = SaleItem::where('sale_id', $sale->id)->with(['product.productVariant.variant', 'variant', 'product.productImage',])->get();

        return response()->json([
            'sale' => $sale,
            'items' => $sale_item,
            'status' => 'SUCCESS',
        ]);
    }

    public function paid($id)
    {
        $sale = Sale::findOrFail($id);
        $sale->status = 2;
        if ($sale->save()) {
            //make comment
            $paid_by = '';
            if ($sale->paid_by == 1) {
                $paid_by = 'Cash';
            } elseif ($sale->paid_by == 2) {
                $paid_by = 'bKash';
            } else {
                $paid_by = 'Bank';
            }

            $comment =
                'company sale.created at ' .
                date_format($sale->created_at, 'Y-m-d') .
                ' and paid date ' .
                date_format($sale->updated_at, 'Y-m-d') .
                '. Amount BDT ' .
                $sale->total .
                ' and paid by ' .
                $paid_by;
            $credit = new Credit();
            $credit->purpose = 'company sale';
            $credit->amount = $sale->total;
            $credit->comment = $comment;
            $credit->date = date('Y-m-d');
            $credit->insert_admin_id = session()->get('admin')['id'];
            $credit->save();

            return response()->json([
                'success' => 'OK',
                'message' => 'sale paid was successfully',
            ]);
        }
    }

    public function return($id)
    {
        $sale = Sale::findOrFail($id);
        $sale->status = 3;
        $sale->save();

        $sale_itmes = SaleItem::where('sale_id', $id)->get();
        //save the sale item
        foreach ($sale_itmes as $item) {
            //return $item->qty;
            //manage product stock
            $product = Product::where('id', $item->product_id)->firstOrFail();
            $product->stock = $product->stock + $item->qty;
            $product->save();

            return \response()->json([
                'success' => 'OK',
                'message' => 'sale returned was successfully',
            ]);
        }
    }

    public function office_sale_search_according_data($search)
    {
        $sale_items = Sale::where('sale_type', 1)->get();
        $sales = Sale::where('id', 'like', '%' . $search . '%')
            ->orWhere('mobile_no', 'like', '%' . $search . '%')
            ->orWhere('name', 'like', '%' . $search . '%')
            ->where('sale_type', 1)
            ->orderBy('id', 'DESC')
            ->paginate(10);

        return response()->json([
            'status' => 'OK',
            'sales' => $sales,
        ]);
    }

    public function office_sale_search_according_date_wise(Request $request)
    {
        $sales = '';
        $paginate = $request->item ?? 10;
        if (!empty($request->start_date) && empty($request->end_date)) {
            $sales = Sale::whereDate('created_at', '=', $request->start_date)
                ->where('sale_type', 1)
                ->paginate($paginate);
        } elseif (!empty($request->end_date) && !empty($request->start_date)) {
            $sales = Sale::whereDate('created_at', '>=', $request->start_date)
                ->whereDate('created_at', '<=', $request->end_date)
                ->where('sale_type', 1)
                ->paginate($paginate);
        } else {
            $sales = Sale::whereDate('created_at', '=', $request->end_date)
                ->where('sale_type', 1)
                ->paginate($paginate);
        }
        return response()->json([
            'status' => 'OK',
            'sales' => $sales,
        ]);
    }

    public function company_sale_index(Request $request)
    {
        $item = $request->item ?? 20;

        $sales = Sale::orderBy('id', 'DESC')
            ->where('sale_type', 2)
            ->with('company')
            ->paginate($item);
        return response()->json([
            'sales' => $sales,
            'status' => 'SUCCESS',
        ]);
    }

    public function company_sale_search_according_data($search)
    {
        $sales = Sale::where('sale_type', 2)
            ->where('name', 'like', '%' . $search . '%')
            ->orWhere('mobile_no', 'like', '%' . $search . '%')
            ->orWhere('address', 'like', '%' . $search . '%')

            ->orderBy('id', 'DESC')
            ->paginate(10);

        return response()->json([
            'status' => 'OK',
            'sales' => $sales,
        ]);
    }

    public function company_sale_search_according_date_wise(Request $request)
    {
        $sales = '';
        $paginate = $request->item ?? 10;
        if (!empty($request->start_date) && empty($request->end_date)) {
            $sales = Sale::whereDate('created_at', '=', $request->start_date)
                ->where('sale_type', 2)
                ->paginate($paginate);
        } elseif (!empty($request->end_date) && !empty($request->start_date)) {
            $sales = Sale::whereDate('created_at', '>=', $request->start_date)
                ->whereDate('created_at', '<=', $request->end_date)
                ->where('sale_type', 2)
                ->paginate($paginate);
        } else {
            $sales = Sale::whereDate('created_at', '=', $request->end_date)
                ->where('sale_type', 2)
                ->paginate($paginate);
        }
        return response()->json([
            'status' => 'OK',
            'sales' => $sales,
        ]);
    }

    public function exchangeStore(Request $request)
    {
        //return $request->all();
        DB::beginTransaction();
        try {
            if (empty($request->products)) {
                return \response()->json('Sale Product Empty');
            }

            if (empty($request->exchnage_products)) {
                return \response()->json('Exchange products Empty');
            }
            if ($request->exchange_total > $request->sale_total) {
                return \response()->json('Exchange amount can not be bigger then Sale amount');
            }
            if ($request->AmountTotal < $request->paid) {
                return \response()->json('Paid can not be bigger invoice total');
            }

            $sale = new Sale();
            $sale->sale_type = 1;
            $sale->paid_by = $request->paid_by;
            $sale->name = $request->name ?? null;
            $sale->mobile_no = $request->mobile_no ?? null;
            $sale->address = $request->address;
            $sale->total = $request->AmountTotal;
            $sale->paid = $request->paid ?? 0;
            $sale->discount = $request->discount ?? 0;
            // $sale->created_by = session()->get('admin')['id'];
            $sale->status = 2;
            $sale->invoice_no = HelperService::uniqueInvoiceMaker(2);

            $sale->save();
            foreach ($request->products as $item) {
                //manage product stock
                $product = Product::where('id', $item['product_id'])->firstOrFail();
                $product->stock = $product->stock - $item['quantity'];
                $product->save();

                //save the product stock
                $sale_item = new SaleItem();
                $sale_item->sale_id = $sale->id;
                $sale_item->product_id = $item['product_id'];
                $sale_item->price = $item['price'];
                $sale_item->qty = $item['quantity'];
                $sale_item->total = $item['price'] * $item['quantity'];
                $sale_item->save();
            }

            foreach ($request->exchnage_products as $prroduct) {
                //manage product stock
                $pro = Product::where('id', $prroduct['product_id'])->firstOrFail();
                $pro->stock = $pro->stock + $prroduct['quantity'];
                $pro->save();

                $sale_item = new SaleItem();
                $sale_item->sale_id = $sale->id;
                $sale_item->product_id = $prroduct['product_id'];
                $sale_item->price = $prroduct['price'];
                $sale_item->qty = $prroduct['quantity'];
                $sale_item->total = $prroduct['price'] * $prroduct['quantity'];
                $sale_item->status = 2;
                $sale_item->save();
            }

            //new credit
            if ($sale->paid > 0) {
                $credit = new Credit();
                $credit->purpose = 'Office sale';
                $credit->amount = $sale->paid;
                $credit->credit_in = $sale->paid_by;
                $credit->comment = 'Office Sale | Exchange Sale. Invoice No S-' . $sale->id;
                $credit->date = date('Y-m-d');
                $credit->insert_admin_id = session()->get('admin')['id'];
                $credit->save();
            }
            if ($request->due > 0) {
                DB::table('customer_dues')->insert([
                    'sale_id' => $sale->id,
                    'customer_mobile_no' => $request->mobile_no,
                    'customer_name' => $request->name,
                    'amount' => $request->due,
                    'created_at' => Carbon::now(),
                    'memo_no' => $sale->id,
                ]);
            }
            DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Exchange Sale added',
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }
}
