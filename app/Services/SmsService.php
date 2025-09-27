<?php

namespace App\Services;

use Exception;
use App\Models\Loan;
use App\Models\LoanPaid;
use App\Models\Purchase;
use App\Models\EmployeeSalary;
use App\Models\GeneralSetting;
use App\Models\SalaryPerMonth;
use App\Models\ProductForPrint;
use App\Models\SupplierPayment;
use App\Models\PrintHousePayment;


class SmsService{


   public  $setting ;
   public  function __construct(){

     $this->setting= GeneralSetting::latest()->first();

   }




   public  function resellerRegistrationConfirmation($reseller){

    $sms = 'Assalamualikum, '. $reseller->name .' your registration is successful, our support team will contact with you soon. your login credential will send within 24 hour. Thanks for being with '. $this->setting->title ;
    return self::smsApi($reseller->phone,$sms);

    }

    public  function resellerPaymentWithDrawRequest($reseller,$amount){

        $sms = 'Assalamualikum, '. $reseller->name .' your withdrawal '.$amount.'/BDT  is pending now . your payment will pay with 24 hour. Thanks for being with '. $this->setting->title ;
        return self::smsApi($reseller->phone,$sms);

    }

    public  function resellerPaymentConfirmation($reseller,$amount,$transaction_id){

        $sms = 'Assalamualikum, '. $reseller->name .' your withdrawal '.$amount.'/BDT  is successful. transaction ID is '.$transaction_id.' . Thanks for being with '. $this->setting->title ;
        return self::smsApi($reseller->phone,$sms);

    }


    public  function resellerPaymentCancel($reseller,$amount){

        $sms = 'Assalamualikum, '. $reseller->name .' your withdrawal '.$amount.'/BDT  is canceled Thanks for being with '. $this->setting->title ;
        return self::smsApi($reseller->phone,$sms);

    }


    public function merchantPaymentConfirmation($merchant,$amount,$transaction_id){

    $sms = 'Assalamualikum, '. $merchant->name .' your withdrawal '.$amount.'/BDT is successful. transaction ID is  '.$transaction_id.' . Thanks for being with '. $this->setting->title ;
    return self::smsApi($merchant->phone,$sms);

    }


    public function merchantPaymentCancel($merchant,$amount){

        $sms = 'Assalamualikum, '. $merchant->name .' your withdrawal '.$amount.'/BDT is canceled Thanks for being with'. $this->setting->title ;
        return self::smsApi($merchant->phone,$sms);

    }






    public  function resellerLoginCredential($reseller,$password){

        $sms = 'আসসালামু আলাইকুম, '. $reseller->name .' আপনার রিসেলার প্যানেলের লগইন ইনফরমেশন [ ফোন '.$reseller->phone.' এবং পাসওয়ার্ড '.$password.' ]. ধন্যবাদ। ' ;
        return self::smsApi($reseller->phone,$sms);

    }



    public  function SendMessageToCustomerFromResellerOrder($number,$name,$invoice,$reseller){

        $sms = 'Dear '.$name.','. 'Your order has been created. Invoice number is '.$invoice. '.' .'If you have any query please contact with us .'.$reseller->phone.'. Thanks by  '.$reseller->company_name;
        return self::smsApi($number,$sms);

    }




   public  function SendMessageToInvestor($investor,$amount,$profit_month){

    $sms = 'Assalamualikum, You have received '.number_format($amount).'/=BDT, as your investment profit of '.$profit_month.'  from the
    ' . $this->setting->title. ' Thanks for being with us';   
    return self::smsApi($investor->mobile_no,$sms);
}



   public  function SendMessageToPrintHouse($print_house,$amount){

        $print_house_amount=ProductForPrint::where('company_id',$print_house->id)->sum('total_cost');
        $print_house_paid_amount=PrintHousePayment::where('print_house_id',$print_house->id)->sum('amount');
        $due_amount=$print_house_amount-$print_house_paid_amount;
        $sms = 'Thank you for the recent payment of '.number_format($amount).'/=BDT, You have received from the '. $this->setting->title.' and your due amount is '.number_format($due_amount).'/=BDT';
        return self::smsApi($print_house->mobile_no,$sms);
    }


   public  function SendMerchantPasswordResetCode($contacts,$code){

       $sms = "Your password reset code is ".$code.' Thanks by' .$this->setting->title;
       return self::smsApi($contacts,$sms);

   }


   public  function SendMessageToLoaner($loaner,$amount){
        //get supplier due amount
        $loans=Loan::where('loaner_id',$loaner->id)->sum('amount');
        $loanPaid=LoanPaid::where('loaner_id',$loaner->id)->sum('amount');
        $due_amount=$loans-$loanPaid;
        $sms = 'Thank you for the recent payment of '.number_format($amount).'/=BDT, You have received from the '.$this->setting->title.' and your due amount is '.number_format($due_amount).'/=BDT';
        return self::smsApi($loaner->mobile_no,$sms);
    }


    public  function sendMessageToLoanerForNewLoan($loaner,$amount){
        //get supplier due amount
        $loans=Loan::where('loaner_id',$loaner->id)->sum('amount');
        $loanPaid=LoanPaid::where('loaner_id',$loaner->id)->sum('amount');
        $due_amount=$loans-$loanPaid;
        ///send message
        $sms =  'Assalamualaikum, Dear '.$loaner->name. ','.$this->setting->title.' has taken '.number_format($amount).'/=BDT as a loan from you. Total amount is '.number_format($loans).'/=BDT, and due amount is '.number_format($due_amount).'/=BDT';

        return self::smsApi($loaner->mobile_no,$sms);
    }


