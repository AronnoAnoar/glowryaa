<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Sale extends Model
{

    public function getCreatedAtAttribute($attr) {
        return Carbon::parse($attr)->format('d-m-Y,h:i');
    }

    protected $fillable = ['id', 'sale_type', 'company_id', 'supplier_id', 'paid_by', 'status', 'name', 'mobile_no', 'address', 'invoice_no', 'total', 'paid', 'discount', 'create_by', 'created_at', 'updated_at'] ;

    public function company(){

        return $this->belongsTo('App\Models\Company','company_id');
    }

    public function create(){
        return $this->belongsTo('App\Models\Admin','create_by')->select(['id','name']);
    }


    public function saleItems(){
        return $this->hasMany('App\Models\SaleItem','sale_id');
    }



    public function dueAmount(){
       return $this->hasOne('App\Models\CustomerDue','sale_id');
    }

}
