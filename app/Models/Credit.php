<?php

namespace App\Models;
use DateTimeInterface;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Model;

class Credit extends Model
{

    protected $fillable = ['id', 'date', 'purpose', 'order_id', 'sale_id', 'credit_in', 'amount', 'comment', 'insert_admin_id', 'created_at', 'updated_at'];


    protected function serializeDate(DateTimeInterface $date)
    {
        return $date->format('Y-m-d H:i:s');
    }


    public function admin()
    {
        return $this->belongsTo('App\Models\Admin', 'insert_admin_id');
    }

    public function balance()
    {
        return $this->belongsTo('App\Models\Balance', 'credit_in', 'name');
    }
}
