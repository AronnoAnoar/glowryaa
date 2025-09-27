<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Product;
use App\Models\Variant;
use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Models\ProductReview;
use App\Models\GeneralSetting;
use App\Models\ProductVariant;
use App\Services\FrontendService;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Gloudemans\Shoppingcart\Facades\Cart;

class ProductController extends Controller
{
    public function index(){
        return view('frontend.pages.product.index');
    }

    public function singleProduct($slug){
        // FIX 1: Added `attribute_id` to the productVariant relationship query.
        $product = Product::with(['category:id,name,slug,status','subCategory:id,name,slug','subSubCategory:id,name,slug','productImage:id,product_id,image','productVariant:id,product_id,variant_id,attribute_id','productVariant.variant:id,name,status'])
                            ->select('id','category_id','sub_category_id', 'sub_sub_category_id', 'name','product_code','thumbnail_img','slug','sale_price','discount','price','stock','status','details', 'short_details','video_url','meta_title','meta_description','meta_key','meta_content','created_at')
                            ->where('slug', $slug)
                            ->where('status', 1)
                            ->firstOrFail();

        $category_id = $product->category->id ?? null;
        $sub_category_id = $product->subCategory->id ?? null;
        $sub_sub_category_id = $product->subSubCategory->id ?? null;

        $related_products = DB::table('products')->where('id', '!=', $product->id)->select('id','category_id','sub_category_id','sub_sub_category_id','name','product_code','thumbnail_img','slug','sale_price','discount','price','stock','status','details','created_at')
                                ->when($sub_sub_category_id, function ($q, $sub_sub_category_id){
                                    $q->where('sub_sub_category_id', $sub_sub_category_id);
                                })
                                ->when($sub_category_id, function ($q, $sub_category_id){
                                    $q->where('sub_category_id', $sub_category_id);
                                })
                                ->when($category_id, function ($q, $category_id){
                                    $q->where('category_id', $category_id);
                                })
                                ->where('status', 1)
                                ->latest()
                                ->inRandomOrder()
                                ->paginate(12);

        //===================review section start===========================
        $product_review = ProductReview::where('product_id', $product->id)->where('status', 1)->get();

        $five_star = $product_review->where('rating_stars', 5)->count();
        $four_star = $product_review->where('rating_stars', 4)->count();
        $three_star = $product_review->where('rating_stars', 3)->count();
        $two_star = $product_review->where('rating_stars', 2)->count();
        $one_star = $product_review->where('rating_stars', 1)->count();

        $rating_stars = [
            'five_star' => $five_star,
            'four_star' => $four_star,
            'three_star' => $three_star,
            'two_star' => $two_star,
            'one_star' => $one_star,
        ];

        $product->{'rating_stars'} = $rating_stars;

        $product_reviews = ProductReview::where('product_id', $product->id)->where('status',1)->orderBy('id','desc')->paginate(6);
        $total_review = $product_review->count(); // More efficient to count the collection we already fetched

        $total_ratings = ($five_star * 5) + ($four_star * 4) + ($three_star * 3) + ($two_star * 2) + ($one_star * 1);
        
        // FIX 2: Corrected average rating calculation to prevent division by zero and be accurate.
        $average_ratings = $total_review > 0 ? round($total_ratings / $total_review, 2) : 0;
        //===================review section end===========================
        
        $delivery_charges = DB::table('delivery_charges')->take(2)->get();

        $data = [
            'product' => $product,
            'related_products' => $related_products,
            'product_reviews'  => $product_reviews,
            'total_review'     => $total_review,
            'average_ratings'  => $average_ratings,
            'delivery_charges' => $delivery_charges,
        ];

        return view('frontend.pages.product.single_product', $data);
    }


