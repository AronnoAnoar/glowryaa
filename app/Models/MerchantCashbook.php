<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class MerchantCashbook extends Model
{
    protected $fillable = ['id', 'invoice_no', 'merchant_id', 'order_id', 'payment_method_id', 'amount', 'is_discount',
    'reference', 'is_income', 'attachment', 'paid_date', 'note', 'created_by', 'created_at', 'updated_at'];

    public function order(){
        return $this->belongsTo('App\Models\Order','order_id')->select(['id','invoice_no']);
    }   
}
