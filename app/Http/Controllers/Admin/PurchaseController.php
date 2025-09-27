<?php

namespace App\Http\Controllers\Admin;
use Throwable;
use App\Models\Debit;
use App\Models\Product;
use App\Models\Purchase;
use App\Models\Supplier;
use App\Services\HelperService;
use App\Models\PurchaseItem;
use Illuminate\Http\Request;
use App\Services\SmsService;
use App\Services\LogTracker;
use Illuminate\Support\Facades\DB;
use App\Models\SupplierPayment;
use App\Http\Controllers\Controller;
use App\Models\Balance;
use Intervention\Image\Facades\Image;
use App\Services\AccountService;
use Illuminate\Support\Str;
class PurchaseController extends Controller
{

    public function index(Request $request)
    {
        $paginate = $request->item ?? 10;
        $status=$request->status ?? 1;
        $purchases = Purchase::orderBy('id', 'DESC')->with('supplier')->where('status',$status)->paginate($paginate);
        if ($purchases) {
            return response()->json([
                'status' => 'SUCCESS',
                'purchases' => $purchases
            ]);
        }


    }


    public function store(Request $request){
        $this->validate($request, [
            'supplier_id' => 'required',
        ]);

        //first save the purchase information
        DB::beginTransaction();
        try {
            $purchase = new Purchase();
            $purchase->supplier_id = $request->supplier_id;
            $purchase->invoice_no = $request->invoice_no;
            $purchase->total = $request->total;
            $purchase->paid = $request->paid ?? 0;
            $purchase->status=$request->status;
            $purchase->comment=$request->comment ?? null;
            $purchase->purchase_date = $request->purchase_date;

            if ($request->memo) {
                $purchase_memo = 'memo-' . time() . '.jpg';
                Image::make(file_get_contents($request->memo))->save(public_path('storage/images/purchase_memo/') . $purchase_memo);
                $purchase->file = 'images/purchase_memo/' . $purchase_memo;
            }

            
            $purchase->save();
            if(!empty($request->products)){
                //save the purchase item
                foreach ($request->products as $item) {
                    $product = Product::where('id', $item['product_id'])->first();
                    $product->stock = $product->stock + $item['quantity'];
                    $product->save();
                    $p_item = new PurchaseItem();
                    $p_item->purchase_id = $purchase->id;
                    $p_item->product_id = $item['product_id'];
                    $p_item->price = $item['price'];
                    $p_item->stock = $item['quantity'];
                    $p_item->save();

                }
            }

        //save a supplier paid amount
        if($purchase->paid>0){
            $supplier_payment=new SupplierPayment();
            $supplier_payment->supplier_id=$request->supplier_id;
            $supplier_payment->amount=$request->paid;
            $supplier_payment->date=$request->purchase_date;
            $supplier_payment->paid_by=$request->paid_by;
            $supplier_payment->purchase_id = $purchase->id;
            $supplier_payment->save();
        }

        //create a debit
        if($request->paid>0){
            $comment="Product Purchase";
            if(empty($request->products)){
                $comment="Fabrics Purchase";
            }
            $debit = new Debit();
            $debit->purpose =9;
            $debit->debit_from=$request->paid_by;
            $debit->amount = $request->paid;
            $debit->comment = "'$comment'.Paid Amount '$request->paid'";
            $debit->date = $request->purchase_date;
            $debit->insert_admin_id=session()->get('admin')['id'];
            $debit->purchase_id = $purchase->id;
            $debit->save();
        }


        //send message to supplier
        $supplier = Supplier::findOrFail($request->supplier_id);
        (new SmsService())->sendNewPurchaseMessage($supplier,$request->total,$request->invoice_no) ;
        DB::commit();
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'new purchase added'
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }

    }


