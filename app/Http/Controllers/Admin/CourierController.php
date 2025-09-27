<?php

namespace App\Http\Controllers\Admin;

use App\Models\Courier;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CourierApi as ModelsCourierApi;
use App\Services\CourierApi;

class CourierController extends Controller
{


    public function index()
    {
        $courier = Courier::orderBy('id', 'desc')->paginate(10);
        return response()->json([
            'status' => 'SUCCESS',
            'couriers' => $courier
        ]);
    }



    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:couriers',
        ]);

        $courier = new Courier();
        $courier->name = $request->name;
        $courier->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => "courier add successfully"
        ]);
    }


    public function edit($id)
    {
        $courier = Courier::findOrFail($id);

        return response()->json([
            'status' => 'SUCCESS',
            'courier' => $courier
        ]);
    }

    public function update(Request $request, $id)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);

        $courier = courier::findOrFail($id);

        $courier->name = $request->name;
        $courier->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => " Updated successfully"
        ]);
    }



    public function active($id)
    {
        $courier = courier::findOrFail($id);
        $courier->status = 1;
        $courier->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'courier active successfully'
        ]);
    }

    public function deActive($id)
    {
        $courier = courier::findOrFail($id);

        $courier->status = 0;
        $courier->save();
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'courier de-active successfully'
        ]);
    }



    public function search_courier($data)
    {
        $couriers = Courier::where('name', 'like', '%' . $data . '%')->paginate(20);
        return response()->json(['couriers' => $couriers]);
    }



    public function generatePathaoToken(){

       
       $access_token =  (new CourierApi())->pathaoAccessToken(); 
       $data['pathao_access_token'] =  $access_token ;
       ModelsCourierApi::where('id',1)->update($data) ;
       return response()->json([
        'status' => true , 
        'message' => 'Pathao access token generated' , 
       ]) ;

    }


    public function getCourierApiInfo(){

       $information = ModelsCourierApi::findOrFail(1) ;
       return response()->json([
        'status' => true , 
        'information' => $information
       ]) ;

    }




    
    public function  updateCourierApiInfo(Request $request){

        $data = $request->validate([
                'steadfast_api_key' => 'nullable',
                'steadfast_secret_key' => 'nullable',
                'redx_store_id' => 'nullable',
                'redx_access_token' => 'nullable',
                'pathao_client_id' => 'nullable',
                'pathao_store_id' => 'nullable',
                'pathao_client_secret' => 'nullable',
                'pathao_client_email' => 'nullable',
                'pathao_client_password' => 'nullable',
                'pathao_access_token' => 'nullable',
  
        ]);

        ModelsCourierApi::where('id',1)->update($data) ;
        //update access_token and refresh_token 
        $file_location = config_path('courier.php');
        $config_data =
            "<?php"
            .PHP_EOL."
            return ["
                .PHP_EOL.
                "'steadfast_api_key' => '". $data['steadfast_api_key'] ."',"
                .PHP_EOL.
                "'steadfast_secret_key' =>'". $data['steadfast_secret_key'] ."',"
                .PHP_EOL
                .PHP_EOL.
                "'pathao_client_id' =>'". $data['pathao_client_id'] ."',"
                .PHP_EOL.
                "'pathao_client_secret' => '". $data['pathao_client_secret'] ."',"
                .PHP_EOL.
                "'pathao_store_id' =>'". $data['pathao_store_id'] ."',"
                .PHP_EOL.
                "'pathao_client_email' => '". $data['pathao_client_email'] ."',"
                .PHP_EOL.
                "'pathao_client_password' => '". $data['pathao_client_password'] ."',"
                .PHP_EOL.
                "'pathao_access_token' => '". $data['pathao_access_token'] ."',"
                .PHP_EOL
                .PHP_EOL.
                "'redx_store_id' => '". $data['redx_store_id'] ."',"
                .PHP_EOL.
                "'redx_access_token' => '". $data['redx_access_token'] ."',"
                .PHP_EOL

            ."] ?>" ;

        file_put_contents($file_location,$config_data) ;

    
          return response()->json([
            'status' => true , 
            'message' => 'information updated' , 
           ]) ;
    
        }


     
    }










