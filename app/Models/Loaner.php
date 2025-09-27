<?php

namespace App\Models;

use Exception;
use Illuminate\Database\Eloquent\Model;

class Loaner extends Model
{
    public function loan(){
        return $this->hasOne('App\Models\Loan','loaner_id');
    }





}
