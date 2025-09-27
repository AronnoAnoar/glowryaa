<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CouponController extends Controller
{
    public function applyCoupon(Request $request)
    {
        $coupon = DB::table('coupons')->where('code', $request->name)->where('status', 1)->first();

        if ($coupon) {
            if (Carbon::today() <= $coupon->expire_date) {

                session()->put('coupon_id', $coupon->id);
                return response()->json([
                    'status' => true,
                    'validity' => true,
                    'coupon' => $coupon,
                    'message' => 'This coupon in Valid'
                ], 200);
            } else {
                session()->forget('coupon_id');
                return response()->json([
                    'status' => false,
                    'validity' => false,
                    'coupon' => [],
                    'message' => 'This coupon in Invalid'
                ], 200);
            }
        } else {
            session()->forget('coupon_id');
            return response()->json([
                'status' => false,
                'validity' => false,
                'coupon' => [],
                "message" => "This Coupon does not Exists",
            ]);
        }
    }


    public function calculationCoupon()
    {
        $sub_total = Cart::subtotal();
        $delivery_charge_id = session()->get('shipping')['delivery_charge_id'] ?? null;
        $coupon_id = session()->get('coupon_id');
        $sub_total_with_charge = 0;
        $sipping_charge = 0;
        $discount_amount = 0;
        $payable_amount = 0;

        //------------if delivery_charge
        if ($delivery_charge_id != null) {
            $delivery_charge = DB::table('delivery_charges')->where('id', $delivery_charge_id)->select('id', 'name', 'delivery_charge')->first();
            $sipping_charge = $delivery_charge->delivery_charge;
            $sub_total_with_charge = $sub_total + $delivery_charge->delivery_charge;
            $payable_amount = $sub_total_with_charge;
        }

        //--------------if coupon-------------
        if ($coupon_id != 0) {
            $coupon = DB::table('coupons')->where('status', 1)->where('id', $coupon_id)->first();
            if (Carbon::today() <= $coupon->expire_date) {
                if ($coupon->discount_type === 'flat') {
                    $discount_amount = $coupon->discount_amount;
                    $payable_amount = $payable_amount - $coupon->discount_amount;
                } else {
                    $discount_amount = ($sub_total / 100) * $coupon->discount_amount;
                    $payable_amount = $payable_amount - $discount_amount;
                }
            }
        }

        return response()->json([
            'sub_total' => $sub_total,
            'sipping_charge' => $sipping_charge,
            'discount_amount' => $discount_amount,
            'payable_amount' => $payable_amount,
            'success' => true,
            'message' => 'Coupon calculate successfully',
        ]);
    }

    public function forgetCouponSession()
    {
        session()->forget('coupon_id');
        return response()->json([
            'status' => true,
            'message' => 'Coupon session forgotten'
        ]);
    }
}
