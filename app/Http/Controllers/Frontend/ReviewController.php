<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\Product;
use App\Models\ProductReview;
use DB;
use Illuminate\Http\Request;

class ReviewController extends Controller
{
    public function store(Request $request){
        
        $data = $request->validate([
            'product_slug'  => 'required',
            'rating_stars'  => 'required',
            'user_name'     => 'required',
            'review'        => 'required',
            'image'         => 'nullable',
        ]);

        try{

            $product_id = Product::where('slug',$request->product_slug)->pluck('id')->first();
            if ($product_id) {
                $data['product_id'] = $product_id;
                if ($request->hasFile('image')) {
                    $file_path=$request->file('image')->store('images/product_review','public');
                    $data['image']=$file_path ;
                }
                ProductReview::query()->create($data);
            }
            return response()->json([
                'status' => true,
                'message' => 'your review added successfully, it will publish soon',
            ]);
        }catch(\Throwable $th){
            return response()->json([
                'status' => true,
                'message' =>$th->getMessage(),
            ]);
        }

        
    }
}
