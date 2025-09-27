<?php

namespace App\Http\Controllers\Reseller;

use App\Models\Reseller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Services\SmsService;
use Illuminate\Support\Facades\Auth ;
use Illuminate\Support\Facades\Hash ;
use Illuminate\Support\Facades\Session;

class LoginController extends Controller
{
    //function for reseller register 

    public function register_reseller(Request $request){


                $validatedData = $request->validate([
                    'name'  => 'required',
                    'companyName'  => 'required',
                    'email'  => 'required|unique:resellers',
                    'phone'  => 'required|unique:resellers|digits:11',
                    'address'  => 'required',
                ]);

                $username=Reseller::max('id')+222;
                $reseller = new Reseller();
                $reseller->name=$request->name ;
                $reseller->username='rs'.''.$username;
                $reseller->refer_id= $request->refer_id ;
                $reseller->company_name=$request->companyName ;
                $reseller->email=$request->email ;
                $reseller->phone=$request->phone ;
                $reseller->address=$request->address ?? null;
                $reseller->status = 0 ;
                $reseller->password=Hash::make(12345678);
                if ($request->hasFile('image')) {
                    $file_path = $request->file('image')->store('images/reseller','public');
                    $reseller->image=$file_path ;
                }
                $reseller->save();
                (new SmsService())->resellerRegistrationConfirmation($reseller);
                return response()->json([
                    "status" => "OK",
                    "message" => "successfully registered, our support team will contact with you soon"
                ]);
                
    }




    //function for login reseller
    public  function check_login(Request $request){
     
           $validateData = $request->validate([
                    'phone' => 'required' ,
                    'password' => 'required' ,
           ]); 

           $credential = [ 'phone' => $request->phone , 'password' => $request->password , 'status' => '1'] ;
  
           if (Auth::guard('reseller')->attempt($credential)) {
               Session::put('reseller', Auth::guard('reseller')->user() );
               return response()->json([
                   'status' => 'OK',
                   'reseller'   => Auth::guard('reseller')->user(),
                   'reseller_token'  => Hash::make($request->password),
                   'message' => 'Login successfully ',
               ]);
           }else{

              return response()->json([
                  'status' => 'Fail',
                  'message' => 'Sorry :) in-valid login information'
              ]);
           }
    }


    public function current_reseller_password_update(Request $request){

        $validatedData = $request->validate([
            'old_password' => 'required ',
            'new_password' => 'required',

        ]);

        $reseller= session()->get('reseller');
        $merchant_current_password=$reseller->password;

        if (Hash::check($request->old_password,$merchant_current_password)) {
            if($request->new_password==$request->old_password){
                return response()->json([
                    "message" => "current password and new password can't be same ",
                ]);
            }else{
                $reseller->password=Hash::make($request->new_password);  
                    if ($reseller->save()) {
                        return response()->json([ "success" => "OK", "message" => "password changed successfully" ]);
                    }  
            }
         }else{
             return response()->json([
                "message" => "current password is incorrect! ",
              ]);
         } 

    }


    public function Reseller(){
            
         $reseller= Session()->get('reseller');
         
         return response()->json([
             "success" => "OK",
             "reseller" => $reseller ,
         ]);

    }


    public function checkSession(){

          if (Session::has('reseller')) {

                return response()->json([
                    "session" => "running",
                    "reseller" => session()->get('reseller') ,
                ]);

          } else {
                return response()->json([
                    "session" => "expired", 
                ]);
          }
          
    }



    public  function logout(){

          Auth::guard('reseller')->logout();
          session()->forget('reseller');
          return response()->json([
            'status' => 'OK',
            'message' => 'Logout successfully'
        ]);
    }


    public function send_reset_code(Request $request){
       
        $validatedData = $request->validate([
            'phone' => 'required|digits:11',
            ]);

          $reseller=Reseller::where('phone',$request->phone)->first();
        if(empty($reseller)){
            return response()->json([
                'status'=>"ERROR",
                'message'=>"The mobile number does not match with our records"
            ]);
       }else{
            $code=rand(000000,999999);
            DB::table('password_resets')->insert([
                'mobile_no'=>$request->phone,
                'token'=>Hash::make($code)
            ]);
           /// Reseller::SendMerchantPasswordResetCode($request->phone,$code);
            return response()->json([
                'status'=>"SUCCESS",
                'message'=>"Sent verification code on your mobile"
            ]);
          }
        } 




        public function reseller_reset_code_verified(Request $request, $phone){
    
           
            $phone=DB::table('password_resets')->where('mobile_no',$phone)->orderBy('id','DESC')->first();
            if(!empty($phone)){
               if (Hash::check($request->code, $phone->token)) {
                  return response()->json([
                       'status'=>"SUCCESS",
                       'message'=>"Code Match"
                   ]);
               }else{
                    return response()->json([
                       'status'=>"ERROR",
                       'message'=>"Code Matching Error"
                   ]);
               }
            }else{
                 return response()->json([
                       'status'=>"ERROR",
                       'message'=>"Code Matching Error"
                    ]);
              }
       
           }



        
    public function reseller_set_new_password(Request $request,$phone){

        $reseller=Reseller::where('phone',$phone)->first();
        if(!empty($reseller)){
            $reseller->password=Hash::make($request->password);
            if($reseller->save()){
                return response()->json([
                    'status'=>"SUCCESS",
                    'message'=>"Password updated successfully"
                ]);
            }else{
                 return response()->json([
                    'status'=>"ERROR",
                    'message'=>"Error establish"
                ]);
            }
        }
        else{
            return response()->json([
                'status'=>"ERROR",
                'message'=>"Error establish"
            ]);
        }
    
    }




}
