<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MerchantPaymentTransaction extends Model
{
     

       protected $fillable = ['id', 'merchant_id', 'payment_method', 'account_no', 'transaction_id', 'amount', 'status', 'note', 'created_at', 'updated_at'] ;

       public function merchant() {

            return $this->belongsTo('App\Models\Merchant','merchant_id') ;
       }
}
