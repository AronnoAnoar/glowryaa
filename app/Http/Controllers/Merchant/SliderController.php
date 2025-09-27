<?php

namespace App\Http\Controllers\Merchant;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\MerchantSlider;
use Exception;
class SliderController extends Controller
{
      public function index()
      {
        $sliders = MerchantSlider::orderBy('id', 'DESC')->paginate(5);
        return response()->json([
            'success' => true,
            'sliders' => $sliders,
        ]);
      }

      public function edit($id){

        $slider = MerchantSlider::find($id);
        if ($slider) {
            return response()->json([
                'success' => true,
                "slider" => $slider ,
            ]);
        }
      }

      /**
      * Show the form for creating a new resource.
      *
      * @return \Illuminate\Http\Response
      */
      public function create()
      {
      //
      }

      /**
      * Store a newly created resource in storage.
      *
      * @param \Illuminate\Http\Request $request
      * @return \Illuminate\Http\Response
      */
      public function store(Request $request)
      {
        $validatedData = $request->validate([
            'image' => 'required',
            'position' => 'required',
        ]);

        try{
            $slider = new MerchantSlider();
            $slider->status = 1;
            $slider->merchant_id = session()->get('merchant')['id'];
            $slider->position = $request->position;
            $slider->url=$request->url;
            if ($request->hasFile('image')) {
                $path = $request->file('image')->store('images/merchant_slider', 'public');
                $slider->image = $path;
            }
            $slider->save();
            return response()->json([
                'success' => true,
                'message' => 'slider add successfully'
            ]);
        }catch(Exception $e){
            return $e->getMessage();
        }

        
        
        

      }

      public function update(Request $request , $id){


        $validatedData = $request->validate([
            'url' => 'required',
            'position' => 'required',
        ]);

        $slider = MerchantSlider::findOrFail($id);
        $slider->url=$request->url ;
        $slider->position=$request->position;

        if ($request->hasFile('image')) {
            if (file_exists('storage/'.$slider->image)) {
                unlink('storage/'.$slider->image);
            }
            $path = $request->file('image')->store('images/slider', 'public');
            $slider->image=$path ;

        }
        if($slider->save()){
            return response()->json([
                'success' => true,
                'message' => 'slider updated successfully',
            ]);
        }

      }


      
    public function destroy($id)
    {
        $slider = MerchantSlider::findOrFail($id);
        if ($slider) {
            if ($slider->delete()) {
                return response()->json([
                    'success' => true,
                    'message' => 'slider delete successfully'
                ]);
            }
        }
    }


    public function active($id)
    {
        $slider = MerchantSlider::findOrFail($id);
        if ($slider) {
            $slider->status = 1;
            if ($slider->save()) {
                return response()->json([
                    'success' => true,
                    'message' => 'slider active successfully'
                ]);
            }
        }
    }

    public function deActive($id)
    {
        $slider = MerchantSlider::findOrFail($id);
            if ($slider) {
            $slider->status = 0;
                if ($slider->save()) {
                return response()->json([
                    'success' => true,
                    'message' => 'slider de-active successfully'
                ]);
            }
        }
    }

}