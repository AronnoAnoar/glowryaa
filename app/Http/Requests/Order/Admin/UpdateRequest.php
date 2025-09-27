<?php

namespace App\Http\Requests\Order\Admin;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [

            'customer_phone' => 'required|digits:11 ',
            'name' => 'required ',
            'address' => 'required ',
            'paid_by' => 'nullable',
            'city_id' => 'required',
            'courier_id' => 'nullable|integer',
            'shipping_cost' => 'required',
            'sub_city_id' => 'required',
            'order_type' => 'required',
            'exchange_order_id' => 'nullable',
            'discount' => 'nullable|integer',
            'total' => 'required|integer',
            'paid' => 'nullable|integer',
            'status' => 'required|integer',
        
        ];
    }
}
