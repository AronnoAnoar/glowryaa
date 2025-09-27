<?php

namespace App\Http\Controllers\Admin;

use App\Models\Service;
use App\Models\ResellingService;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;


class ServiceController extends Controller
{
    public  function index(){

        $services= Service::orderBy('id','DESC')->get();
        return response()->json([
            "success" => "OK",
            "services" => $services ,
        ]);
    }



    public function adServices(Request $request){

        $validatedData = $request->validate([
            'name'  => 'required',
            'url'  => 'required',
            'position'  => 'required',
        ]);

           $service= new Service ();
           $service->name=$request->name;
           $service->url=$request->url;
           $service->position=$request->position;
           $service->status=1;
           $service->save();

            return response()->json([
                "success" => "OK",
                "message" => 'service added successfully ' ,
            ]);



    }




    public function editServices(Request $request,$id){

        $validatedData = $request->validate([
            'name'  => 'required',
            'url'  => 'required',
            'position'  => 'required',
        ]);

           $service= Service::findOrFail($id);
           $service->name=$request->name;
           $service->url=$request->url;
           $service->position=$request->position;
           $service->save();


            return response()->json([
                "success" => "OK",
                "message" => 'updated successfully ' ,
            ]);
    }


    public function serviceItem($id){

        $service= Service::findOrFail($id);
            return response()->json([
                "service" => $service ,
            ]);

    }

    public function activeServices($id){

        $service= Service::find($id);
        $service->status=1 ;
        if ($service->save()) {

            return response()->json([
                "success" => "OK",
                "message" => 'This service activated ' ,
            ]);
        }
    }


    public function deactiveServices($id){

        $service= Service::find($id);
        $service->status=0 ;
        if ($service->save()) {

            return response()->json([
                "success" => "OK",
                "message" => 'This service de-activated ' ,
            ]);
        }
    }






    //start reseller service

    public function reselling_service_index(){

        $reselling_services= ResellingService::orderBy('id','DESC')->get();
        return response()->json([
            "success" => "OK",
            "reselling_services" => $reselling_services ,
        ]);
    }



    public function add_reselling_services(Request $request){

        $validatedData = $request->validate([
            'name' => 'required',
            'description' => 'required',
        ]);

        $reselling_service= new ResellingService ();
        $reselling_service->name=$request->name;
        $reselling_service->description=$request->description;
        if ($request->hasFile('icon')) {
            $path = $request->file('icon')->store('images/reselling_service', 'public');
            $reselling_service->icon = $path;
        }
        $reselling_service->save();

        return response()->json([
            "success" => "OK",
            "message" => 'reseller service added successfully ' ,
        ]);



    }


       public function get_edit_reselling_service($id){

        $reselling_service = ResellingService::findOrFail($id);
        if ($reselling_service) {
            return response()->json([
            "success" => "OK",
            "reselling_service" => $reselling_service ,
            ]);
        }

       }


       public function get_update_reselling_service(Request $request , $id){


       $validatedData = $request->validate([
        'name' => 'required',
        'description' => 'required',
       ]);

       $reselling_service = ResellingService::find($id);
       $reselling_service->name=$request->name ;
       $reselling_service->description=$request->description;

       if ($request->hasFile('icon')) {
        if (file_exists('storage/'.$reselling_service->icon)) {
            unlink('storage/'.$reselling_service->icon);
        }
        $path = $request->file('icon')->store('images/reselling_service', 'public');
        $reselling_service->icon=$path ;
       }
       
       if($reselling_service->save()){

        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'reselling service updated successfully',
        ]);

       }

       }

       public function get_delete_reselling_service($id)
       {
        $reselling_service_delete=ResellingService::find($id);
        if ($reselling_service_delete){
            if ($reselling_service_delete->delete()){
                return response()->json([
                'status'=>'SUCCESS',
                'message'=>'Reselling Service Deleted Successfully'
            ]);
        }
        }
       }


}