      //category wise product
      public function getCategoryProduct($slug, $sub_slug = null, $sub_sub_slug = null){

        $category_slug = $slug;
        $sub_category_slug = $sub_slug;
        $sub_sub_category_slug = $sub_sub_slug;
        $category = null;
        $sub_category = null;
        $sub_sub_category = null;

        if($category_slug && $sub_category_slug && $sub_sub_category_slug)
        {
            $category = DB::table('categories')->where('slug', $category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $sub_sub_category = DB::table('sub_sub_categories')->where('slug', $sub_sub_category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $sub_category = DB::table('sub_categories')->where('slug', $sub_category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $products_ids = FrontendService::productIds('sub_sub_category_id', $sub_sub_category->id);
            $products = FrontendService::productFetcher($products_ids);
        }

        elseif($category_slug && $sub_category_slug)
        {
            $category = DB::table('categories')->where('slug', $category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $sub_category = SubCategory::with(['subSubCategory:id,name,slug,category_id,subcategory_id'])->where('slug', $sub_category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $products_id = FrontendService::productIds('sub_category_id',$sub_category->id);
            $products = FrontendService::productFetcher($products_id);

        }

        elseif($category_slug && $sub_category_slug == null && $sub_sub_category_slug == null)
        {
            $category = Category::with(['subCategory:id,name,slug,category_id'])->where('slug', $category_slug)->select('id','name','slug','meta_title','meta_description','meta_key','meta_content')->first();
            $products_id = FrontendService::productIds('category_id',$category->id);
            $products = FrontendService::productFetcher($products_id);

        }
        // return $products;

        $data = [
            'products'                => $products,
            'category'                => $category,
            'sub_category'            => $sub_category,
            'sub_sub_category'        => $sub_sub_category,
        ];

        return view('frontend.pages.product.index', $data);
    }


    //-------------Product search-----------------
    public function searchProduct(Request $request){
        $search_key = $request->key;
        $search_numeric_key = is_numeric($search_key);
        if(!$search_numeric_key){
            $products =  Product::select('id','category_id','name','status','thumbnail_img','slug','sale_price','discount','price')
                                ->Where('product_code', 'LIKE', "%$search_key%")
                                ->orWhere('details', 'like', '%' . $search_key . '%')
                                ->orWhere('name', 'like', '%' . $search_key . '%')
                                ->where('status', 1)
                                ->inRandomOrder()
                                ->latest()
                                ->get();
        }else{
            $products =  Product::select('id','category_id','name','status','thumbnail_img','slug','sale_price','discount','price')
                                ->where('product_code', $search_key)
                                ->where('status', 1)
                                ->inRandomOrder()
                                ->latest()
                                ->get();
        }

        $html = view('frontend.components.search_product',compact('products'))->render();
        return response()->json([
            'status' => true,
            'message' => 'Search Successful',
            'data' => $html,
        ]);

    }


    //--------------get product content----------------------
    public function getProductContent(Request $request){
        $cart_total = Cart::total();
        $brand = GeneralSetting::select('title')->first();
        $product = Product::with(['category:id,name,status','subCategory:id,name','subSubCategory:id,name'])
                            ->select('id','category_id','sub_category_id','sub_sub_category_id','name','product_code','sale_price','discount','price')
                            ->where('id', $request->product_id)
                            ->firstOrFail();
        $coupon = DB::table('coupons')->select('id','code')->where('status', 1)->first();
        try {
            $items = [];
                $data = [];
                $data['product_id'] = $product->id;
                $data['item_id'] = $product->product_code;
                $data['item_name'] = $product->name;
                $data['affiliation'] = "Google Merchandise Store";
                $data['coupon'] = $coupon->code  ? $coupon->code  : "N/A";
                $data['discount'] = floatval($product->discount);
                $data['index'] = 0;
                $data['item_brand'] = $brand->title;
                $data['item_category'] = $product->category->name ?? "N/A";
                $data['item_category2'] = $product->subCategory->name ?? "N/A" ;
                $data['item_category3'] = $product->subSubCategory->name ?? "N/A";
                $data['item_category4'] = "N/A";
                $data['item_category5'] = "N/A";
                $data['item_list_id'] = "related_products";
                $data['item_list_name'] = "Related Products";
                $data['item_variant'] = "N/A";
                $data['location_id'] = "ChIJIQBpAG2ahYAR_6128GcTUEo";
                $data['price'] = floatval($product->sale_price);
                $data['quantity'] = $request->quantity ? $request->quantity : 1;
                array_push($items, $data);

                return response()->json([
                    'status' => true,
                    'cart_total' => $cart_total != 0 ?  floatval($cart_total) : floatval($product->sale_price),
                    // 'transaction' => $transaction ?? "",
                    'items' => $items ?? [],
                ]);

        } catch (\Throwable $th) {
                return response()->json([
                    'status' => false,
                    'message' => $th->getMessage(),
                ]);
        }
    }

    //--------------get cart items for ga4-------------------
    public function getCartItems(){
        try {
            $brand = GeneralSetting::select('title')->first();
            $cart_total = Cart::total();
            $cart_contents = Cart::content();
            $coupon = DB::table('coupons')->select('id','code')->where('status', 1)->first();
            $items = [];
            foreach ($cart_contents as $cart) {
                $data = [];
                $data['product_id'] = $cart->id;
                $data['item_id'] = $cart->options->product_code;
                $data['item_name'] = $cart->name;
                $data['affiliation'] = "Google Merchandise Store";
                $data['coupon'] = $coupon->code ?? "N/A";
                $data['discount'] = floatval($cart->options->discount);
                $data['index'] = 0;
                $data['item_brand'] = $brand->title ?? "N/A";
                $data['item_category'] = $cart->options->category_name ?? "N/A";
                $data['item_category2'] = $cart->options->subcategory_name ?? "N/A";
                $data['item_category3'] = $cart?->options->sub_subcategory_name ?? "N/A";
                $data['item_category4'] = "N/A";
                $data['item_category5'] = "N/A";
                $data['item_list_id'] = "related_products";
                $data['item_list_name'] = "Related Products";
                $data['item_variant'] = $cart->options->variant_name ?? "N/A";
                $data['location_id'] = "ChIJIQBpAG2ahYAR_6128GcTUEo";
                $data['price'] = floatval($cart->price) ?? 0;
                $data['quantity'] = floatval($cart->qty) ?? 0;
                array_push($items, $data);
            }

            return response()->json([
                'status' => true,
                'items' => $items ?? [],
                'cart_total' => floatval($cart_total) ?? "N/A",
                'coupon' => $coupon->code ?? "N/A",
            ]);
        } catch (\Throwable $th) {
            return response()->json([
                'status' => true,
                'message'=> $th->getMessage(),
            ]);
        }
    }


    //-------------load more data-----------------
     public function loadMoreData(Request $request){
        // return $request;
        $page = $request->page;
        $limit = $request->limit;
        $start = ($page - 1) * $limit;
        $category_slug = $request->category_slug;
        $subcategory_slug = $request->subcategory_slug;
        $sub_subcategory_slug = $request->sub_subcategory_slug;

        $query = Product::skip($start)->select('id','category_id','name','status','thumbnail_img','slug','sale_price','discount','price')
                                            ->where('status', 1)
                                            ->latest()
                                            ->take($limit);

        if($category_slug && $subcategory_slug && $sub_subcategory_slug){
            $sub_sub_category = DB::table('sub_sub_categories')->where('slug', $sub_subcategory_slug)->select('id','name','slug')->first();
            $products = $query->where('sub_sub_category_id', $sub_sub_category->id)->get();
        }elseif($category_slug && $subcategory_slug){
            $sub_category = DB::table('sub_categories')->where('slug', $subcategory_slug)->select('id','name','slug')->first();
            $products = $query->where('sub_category_id', $sub_category->id)->get();
        }elseif($category_slug && $subcategory_slug == null && $sub_subcategory_slug == null){
            $category = DB::table('categories')->where('slug', $category_slug)->select('id','name','slug')->first();
            $products = $query->where('category_id', $category->id)->get();
        }




        $data = " ";
        foreach($products as $product){
            $data .= view('frontend.components.load_more_product_content', compact('product'))->render();
        }

        return response()->json([
            'status' => true,
            'data' => $data,
            'product_length' => $products->count(),
            'message' => 'load Data',
        ]);
    }


    public function getVariantWiseProductPrice(Request $request)
    {
        $variant = Variant::select('id', 'name')->findOrFail($request->variant_id);
        $product = Product::select('id', 'name', 'sale_price')->where('id', $request->product_id)->first();
        $variant_wise_products = ProductVariant::select('id', 'price')->where([['variant_id', $variant->id], ['product_id', $request->product_id]])->first();

        return response()->json([
            'success' => true,
            'variant_wise_product_price' => $variant_wise_products->price,
            'product_price' => $product->sale_price,
            'message' => 'This variant is priced separately',
        ],200);


    }


}