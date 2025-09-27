<?php

namespace App\Http\Controllers\Admin;

use App\Models\Sale;
use App\Models\Credit;
use App\Models\CreditDue;
use App\Models\CustomerDue;
use Illuminate\Http\Request;
use App\Models\CustomerDuePaid;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class CreditDueController extends Controller
{

  public function index(Request $request){
        $item=$request->item??10;
        $credit_dues=DB::table('customer_dues')->join('sales','customer_dues.sale_id','=','sales.id')
                                                ->where('customer_dues.status',0)
                                                ->where('customer_dues.amount','>',0)
                                                ->where('sales.company_id',null)
                                                ->select('customer_dues.*')->orderBy('customer_dues.id','desc')->paginate($item);
        return response()->json($credit_dues);
    }

    public function  duePaid(Request $request,$id){

        $customer_due=CustomerDue::findOrFail($id);
        if($request->amount > $customer_due->amount){
            return response()->json('Due Amount '.$customer_due->amount.' But Request Amount '. $request->amount);
        }
        DB::transaction(function() use($customer_due,$request){
            if($customer_due->amount==$request->amount){
                $customer_due->status=1;
            }
            $customer_due->amount=$customer_due->amount - $request->amount;
            $customer_due->save();
            //crate a credit.......
            $credit = new Credit();
            $credit->purpose ="Due amount, Paid....";
            $credit->amount =$request->amount;
            $credit->comment ="customer due amount paid.... Extra Hint(Paid Amount: ". $request->amount.' Due Amount:
                              '.($customer_due->amount+$request->amount).$customer_due->memo_no ? $customer_due->memo_no : '';
            $credit->date =  date('Y-m-d');
            $credit->credit_in=$request->paid_by;
            $credit->insert_admin_id=session()->get('admin')['id'];
            $credit->save();

            $customer_due_paid = new CustomerDuePaid();
            $customer_due_paid->phone = $customer_due->customer_mobile_no ;
            $customer_due_paid->amount = $request->amount;
            $customer_due_paid->save();
        });
         return response()->json([
                'status' => 'SUCCESS',
                'message' => 'paid successfully',
                'due'=>$customer_due
            ]);

    }


    public function search($search){

            $credit_dues=DB::table('customer_dues')->join('sales','customer_dues.sale_id','=','sales.id')
                                                 ->where('customer_dues.status',0)
                                                 ->where('customer_dues.amount','>',0)
                                                 ->Where('customer_dues.customer_mobile_no','LIKE','%'.$search.'%')
                                                 ->where('sales.company_id',null)
                                                 ->select('customer_dues.*')->orderBy('customer_dues.id','desc')->paginate(10);
            return response()->json($credit_dues);

    }



    public function paymentHistory($phone){
         $payments = CustomerDuePaid::where('phone',$phone)->get();
         return response()->json([
                'payments' => $payments ,
         ]);
    }

}
