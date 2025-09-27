<?php
namespace App\Services;

use App\Models\Debit;
use App\Models\Credit;
use App\Models\CustomerDue;
use App\Models\SupplierPayment;
use Carbon\Carbon;

class AccountService
{


      public static function creditStore($purpose,$amount,$credit_in,$order_id=null,$sale_id=null,$comment=null){

            $credit = new Credit();
            $credit->order_id = $order_id;
            $credit->sale_id = $sale_id;
            $credit->purpose = $purpose;
            $credit->amount = $amount;
            $credit->comment = $comment ;
            $credit->date = date('Y-m-d') ;
            $credit->credit_in=$credit_in;
            $credit->insert_admin_id=session()->get('admin')['id'] ?? null  ;
            $credit->save();
            return ;
      }



      public static  function  storeDebit($purpose,$amount,$debit_from,$is_expense=1,$comment=null, $purchase_id=null){

            $debit = new Debit();
            $debit->purpose = $purpose;
            $debit->debit_from=$debit_from;
            $debit->amount = $amount;
            $debit->is_expense = $is_expense;
            $debit->comment = $comment;
            $debit->date = date('Y-m-d') ;
            $debit->insert_admin_id=session()->get('admin')['id'];
            $debit->signature=null;
            $debit->purchase_id=$purchase_id;
            $debit->save();
            return ;
      }



      public static  function customerDueStore($name,$phone,$sale_id,$amount){

            $due= new CustomerDue();
            $due->customer_name= $name;
            $due->customer_mobile_no= $phone;
            $due->sale_id= $sale_id;
            $due->memo_no= $sale_id;
            $due->amount=$amount;
            $due->save();
            return ;
     }

      public static  function customerDueUpdate($customer_id,$sale_id,$amount){

            $due= CustomerDue::where('customer_id',$customer_id)->where('sale_id',$sale_id)->first() ;
            $due->customer_id= $customer_id;
            $due->sale_id= $sale_id;
            $due->amount=$amount;
            $due->save();
            return ;
     }

     public static function storeSupplierPayment($supplier_id,$purchase_id=null,$amount,$balance_name){

            $payment=new SupplierPayment();
            $payment->supplier_id=$supplier_id;
            $payment->purchase_id=$purchase_id;
            $payment->amount=$amount;
            $payment->date= Carbon::now() ;
            $payment->paid_by=$balance_name;
            $payment->save();
            return ;
      }





}
