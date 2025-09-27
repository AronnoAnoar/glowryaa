<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ResellerPaymentTransaction extends Model
{
     

       protected $fillable = ['id', 'reseller_id', 'payment_method', 'account_no', 'transaction_id', 'amount', 'status', 'note', 'created_at', 'updated_at'] ;

       public function reseller() {

            return $this->belongsTo('App\Models\Reseller','reseller_id') ;
       }
}
