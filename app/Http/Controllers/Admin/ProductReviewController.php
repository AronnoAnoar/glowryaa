<?php

namespace App\Http\Controllers\Admin;

use App\Models\LandingPage;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use App\Http\Controllers\Controller;

class ProductReviewController extends Controller
{
             
       public function get_customer_review(){

             $reviews = ProductReview::latest()->with('review_product','reviewer')->paginate(20) ;
             return response()->json([
                  "status" => "OK",
                  "reviews" => $reviews,
             ]);
       }
       



      public function deactive_customer_review($id){

             $review = ProductReview::findOrFail($id) ;
             $review->status=0;
             $review->save();
             return response()->json([
                  "status" => "OK",
                  "message" => 'review de-activated',
             ]);
       }



      public function active_customer_review($id){

             $review = ProductReview::findOrFail($id) ;
             $review->status=1;
             $review->save();
             return response()->json([
                  "status" => "OK",
                  "message" => 'review activated',
             ]);
       }


      public function remove_customer_review($id){

                  $review = ProductReview::findOrFail($id) ;
                  $review->delete();
                  return response()->json([
                        "status" => "OK",
                        "message" => 'review deleted',
                  ]);
       }

       public function addReview(Request $request)
       {
            $this->validate($request, [
                  'user_name' => 'required',
                  'landing_page_id' => 'required',
                  'review' => 'required',
                  'rating_stars' => 'required',
            ]);
            $review = new ProductReview();
            $review->landing_page_id = $request->landing_page_id;
            $review->user_name = $request->user_name;
            $review->review = $request->review;
            $review->rating_stars = $request->rating_stars;
            $review->status = 1;
            if ($request->hasFile('image')) {
                  $path = $request->file('image')->store('images/review', 'public');
                  $review->image = $path;
            }
            $review->save();
            return response()->json([
                  'success' => true,
                  'message' => 'review added successfully'
            ]);
       }

       public function landingPageReview($slug)
       {
             $page = LandingPage::where('status', 1)->where('page_slug', $slug)->firstOrFail();
             $reviews = ProductReview::where('landing_page_id', $page->id)->with('landingPage')->get();
             return response()->json([
                   'success' => true,
                   'reviews' => $reviews,
             ]);
 
       }
 
 
       public function landingPageReviewEdit($id)
       {
            $review = ProductReview::with('landingPage')->find($id);
            return response()->json([
                  'success' => true,
                  'review' => $review
            ]);
       }
 
 
 
       public function landingPageReviewUpdate(Request $request, $id)
       {
            $this->validate($request, [
                  'user_name' => 'required',
                  'landing_page_id' => 'required',
                  'review' => 'required',
                  'rating_stars' => 'required',
            ]);
            $review = ProductReview::with('landingPage')->find($id);
            $review->landing_page_id = $request->landing_page_id;
            $review->user_name = $request->user_name;
            $review->review = $request->review;
            $review->rating_stars = $request->rating_stars;
            if ($request->hasFile('image')) {
                  $path = $request->file('image')->store('images/review', 'public');
                  $review->image = $path;
            }
            $review->save();
            return response()->json([
                  'success' => true,
                  'message' => 'review added successfully'
            ]);
       }
 
 









}
