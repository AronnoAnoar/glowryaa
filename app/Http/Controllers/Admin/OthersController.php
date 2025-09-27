<?php

namespace App\Http\Controllers\Admin;

use App\Enums\CustomerStatus;
use App\Models\City;
use App\Models\Comment;
use App\Models\Courier;
use App\Models\Variant;
use App\Models\Category;
use App\Models\Contact ;
use App\Models\Merchant;
use App\Models\Supplier;
use App\Models\Attribute;
use App\Models\SubCategory;
use App\Models\Subscriber ;
use Illuminate\Http\Request;
use App\Models\DeliveryCharge;
use App\Models\SubSubCategory;
use App\Models\RedxDeliveryArea;
use App\Exports\SubscribersExport;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

use Maatwebsite\Excel\Facades\Excel;
use Psy\CodeCleaner\FunctionReturnInWriteContextPass;


class OthersController extends Controller
{
    public function others(Request $request){

        $categories = Category::where('status', 1)->get();
        $suppliers = Supplier::where('status', 1)->get();

        if(!empty($request->type)){
         $suppliers = Supplier::where('status', 1)->where('type',$request->type)->get();

        }
        $attributes = Attribute::where('status', 1)->get();
        $variants = Variant::where('status', 1)->get();
        $subcategories=SubCategory::where('status',1)->get();
        $SubSubcategories=SubSubCategory::where('status',1)->get();
        $cities=City::where('status',1)->orderBy('name')->get();
        $couriers=Courier::where('status',1)->get();
        $comments=Comment::all();
        $merchants=Merchant::where('status',1)->get();
        $redx_delivery_areas=RedxDeliveryArea::where('status',1)->get();

        return response()->json([
            'status' => 'SUCCESS',
            'categories' => $categories,
            'subCategories' => $subcategories,
            'subSubCategories' => $SubSubcategories,
            'suppliers' => $suppliers,
            'attributes' => $attributes,
            'variants'=>$variants,
            'cities'=>$cities,
            'couriers'=>$couriers,
            'comments'=>$comments,
            'merchants'=>$merchants,
            'redx_delivery_area'=>$redx_delivery_areas,
        ]);
    }



    public function requestedTableData(Request $request){

        $data = DB::table($request->table)->where('status',1)->get();
        return response()->json([
            'success' => true ,
            'data' => $data ,
        ],201);
    }



    public function subscribers(Request $request){
           $item = $request->item ?? 20 ;
           $subscribers= Subscriber::orderBy('id','desc')->paginate($item);
           return response()->json([
               'status'  => 'OK',
               'subscribers' => $subscribers ,
           ]);
    }


    public function search_subscribers($email){

        $subscribers = Subscriber::where('email','like','%'.$email.'%')->paginate();
        return response()->json([
            'status'  => 'OK',
            'subscribers' => $subscribers ,
        ]);
      }


      public function remove_subscriber($id){

        $subscriber = Subscriber::findOrFail($id);

        if ($subscriber->delete()) {
            return response()->json([
                'message' => 'this subscriber has deleted' ,
            ]);
        }

      }


    public  function export_subscriber(){

           return Excel::download(new SubscribersExport(),'subscribers.xlsx');
    }

    public function contact_message(Request $request){
        $item = $request->item ?? 20 ;
        $contacts= Contact::orderBy('id','desc')->paginate($item);
        return response()->json([
            'status'  => 'OK',
            'contacts' => $contacts ,
        ]);
    }


    public Function get_contacted_customer($id){

          $customer = Contact::findOrFail($id);
          return response()->json([ 'customer' => $customer ] );
    }



    public   function search_contacted_customer($search){

            $customers = Contact::where('email','like','%'.$search.'%')->orderBy('id','desc')->paginate(20);
            return response()->json([
                "status" => "OK",
                "customers" => $customers ,
            ]);
    }


     public function deliveryCharge()
     {
        $deliveries = DeliveryCharge::all();
        return response()->json([
            "status" => "SUCCESS",
            "deliveries" => $deliveries ,
        ]);
     }

     public function editDeliveryCharge($id)
     {
        $delivery = DeliveryCharge::findOrFail($id);
        return response()->json([
            "status" => "SUCCESS",
            "delivery" => $delivery,
        ]);
     }

     public function updateDeliveryCharge(Request $request, $id)
    {
        $delivery = DeliveryCharge::findOrFail($id);
        $delivery->name = $request->name;
        $delivery->delivery_charge = $request->delivery_charge;
        $delivery->save();
        return response()->json([
            'status'=>'SUCCESS',
            'message'=>'delivery charge updated successfully'
        ]);
     }




     public function getCustomerStatuses(){
        $statuses = array_map(fn($status) => [
            'value' => $status->value,
            'label' => $status->label()
        ], CustomerStatus::cases());
    
        return response()->json($statuses);
     }



}
