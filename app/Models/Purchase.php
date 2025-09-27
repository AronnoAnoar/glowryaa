<?php

namespace App\Models;

use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Purchase extends Model
{
    protected $fillable = [ 'id', 'invoice_no', 'supplier_invoice_no', 'supplier_id', 'total', 'paid', 'purchase_date', 'status', 'file', 'created_at', 'updated_at'] ;
    public function supplier(){
        return $this->belongsTo('App\Models\Supplier','supplier_id');
    }

    public function purchaseItems(){
        return $this->hasMany('App\Models\PurchaseItem','purchase_id');
    }
    
      public function getCreatedAtAttribute($attr) {        
        return Carbon::parse($attr)->format('d-m-Y - h:ia'); 
    }
}
