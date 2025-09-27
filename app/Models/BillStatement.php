<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class BillStatement extends Model
{
    protected $fillable = ['id', 'type', 'name', 'company_name', 'mobile_no', 'address', 'created_at', 'updated_at'] ;
}