    public function details($id){
        $purchase=Purchase::find($id);
        $details=PurchaseItem::where('purchase_id',$id)->with(['product'])->get();
         return response()->json([
            'status'=>'SUCCESS',
            'purchase'=>$purchase,
            'details'=>$details,
            'merchant'=>Supplier::where('id',$purchase->supplier_id)->first(),
        ]);
    }




    public function  search_according_data($search){
        $purchases = Purchase::where('invoice_no','like', '%' . $search . '%')
                        ->orderBy('id', 'DESC')->with('supplier')
                        ->paginate(10);

        return response()->json([
            'status'=>'OK',
            'purchases'=>$purchases
        ]);
    }




    public function  according_date_wise(Request $request){

        $purchases='';
        $paginate=$request->item??10;
        if(!empty($request->start_date) && empty($request->end_date)){
            $purchases=Purchase::whereDate('created_at','=',$request->start_date)->with('supplier')->paginate($paginate);
        }
        elseif(!empty($request->end_date) && !empty($request->start_date)){
            $purchases=Purchase::whereDate('created_at', '>=', $request->start_date)->whereDate('created_at', '<=', $request->end_date)->with('supplier')->paginate($paginate);
        }else{
            $purchases=Purchase::whereDate('created_at','=',$request->end_date)->with('supplier')->paginate($paginate);
        }
        return response()->json([
            'status'=>'OK',
            'purchases'=>$purchases

        ]);

    }

    public function uploadFile(Request $request){
        $purchase=Purchase::where('id',$request->id)->first();
        if($request->hasFile('file')){
            $path=$request->file('file')->store('file/memo','public');
            $purchase->file=$path;
            $purchase->save();
            return response()->json('ok');
        }
    }




    public function productPurchaseUpdate(Request $request,$id)
    {
        $data = $request->validate([
            'supplier_id' => 'required|integer',
            'purchase_items' => 'required',
            'paid_by' => 'nullable',
            'purchase_date' => 'nullable',
            'supplier_invoice_no' => 'nullable',
            'total' => 'required',
            'paid' => 'nullable',
            'comment' => 'nullable',
            'status' => 'required|integer',
        ]);
        $purchase = Purchase::findOrFail($id);
        DB::beginTransaction();
        try {

            //supplier previous payment and debit delete 
            if ($purchase->paid  > 0   ) {
                $previous_payment = SupplierPayment::where('purchase_id', $purchase->id)->firstOrFail();
                //store previous payment 
                Debit::where('purchase_id',$purchase->id)->orderBy('id','desc')->firstOrFail()->delete();
                //delete previous payment 
                $previous_payment->delete();  
            }
            //if new paid 
           
            if ($data['paid'] > 0) {
                $balance = Balance::where('name', $data['paid_by'])->firstOrFail();
                AccountService::storeSupplierPayment($data['supplier_id'], $purchase->id, $data['paid'], $balance->name);
                AccountService::storeDebit(9, $data['paid'], $balance->name, 0, 'product purchase paid  ' . $request->paid . ' the purchase invoice no ' . $purchase->invoice_no,$purchase->id);
            }
            //memo saving 
            if ($request->file) {
                $purchase_memo = 'memo-' . time() . '.jpg';
                Image::make(file_get_contents($request->file))->save(public_path('storage/images/purchase_memo/') . $purchase_memo);
                $data['file'] = 'images/purchase_memo/' . $purchase_memo;
            }
            
            $purchase->update($data);

            //delete and stock remove old items
            $exist_items = PurchaseItem::where('purchase_id', $purchase->id)->orderBy('id', 'desc')->get();
            foreach ($exist_items as $key => $item) {
                $product = Product::where('id', $item->product_id)->firstOrFail();
                $product->stock =  intval($product->stock) -  intval($item->stock);
                $product->save();
                $item->delete();
            }
            //save new purchase items

            foreach ($data['purchase_items'] as $item) {
                if($item['qty'] <= 0){
                    return response()->json([
                        'message' => 'Unable to save because purchase qty is zero',
                    ]);
                }
                $product = Product::where('id', $item['product_id'])->first();
                if($product->stock < 0){
                    return response()->json([
                        'message' => 'Unable to edit because this product less than request quantity',
                    ]);
                }
                $product->stock = $product->stock + $item['qty'];
                $product->save();

                $p_item = new PurchaseItem();
                $p_item->purchase_id = $purchase->id;
                $p_item->product_id = $item['product_id'];
                $p_item->price = $item['price'];
                $p_item->stock = $item['qty'];
                $p_item->save();
                
            }
          
            DB::commit();
            return HelperService::successMessage();
        } catch (Throwable $th) {

            DB::rollBack();
            LogTracker::failLog($th, session()->get('admin'));
            return HelperService::failMessage($th->getMessage());
        }

    }

