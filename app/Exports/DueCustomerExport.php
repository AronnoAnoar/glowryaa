<?php

namespace App\Exports;

use App\Models\Sale;
use App\Models\CustomerDue;
use Maatwebsite\Excel\Concerns\FromCollection;
use Maatwebsite\Excel\Concerns\WithHeadings;
use Maatwebsite\Excel\Concerns\ShouldAutoSize;

class DueCustomerExport implements FromCollection, WithHeadings , ShouldAutoSize
{
    /**
    * @return \Illuminate\Support\Collection
    */
    public function collection()
    {
        $without_company_sale=Sale::where('company_id',null)->pluck('id');
        $collections=CustomerDue::where('status',0)->whereIn('sale_id',$without_company_sale)->orderBy('id','DESC')->get();

        foreach ($collections as  $item) {
                unset($item->id,$item->sale_id , $item->status, $item->memo_no,$item->created_at,$item->updated_at );
                $collections[]=$item;
        }
        return $collections ;
    }


   public function headings():  array
    {
        return self::columnWidths( 'Mobile Number','Customer Name','Due Amount');
    }


    public static function  columnWidths($phone, $name, $amount): array {

         return [

                 $phone, $name, $amount
         ];
    }



}
