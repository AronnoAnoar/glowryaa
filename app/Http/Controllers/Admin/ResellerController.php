<?php

namespace App\Http\Controllers\Admin;

use App\Models\Order;
use App\Models\Reseller;
use Illuminate\Http\Request;
use App\Models\ResellerPayments;
use App\Exports\ResellersExport ;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Services\SmsService;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel ;

class ResellerController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function getReseller(Request $request)
    {
            $item=$request->item??10;
            $resellers = Reseller::orderBy('id','DESC')->paginate($item);
            foreach ($resellers as $reseller) {
                $reseller->{'total_order'} = Order::where('reseller_id',$reseller->id)->count();
            }
            return response()->json([
                    "success" => "OK",
                    "resellers" => $resellers  ,
            ]) ;
     }


    public function allReseller(Request $request)
    {
            if(!empty($request->search)) {
                $resellers = Reseller::where('status',1)->where('name','like','%'.$request->search.'%')->orWhere('phone','like','%'.$request->search.'%')->orderBy('name')->select('id','name','phone')->get();
            } else {
                $resellers = Reseller::where('status',1)->orderBy('name')->select('id','name','phone')->get();
            }

            return response()->json([
                    "success" =>true,
                    "resellers" => $resellers  ,
            ]) ;
     }




    public function addReseller(Request $request)
    {

        $data = $request->validate([
            'name'  => 'required',
            'company_name'  => 'required',
            'refer_id'  => 'nullable',
            'email'  => 'required|unique:resellers',
            'phone'  => 'required|unique:resellers|digits:11',
            'bkash_no'  => 'required|unique:resellers|digits:11',
            'address'  => 'required',
            'commission'  => 'required',
            'order_return_cost'  => 'required',
            'page_name'  => 'nullable',
        ]);
            //check refer id
            if (!empty($data['refer_id'])) {
                $is_exist = Reseller::where('username',$data['refer_id'])->first();
                if (empty($is_exist)) {
                return response()->json(
                    [
                        'status' => 'invalid_referred_id',
                        'message' => 'this refer id is not valid',
                    ]) ;
                }
            }
          $r_id = Reseller::max('id') + 222 ;
          $data['username'] = 'dropshippingbd'. $r_id ;
          $data['password']=Hash::make(12345678);
          $data['status']=1;
          if ($request->hasFile('image')) {
           $file_path = $request->file('image')->store('images/reseller','public');
           $data['image']=$file_path ;
         }
         $reseller = Reseller::query()->create($data);
         (new SmsService())->resellerLoginCredential($reseller,12345678);
         return response()->json([
           "success"  => "OK",
           "message"  => "Reseller added successfully"
        ]);


     }




    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {

        $reseller  = Reseller::findOrFail($id);
        return response()->json([
            "success"  => "OK",
                "reseller"  => $reseller,
        ]);



    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $reseller = Reseller::findOrFail($id);
         return response()->json([
             'reseller' => $reseller,
         ]);
    }


    public function reseller_search($data){

           $resellers = Reseller::where('username','like','%'.$data.'%')
                                  ->orWhere('email','like','%'.$data.'%')
                                  ->orWhere('phone','like','%'.$data.'%')
                                  ->paginate(10);
          return response()->json([
              "status" => "OK",
              'resellers' => $resellers ,
          ]);

    }



    public function updateReseller(Request $request, $id) {

           $data = $request->validate([
                'name'  => 'required',
                'company_name'  => 'required',
                'refer_id'  => 'nullable',
                'email'  => 'required|email|unique:resellers,email,'.$id,
                'phone'  => 'required|digits:11|unique:resellers,phone,'.$id,
                'bkash_no'  => 'nullable|digits:11|unique:resellers,bkash_no,'.$id,
                'address'  => 'required',
                'commission'  => 'required',
                'order_return_cost'  => 'required',
                'page_name'  => 'nullable',

            ]);


            if ($request->hasFile('image')) {
                        $file_path = $request->file('image')->store('images/reseller','public');
                        $data['image']=$file_path ;
            }
            DB::table('resellers')->where('id',$id)->update($data);
            return response()->json([
                "success"  => "OK",
                "message"  => "Reseller updated successfully ",
            ]);


    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

         $reseller  = Reseller::find($id);

        if ($reseller->delete()) {
              return response()->json([
                 "success"  => "OK",
                  "message"  => "one reseller removed "
            ]);
        }else {
           return  response()->json([
                "success" => "Fail",
               "message" => "something wrong "
          ]);

        }


}


public function accountAccess($id){
       $reseller=Reseller::findOrFail($id);
        session()->put('reseller',$reseller);
           return response()->json([
               'status'=>"OK",
               'reseller' => $reseller,
               'reseller_token' => 'ASDF#%#454545$%@@@@@@@@2',
           ]);

 }

   public function deactive($id)
    {
        $reseller = Reseller::find($id);
           $reseller->status = 0;
            if ($reseller->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Reseller deactivate successfully'
                ]);
            }

    }


    function active($id)
    {
        $reseller = Reseller::findOrFail($id);
        $reseller->status = 1;
        $reseller->save();
        //sending login credential
        (new SmsService())->resellerLoginCredential($reseller,12345678);
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Reseller active successfully'
        ]);


    }



    public function export_reseller(){

       return Excel::download(new ResellersExport(),'reseller.xlsx') ;
    }






}
