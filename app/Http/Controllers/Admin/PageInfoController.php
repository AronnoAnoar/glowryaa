<?php

namespace App\Http\Controllers\Admin;

use App\Models\Page;
use App\Models\AboutAndContact;
use App\Models\OrderShipmentAndReturnPolicy;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;
class PageInfoController extends Controller
{



    public function index(){

        $pages = Page::orderBy('id', 'desc')->get();
         return response()->json([
            'status' => 'SUCCESS',
            'pages' => $pages
        ]);

    }



    public function store(Request $request){
 
        $this->validate($request, [
            'name' => 'required|unique:pages',
            'details' => 'required',
        ]);

        $page = new Page();
        $page->name = $request->name;
        $page->slug = Str::slug($request->name);
        $page->details = $request->details;
        $page->save();

        return response()->json([
            'status' => 'SUCCESS',
            'message' => "page added successfully"
        ]);
        
    }





    public function edit($id){

        $page = Page::findOrFail($id);
        return response()->json([
            'status' => 'SUCCESS',
            'page' => $page
        ]);

    }




    public function update(Request $request, $id){
        
        $this->validate($request, [
            'name' => 'required|unique:pages,name,'.$id,
            'details' => 'required',
        ]);

        $page = Page::findOrFail($id);
        $page->name = $request->name;
        $page->slug = Str::slug($request->name);
        $page->details = $request->details;
        $page->save();

        return response()->json([
            'status' => 'SUCCESS',
            'message' => "page updated successfully"
        ]);
        


    }

    public function deActivePage($id)
    {
        $page = Page::findOrFail($id);
        if ($page) {
            $page->status = 0;
            if ($page->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'page de-active successfully'
                ]);
            }
        }
    }

    public function activePage($id)
    {
        $page = Page::findOrFail($id);
        if ($page) {
            $page->status = 1;
            if ($page->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'page active successfully'
                ]);
            }
        }
    }

   
    public function deletePage($id)
    {
        $page = Page::find($id);
        if ($page) {
            if ($page->delete()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'page deleted successfully'
                ]);
            }
        }
    }


    public function get_about_and_contact_info() {

        $setting = AboutAndContact::latest()->take(1)->first();
        if ($setting) {
            return response()->json([
            "status" => "OK",
            "setting" => $setting ,
        ]);
        }
    }



    public function edit_about_and_contact_info(Request $request,$id)
    {

        $setting = AboutAndContact::findOrFail($id);
        $setting->about_info=$request->about_info;
        $setting->contact_info=$request->contact_info;


        if ($setting->save()) {
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'About and contact information updated successfully',
        ]);
        }

    }




    public function get_order_shipment_return_info() {

    $setting = OrderShipmentAndReturnPolicy::latest()->take(1)->first();
        if ($setting) {
        return response()->json([
            "status" => "OK",
            "setting" => $setting ,
        ]);
        }
    }



    public function edit_order_shipment_return_info(Request $request,$id)
    {

    $setting = OrderShipmentAndReturnPolicy::findOrFail($id);
    $setting->order_info=$request->order_info;
    $setting->shipment_info=$request->shipment_info;
    $setting->return_policy=$request->return_policy;

    if ($setting->save()) {
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Order,shipment and return information updated successfully',
        ]);
    }

    }









}
