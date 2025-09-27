<?php

namespace App\Models;

use DateTimeInterface;
use Illuminate\Database\Eloquent\Model;

class Debit extends Model
{

    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }
    
    protected $fillable = ['id', 'date', 'purpose', 'debit_from', 'amount', 'comment', 'purchase_id', 'is_expense', 'signature', 'insert_admin_id', 'created_at', 'updated_at'];


    public function admin()
    {
        return $this->belongsTo('App\Models\Admin', 'insert_admin_id');
    }
    public function purpose()
    {
        return $this->belongsTo('App\Models\AccountPurpose', 'purpose');
    }

    public function balance()
    {
        return $this->belongsTo('App\Models\Balance', 'debit_from', 'name');
    }


 
}
