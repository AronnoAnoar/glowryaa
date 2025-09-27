<?php
 namespace App\Services ;

use App\Models\Sale;
use App\Models\Order;
use App\Models\Merchant;
use App\Models\Purchase;
use App\Models\OrderBarcode;
use App\Models\MerchantCashbook;
use App\Models\ProductBarcode;
use App\Models\ResellerCashbook;
use Picqer\Barcode\BarcodeGeneratorHTML;

class   HelperService{


   public static function uniqueInvoiceMaker($invoice_type){
        // 1 for order Invoice
        // 2 for sale Invoice
        // 3 for purchase Invoice
        // 4 for reseller cashbook Invoice
        //5 for merchant cashbook Invoice

        $order_invoice_no = 2222 + Order::max('id') ;
        $sale_invoice_no = 2222 + Sale::max('id') ;
        $purchase_invoice_no = 2222 + Purchase::max('id') ;
        $reseller_cashbook_invoice_no = 2222 + ResellerCashbook::max('id') ;
        $merchant_cashbook_invoice_no = 2222 + MerchantCashbook::max('id') ;
        //checking in order  table
        if ($invoice_type==1) {
            $isExistInvoice = Self::isExist(new Order(),'invoice_no',$order_invoice_no) ;
            return !empty($isExistInvoice) ? self::uniqueInvoiceMaker(1) : $order_invoice_no ;
        }
        //checking in sale  table
        if ($invoice_type==2) {
            $isExistInvoice = Self::isExist(new Sale(),'invoice_no',$sale_invoice_no) ;
            return !empty($isExistInvoice) ? self::uniqueInvoiceMaker(2) : $sale_invoice_no ;
        }
         //checking in sale  table
        if ($invoice_type==3) {
            $isExistInvoice = Self::isExist(new Purchase(),'invoice_no',$purchase_invoice_no) ;
            return !empty($isExistInvoice) ? self::uniqueInvoiceMaker(3) : $purchase_invoice_no ;
        }

        //checking in sale  table
        if ($invoice_type==4) {
            $isExistInvoice = Self::isExist(new ResellerCashbook(),'invoice_no',$reseller_cashbook_invoice_no) ;
            return !empty($isExistInvoice) ? self::uniqueInvoiceMaker(4) : $reseller_cashbook_invoice_no ;
        }


        //checking in sale table
        if ($invoice_type==5) {
            $isExistInvoice = Self::isExist(new MerchantCashbook(),'invoice_no',$merchant_cashbook_invoice_no) ;
            return !empty($isExistInvoice) ? self::uniqueInvoiceMaker(5) : $merchant_cashbook_invoice_no ;
        }



   }



   public static function isExist($model,$column,$invoice_no){

        return  $model->where($column,$invoice_no)->first() ?? null;
   }


   public static  function productBarcodeStore($product_id,$product_code){

        $generator = new BarcodeGeneratorHTML();
        $barcode = $generator->getBarcode($product_code, $generator::TYPE_CODE_128);
        $product_barcode = new ProductBarcode();
        $product_barcode->product_id = $product_id;
        $product_barcode->barcode = $barcode;
        $product_barcode->barcode_number = $product_code;
        $product_barcode->save();
        return ;
    }




    public static function slugCreator($string, $delimiter = '-') {
        // Remove special characters
        $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
        // Replace blank space with delimiter
        $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
        return $string;
    }



    public static function  merchantCashbookStore($order_id,$merchant_id,$amount,$is_income,$note=null){
            $cashbook= new MerchantCashbook();
            $cashbook->merchant_id = $merchant_id ;
            $cashbook->invoice_no = self::uniqueInvoiceMaker(5) ;
            $cashbook->is_income = $is_income ;
            $cashbook->amount = $amount ;
            $cashbook->is_commission = $amount ;
            $cashbook->order_id = $order_id ;
            $cashbook->created_by = session()->get('admin')['id'] ?  session()->get('admin')['id'] : 1 ;
            $cashbook->note = $note;
            $cashbook->save();
            return ;
    }




    public static function orderBarcodeStore($order_id,$order_invoice_no){

            $generator = new BarcodeGeneratorHTML();
            $barcode = $generator->getBarcode($order_invoice_no, $generator::TYPE_CODE_128);
            $order_barcode = new OrderBarcode();
            $order_barcode->order_id = $order_id;
            $order_barcode->barcode = $barcode;
            $order_barcode->barcode_number = $order_invoice_no;
            $order_barcode->save();
            return ;

    }


    public static function resellerCashbookStore($order_id,$reseller_id,$amount,$is_income,$note=null){

            $cashbook= new ResellerCashbook();
            $cashbook->reseller_id = $reseller_id ;
            $cashbook->invoice_no = 222 ;
            $cashbook->is_income = $is_income ;
            $cashbook->amount = $amount ;
            $cashbook->order_id = $order_id ;
            $cashbook->created_by = !empty(session()->get('admin')['id']) ? session()->get('admin')['id'] : null    ;
            $cashbook->note = $note;
            $cashbook->save();
            //update invoice
            $cashbook->invoice_no = 2222 + $cashbook->id ;
            $cashbook->save();
            return ;

    }



    public static function successMessage(){

        return response()->json([
            'success' => true,
            'message' => 'action success'
        ],201);

    }



    public static function failMessage($message){

        return response()->json([
            'status' => 0,
            'message' => $message,
        ],401);

    }





 }









?>