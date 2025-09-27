<?php

namespace App\Http\Controllers\Frontend\Auth;

use App\Http\Controllers\Controller;
use App\Models\Customer;
use App\Providers\RouteServiceProvider;
use Auth;
use Carbon\Carbon;
use Illuminate\Http\Request;
use App\Models\OtpVerification;
use App\Services\SmsService;
use Hash;
use Session;

class OtpController extends Controller
{
    
    public function otpIndex(){
        return view('frontend.pages.auth.send_otp');
    }

    public function SendOtp(Request $request){
        // return $request;
        $data = $request->validate([
            'mobile_no' => 'required|digits:11',
        ]);
        $code = random_int(1000, 9999);
        $otp = new OtpVerification();
        $otp->mobile_no = $request->mobile_no;
        $otp->code = Hash::make($code);
        $otp->save();
        
        $this->setSessionData($request->mobile_no);
        // (new SmsService())->sendOtpCode($otp->mobile_no, $code);
        // return back()->with('message','sent one time pin on your mobile number');

        return response()->json([
            'status' => true,
            'message' => 'sent one time pin on your mobile number',
        ]);
        // return view('frontend.pages.auth.verify_otp');
    }



    public function setSessionData($mobile_no){
        Session::forget('otp_time');
        Session::forget('mobile_no');

        Session::put('otp_time',60);
        Session::put('mobile_no',$mobile_no);
        return true;
    }

     public function getSessionOtp(){
        $otp_time = Session::get('otp_time');
        $mobile_no = Session::get('mobile_no');

        return response()->json([
            'status' => true,
            'otp_time' => $otp_time,
            'mobile_no' => $mobile_no,
        ]);
     }

     public function clearSessionOtp($mobile_no){
        OtpVerification::where('mobile_no', $mobile_no)->latest()->first()->delete();
        Session::forget('otp_time');
        Session::forget('mobile_no');

        return response()->json([
            'status' => true,
            'message' => 'otp clear successfully',
        ]);
     }


    public function receiveOtp(){
        $otp_time = Session::get('otp_time');
        $mobile_no = Session::get('mobile_no');
        return view('frontend.pages.auth.verify_otp',compact('otp_time','mobile_no'));
    }

    public function verifyCodeOtp(Request $request)
    {
        $data = $request->validate([
            'code' => 'required|min:4',
            'mobile_no' => 'required|digits:11',
        ]);

        $otp = OtpVerification::where('mobile_no', $request->mobile_no)->latest()->first();
        $to_time = strtotime(Carbon::now()->format('Y-m-d g:i:s'));
        $from_time = strtotime(Carbon::parse($otp->created_at)->format('Y-m-d g:i:s'));
        $expire_time = round(abs($to_time - $from_time) / 60, 2);

        if (Hash::check($request->code, $otp->code)) {
            if ($expire_time > 5) {
                return back()->with('error','Code Time Expired');
            } else {
                $user = Customer::where('mobile_no', $request->mobile_no)->first();
                if (empty($user)) {
                    $user = new Customer();
                    $user->mobile_no = $request->mobile_no;
                    $user->password = Hash::make($request->mobile_no);
                    $user->name = null;
                    $user->email = null;
                    $user->image = null;
                    $user->city_id = null;
                    $user->address = null;
                    $user->status = 1;
                    $user->save();
                }
                Auth::loginUsingId($user->id);
                return redirect(RouteServiceProvider::DASHBOARD);
            }
        } else {
            return back()->with('error',"sorry! code doesn't match");
        }
    }
}