    public  function SendMessageCustomer($number,$name,$invoice){
        $sms = $name.','. ' আসসালামু আলাইকুম! আপনার অর্ডার নং '.$invoice.' কনফার্ম করা হয়েছে। ঈদের ৩ দিন পর থেকে ডেলিভারি দেয়া হবে। হটলাইন- '.$this->setting->header_contact_number.', '.$this->setting->title;

        // $sms = 'Dear '.$name.','. 'Your order has been received. Invoice number is '.$invoice. '.' .'If you have any query please contact with us .'.$this->setting->header_contact_number.'. Thanks by  '.$this->setting->title;
        return self::smsApi($number,$sms);

    }





    public  function sendReturnMessage($admin_name,$invoice_no,$amount){

        $sms = 'Order has been returned, invoice number  '.$invoice_no. ', amount '.$amount.'Tk, Returned by '. $admin_name;   
        return self::smsApi($this->setting->header_contact_number,$sms);

    }


    public  function sendShipmentMessage($order){

        $total=0;
        if(!empty($order->total)){
          $total=($order->total)-($order->paid+$order->discount)+$order->shipping_cost;
        }
        $courier=$order->courier->name;
        $name=$order->customer->name;
        $sms = 'Dear ' . $name .'.'. ' Your order has been shipped to '.$courier.' Courier.'.' memo number is. ' .$order->memo_no.' and payable amount '.$total.' Tk.'.' Thanks by '.$this->setting->title;   
        return  self::smsApi($order->customer_phone,$sms);
    }



    public  function SendMessageToCustomer($customer,$amount,$invoice){

        $sms = 'Dear '.$customer->name .', Thank you for your purchase from '.$this->setting->title.'. Invoice number is S-'.$invoice.' & payable amount is ' .$amount.'/=BDT';   
        return  self::smsApi($customer->phone,$sms);
    }



    public  function SendMessageToCompany($company,$amount,$invoice){

        $sms = 'Dear '.$company->name .', Thank you for your purchase from '.$this->setting->title.'. Invoice number is S-'.$invoice.' & payable amount is ' .$amount.'/=BDT';
        return  self::smsApi($company->phone,$sms);
    }




    public  function sendMessageToSupplier($supplier,$amount){

        //get supplier due amount
        $supplier_purchase_amount=Purchase::where('supplier_id',$supplier->id)->sum('total');
        $supplier_paid_amount=SupplierPayment::where('supplier_id',$supplier->id)->sum('amount');
        $supplier_due_amount=$supplier_purchase_amount-$supplier_paid_amount;

        $sms = 'Thank you for the recent payment of '.number_format($amount).'/=BDT, You have received from the ' .$this->setting->title.' and your due amount is '.number_format($supplier_due_amount).'/=BDT';
         return self::smsApi($supplier->phone,$sms);
    }


     public  function SendReverseSaleMessageToSupplier($supplier,$invoice_no,$amount){

        //get supplier due amount
        $supplier_purchase_amount=Purchase::where('supplier_id',$supplier->id)->sum('total');
        $supplier_paid_amount=SupplierPayment::where('supplier_id',$supplier->id)->sum('amount');
        $supplier_due_amount=$supplier_purchase_amount - $supplier_paid_amount;

        $sms = 'Assalamualikum, Dear '.$supplier->company_name.' you have purchased '.$amount.' BDT from ' .$this->setting->title.'  invoice No is '.$invoice_no.' your due amount is '.$supplier_due_amount.' BDT' ;   
        return self::smsApi($supplier->phone,$sms);
    }




    public  function sendNewPurchaseMessage($supplier,$amount,$invoice_no)  {

            //get supplier due amount
            $supplier_purchase_amount=Purchase::where('supplier_id',$supplier->id)->sum('total');
            $supplier_paid_amount=SupplierPayment::where('supplier_id',$supplier->id)->sum('amount');
            $supplier_due_amount=$supplier_purchase_amount-$supplier_paid_amount;

            $sms = 'Assalamualaikum Dear '.$supplier->name .','. $this->setting->title .'  has a new purchase '.number_format($amount).'/=BDT from you. Invoice is : '.$invoice_no.' and total due amount is '.number_format($supplier_due_amount).'/=BDT Thanks from' .$this->setting->title;    
            return self::smsApi($supplier->phone,$sms);
    }


    public function SendUserPasswordResetCode(){

    }


    public  function sendMessageToEmployee($employee,$amount){

        $total_taken_amount=EmployeeSalary::where('employee_id',$employee->id)->sum('amount');
        $total_paid_amount=SalaryPerMonth::where('employee_id',$employee->id)->sum('amount');
        $due_amount= intval($total_taken_amount)  - intval($total_paid_amount) ;

        $sms = 'Assalamualikum, '. $employee->name.' you have received a payment as your salary ' .$amount.'/= BDT, from the '.$this->setting->title.' and your due/advance amount is ' .$due_amount.'/=BDT';
        return self::smsApi($employee->phone,$sms);
    }



    public   function  verifLogin($number,$sms){

        return self::smsApi($number,$sms);
    }

    public function sendOtpCode($number,$code){

        $sms =$code.' is your OTP by '.$this->setting->title;
        return self::smsApi($number,$sms);

    }





    public static function smsApi($contacts,$sms){


        // $url = "https://mshastra.com/sendurl.aspx?user=&pwd=&senderid=MTSMS4&CountryCode=880&mobileno=".$contacts."&msgtext=". urlencode($sms) .'"';
        // $ch = curl_init($url);
        // curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // try {
        //     $curl_scraped_page = curl_exec($ch);
        //     curl_close($ch);
        //     return $curl_scraped_page;
        // }catch (Exception $e) {
        //     return $e->getMessage();
        // }

    }








}








?>