    public function PurchaseECP(){
       return helpECP();
    }

    public function deleteProductPurchase($id)
    {

        DB::beginTransaction();
        try {
            $purchase = Purchase::findOrFail($id);
            $purchase_items = PurchaseItem::where('purchase_id', $purchase->id)->orderBy('id', 'desc')->get();
            foreach ($purchase_items as $key => $item) {
                $p_item = Product::where('id', $item->product_id)->firstOrFail();

                if($p_item->stock < 0){
                    return response()->json([
                        'message' => 'Unable to edit because this product less than request quantity',
                    ]);
                }

                $p_item->stock =  intval($p_item->stock) -  intval($item->stock);
                $p_item->save();
                //delete the item
                $item->delete();
            }
            //supplier previous payment and debit delete 

            if ($purchase->paid  > 0   ) {
                $previous_payment = SupplierPayment::where('purchase_id', $purchase->id)->first();
                if ($previous_payment) {
                    //store previous payment 
                    Debit::where('purchase_id',$purchase->id)->orderBy('id','desc')->firstOrFail()->delete();
                    //delete previous payment 
                    $previous_payment->delete();
                }
            }

            //delete purchase
            $purchase->delete();

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'purchase deleted ',
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage(),
            ]);
        }
    }




    public function deletePurchaseItem($id){
        DB::beginTransaction();
            try{
                $purchase_item=PurchaseItem::findOrFail($id);
                //update purchase total amount
                $purchase=Purchase::findOrFail($purchase_item->purchase_id);
                $purchase->total = $purchase->total - (intval($purchase_item->price) * intval($purchase_item->stock)) ;
                $purchase->save();
            //minus stock

            $product = Product::where('id',$purchase_item->product_id)->firstOrFail();
            if($product->stock < 0){
                return response()->json([
                    'message' => 'Unable to edit because this product less than request quantity',
                ]);
            }
            $product->stock =  intval($product->stock) -  intval($purchase_item->stock) ;
            $product->save();
                //delete item
                $purchase_item->delete();
                DB::commit();
                return HelperService::successMessage();
    
            }catch(Throwable $th){
    
                DB::rollBack();
                LogTracker::failLog($th,session()->get('admin')) ;
                return HelperService::failMessage($th->getMessage());
    
            }
    }



      
    public function getPurchase($id){
        $purchase = Purchase::findOrFail($id);
        $purchase_items = PurchaseItem::where('purchase_id',$id)->with('product:id,slug,thumbnail_img')->get();
        return response()->json([
            'success'=>true,
            'purchase'=>$purchase,
            'purchase_items'=>$purchase_items,
        ]);
    }



    public function SearchProduct($search)
    {
        $products = Product::where('name', 'like', '%' . $search . '%')->orWhere('product_code', 'like', '%' . $search . '%')->where('status', 1)->paginate(12);
        return response()->json([
            'success' => true,
            'products' => $products,
        ]);
    }


    public function getPurchaseProduct($code)
    {
        $product = Product::where('product_code',$code)->first();
        return response()->json([
            'success' => true,
            'product' => $product,
        ]);
            
    }

}