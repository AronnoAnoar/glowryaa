<?php

namespace App\Http\Controllers\Frontend;

use App\Models\Variant;
use Illuminate\Http\Request;
use App\Models\ProductVariant;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Gloudemans\Shoppingcart\Facades\Cart;

class WishListController extends Controller
{
    public function index()
    {
        // session()->flush();
        // return;
        $wishlist_content   = Cart::instance('wishlist')->content();
        $wishlist_total     = Cart::instance('wishlist')->total();
        $wishlist_count     = Cart::instance('wishlist')->count();
        $data = [
            'wishlist_content'  => $wishlist_content,
            'wishlist_total'    => $wishlist_total,
            'wishlist_count'    => $wishlist_count,
        ];
        $cart_count = Cart::instance('wishlist')->count();
        $name = 'Wish List';
        if ($cart_count > 0) {
            return view('frontend.pages.wish_list', $data);
        } else {
            return view('frontend.pages.cart_blank', compact('name'));
        }
    }

    public function addToWishlist(Request $request)
    {
        $product = DB::table('products')
            ->where('id', $request->id)
            ->select('id', 'name', 'slug', 'sale_price', 'thumbnail_img')
            ->first();

        $variant = Variant::where('id', $request->variant)->first();
        $variant_wise_product_price = ProductVariant::select('price')->where([['variant_id', $variant->id], ['product_id', $product->id]])->first();


        $add = Cart::instance('wishlist')->add([
            'id' => $product->id,
            'name' => $product->name,
            'qty' => $request->quantity ?? 1,
            'price' => $variant_wise_product_price->price == 0 ? $product->sale_price : $variant_wise_product_price->price,
            'weight' => 0,
            'tax' => 0,
            'options' => [
                'image' => $product->thumbnail_img,
                'slug' => $product->slug,
            ],
        ]);

        return response()->json(
            [
                'status'    => true,
                'message'  => 'Add to Wish-list Successfully Add',
            ],
            200
        );
    }


    public function getWishList()
    {
        $wishlist_content   = Cart::instance('wishlist')->content();
        $wishlist_total     = Cart::instance('wishlist')->total();
        $item_count     = Cart::instance('wishlist')->count();

        return response()->json(
            [
                'wishlist_total'    => $wishlist_total ?? 0,
                'wishlist_content'  => $wishlist_content ?? 0,
                'item_count'        => $item_count ?? 0,
            ],
            200
        );
    }


    public function deleteWishList(Request $request)
    {
        Cart::instance('wishlist')->remove($request->rowId);

        return response()->json([
            'status' => true,
            'message' => 'Delete Successfully',
        ]);
    }
}
