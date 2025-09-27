<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Support\Facades\Schema;
use Picqer;
use Carbon\Carbon;
use App\Models\Order;
use App\Models\Product;
use App\Models\Category;
use App\Models\Customer;
use App\Models\SubCategory;
use App\Models\ComboProduct;
use App\Models\ProductImage;
use App\Models\PurchaseItem;
use App\Services\FileUpload;
use Illuminate\Http\Request;
use App\Models\ProductBarcode;
use App\Models\ProductVariant;
use App\Models\SubSubCategory;
use App\Models\ProductAttribute;
use App\Models\Variant;
use App\Models\Brand;
use Barryvdh\DomPDF\Facade as PDF;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\ProductStockTransfer;
use Intervention\Image\Facades\Image;
use Illuminate\Support\Str;
use Throwable;
use App\Services\HelperService;

class ProductController extends Controller
{

    public function index(Request $request)
    {

        //  return $request->all();
        $item = $request->item ?? 20;
        $categories = Category::select('id', 'name')->get();
        $sub_categories = '';
        $sub_sub_categories = '';

        if (!empty($request->category_id) || !empty($request->sub_category_id) || !empty($request->sub_sub_category_id)) {
            //fetched sub category and stock
            $sub_categories = $request->category_id ? SubCategory::where('category_id', $request->category_id)->select('id', 'name')->get() : '';
            //sub categories
            $sub_sub_categories = $request->sub_category_id ? SubSubCategory::where('subcategory_id', $request->sub_category_id)->select('id', 'name')->get() : '';
            $category_column_name = '';
            $category_id = '';

            //only category wise
            if (!empty($request->category_id) && $request->category_type == 'category') {
                $category_column_name = 'category_id';
                $category_id = $request->category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }
            //category and sub category wise
            if (!empty($request->sub_category_id) && $request->category_type == 'sub_category') {
                $category_column_name = 'sub_category_id';
                $category_id = $request->sub_category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }

            //category and sub sub category wise
            if (!empty($request->sub_sub_category_id) && $request->category_type == 'sub_sub_category') {
                $category_column_name = 'sub_sub_category_id';
                $category_id = $request->sub_sub_category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }

            return response()->json([
                'categories' => $categories,
                'products' => $products,
                'sub_categories' => $sub_categories,
                'sub_sub_categories' => $sub_sub_categories,
            ]);
        } else {

            if ($request->status == "all") {
                $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->with(['productBarcode', 'purchaseItem', 'merchant'])->paginate($item);

                if (!empty($request->merchant_id)) {
                    $products = Product::where('status', '!=', 4)->where('merchant_id', $request->merchant_id)->orderBy('id', 'DESC')->with(['productBarcode', 'purchaseItem', 'merchant'])->paginate($item);
                }
            } elseif ($request->status == 0) {
                $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->where('stock', '<=', 0)->with(['productBarcode', 'purchaseItem', 'merchant'])->paginate($item);

                if (!empty($request->merchant_id)) {
                    $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->where('stock', '<=', 0)->where('merchant_id', $request->merchant_id)->with(['productBarcode', 'purchaseItem', 'merchant'])->paginate($item);
                }
            } else {
                $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->with(['productBarcode', 'purchaseItem', 'merchant'])->where('status', $request->status)->paginate($item);
                if (!empty($request->merchant_id)) {
                    $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->with(['productBarcode', 'purchaseItem', 'merchant'])->where('status', $request->status)->where('merchant_id', $request->merchant_id)->paginate($item);
                }
            }

            return response()->json([
                'categories' => $categories,
                'products' => $products,
                'sub_categories' => $sub_categories,
                'sub_sub_categories' => $sub_sub_categories,
            ]);
        }
    }

    public function slugCreator($string, $delimiter = '-')
    {
        // Remove special characters
        $string = preg_replace("/[~`{}.'\"\!\@\#\$\%\^\&\*\(\)\_\=\+\/\?\>\<\,\[\]\:\;\|\\\]/", "", $string);
        // Replace blank space with delimiter
        $string = preg_replace("/[\/_|+ -]+/", $delimiter, $string);
        return $string;
    }

    public function store(Request $request)
    {

        // return $request->all();

        $data = $request->validate([
            'name' => 'required ',
            'merchant_id' => 'nullable|integer',
            'brand_id' => 'nullable|integer',
            'category_id' => 'required|integer',
            'sub_category_id' => 'nullable|integer',
            'sub_sub_category_id' => 'nullable|integer',
            'discount' => 'nullable|integer',
            'sale_price' => 'required|integer',
            'is_manual_stock' => 'required|integer',
            'stock' => 'nullable|integer',
            'price' => 'required',
            'details' => 'required',
            'short_details' => 'required',
            'images' => 'required',
            'is_featured' => 'nullable|integer',
            'video_url' => 'nullable',
            'size_chart' => 'nullable',
            'size_id' => 'nullable',
            'color_id' => 'nullable',
            'sizes' => 'nullable',
            'colors' => 'nullable',
            'variants' => 'nullable',
            'meta_title' => 'nullable|max:70',
            'meta_description' => 'nullable|max:170',
            'meta_key' => 'nullable',
            'meta_content'  => 'nullable',
        ]);

        $data['discount'] = $data['price'] - $data['sale_price'];
        DB::beginTransaction();
        try{ 

        $id = Product::max('id') ?? 0;
        $product_code = 1000 + $id;
        $data['product_code']  = $product_code;
        $data['slug'] = Str::slug($data['name']) . '-' . $product_code;
        if (!empty($request->video_url)) {
            $data['video_url'] = $this->convertToEmbedUrl($request->video_url);
        }
        $product = Product::query()->create($data);
        HelperService::productBarcodeStore($product->id, $product->product_code);
        //save product multiple image in store directory
        if ($request->hasFile('images')) {
            $files = $request->file('images');
            //make thumbnail image
            $filename = time() . $files[0]->getClientOriginalName();
            Image::make(file_get_contents($files[0]))->save(public_path('storage/images/product_thumbnail_img/').$filename);
            $product->thumbnail_img = 'images/product_thumbnail_img/'.$filename;
            $product->save();

            //source images
            if ($files > 0) {
                FileUpload::productMultiFileUpload($files, $product->id);
            }
        }



        if ($data['images']) {
            $files = $data['images'];
            $filename = 'thumbnail_' . time() . '_' . rand(1111, 9999) . '.jpg';
            Image::make(file_get_contents($files[0]))->save(public_path('storage/images/product_thumbnail_img/').$filename);
            $product->thumbnail_img = 'images/product_thumbnail_img/'.$filename;
            $product->save();

            if ($files > 0) {
                FileUpload::productMultiFileUpload($files, $product->id);
            }
        }



        //product variant
        if (isset($data['variants']) && !empty($data['variants'])) {
            foreach ($data['variants'] as $item) {
                $product_variant = new ProductVariant();
                $variant = Variant::findOrFail($item['variant_id']);
                $product_variant->product_id = $product->id;
                $product_variant->attribute_id = $variant->attribute_id;
                $product_variant->variant_id = $item['variant_id'];
                $product_variant->price = $item['price'] ?? 0;
                $product_variant->save();
            }
        }

        DB::commit();
        return response()->json([
            'success' => true,
            'message' => 'product added successfully'
        ]);

        }catch(Throwable $th){
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage()
            ]);
        } 

    }




    public function edit($id)
    {
        $product = Product::with('productVariant:product_id,attribute_id,variant_id,price')->findOrFail($id);
        $product_attributes = DB::table('product_variants')->where('product_id', $product->id)
            ->select('attribute_id', DB::raw('count(*) as total'))
            ->groupBy('attribute_id')
            ->get();

        foreach ($product_attributes as $item) {
            $item->{'variants'}  = ProductVariant::where('attribute_id', $item->attribute_id)->where('product_id', $product->id)->select('variant_id')->with('variant')->get();
        }
        if ($product->is_combo == 1) {
            $combo_products = DB::table('combo_products')->join('products', 'combo_products.general_product_id', 'products.id')->where('combo_products.combo_product_id', $product->id)->select('products.id', 'products.product_code')->get();
        }
        $images = ProductImage::where('product_id', $product->id)->orderBy('id', 'asc')->get();
        return response()->json([
            'success' => true,
            'product' => $product,
            'product_attributes' => $product_attributes,
            'images' => $images,
            'combo_products' => $product->is_combo == 1 ? $combo_products : []
        ]);
    }

    private function convertToEmbedUrl($url)
    {
        // Check if the URL is already in embed format
        if (strpos($url, 'youtube.com/embed/') !== false) {
            return $url;
        }

        // Otherwise, convert to embed format
        $embed_code = substr($url, 32, 42);
        return 'https://www.youtube.com/embed/' . $embed_code;
    }



    public function update(Request $request, $id)
    {
        // return $request->all();
        $data = $request->validate([
            'name' => 'required ',
            'merchant_id' => 'nullable|integer',
            'brand_id' => 'nullable|integer',
            'category_id' => 'required|integer',
            'sub_category_id' => 'nullable|integer',
            'sub_sub_category_id' => 'nullable|integer',
            'discount' => 'nullable|integer',
            'sale_price' => 'required|integer',
            'is_manual_stock' => 'required|integer',
            'stock' => 'nullable|integer',
            'price' => 'required',
            'details' => 'nullable',
            'short_details' => 'nullable',
            'images' => 'required',
            'is_featured' => 'nullable|integer',
            'video_url' => 'nullable',
            'size_chart' => 'nullable',
            'attribute_id' => 'nullable',
            'variants' => 'nullable',
            'product_position' => 'nullable',
            'slug' => 'required|unique:products,slug,' . $id,
            'product_code' => 'required|unique:products,product_code,' . $id,
            'is_free_delivery' => 'nullable',
            'meta_title' => 'nullable|max:70',
            'meta_description' => 'nullable|max:170',
            'meta_key' => 'nullable',
            'meta_content'  => 'nullable',
        ]);

        $product = Product::findOrFail($id);
        $data['discount'] = $data['price'] - $data['sale_price'];
        DB::beginTransaction();
        try {
            $data['slug'] = Str::slug($request->slug);
            if (!empty($request->video_url)) {
                $data['video_url'] = $this->convertToEmbedUrl($request->video_url);
            }
            $product->update($data);
            //save product multiple image in store directory
            if ($data['images']) {
                $files = $data['images'];
                $img_path = 'thumbnail_' . time() . '_' . rand(1111, 9999) . '.jpg';
                if (strlen($files[0]) > 6) {
                    Image::make(file_get_contents($files[0]))->save(public_path('storage/images/product_thumbnail_img/').$img_path);
                    $product->thumbnail_img = 'images/product_thumbnail_img/'.$img_path;
                    $product->save();
                }
                if ($files > 0) {
                    FileUpload::productMultiFileUpload($files, $product->id);
                }
            }
            //delete existed items
            // ProductVariant::where('product_id',$product->id)->where('attribute_id',$data['attribute_id'])->delete();

            $product_variants = ProductVariant::where('product_id', $product->id)->get();
            foreach ($product_variants as $product_variant) {
                $product_variant->delete();
            }


            //product variants
            if (isset($data['variants']) && !empty($data['variants'])) {
                foreach ($data['variants'] as $item) {
                    $product_variant = new ProductVariant();
                    $variant = Variant::findOrFail($item['variant_id']);
                    $product_variant->product_id = $product->id;
                    $product_variant->attribute_id = $variant->attribute_id;
                    $product_variant->variant_id = $item['variant_id'];
                    $product_variant->price = $item['price'] ?? 0;
                    $product_variant->save();
                }
            }

            DB::commit();
            return response()->json([
                'success' => true,
                'message' => 'action success'
            ]);
        } catch (Throwable $th) {
            DB::rollBack();
            return response()->json([
                'success' => false,
                'message' => $th->getMessage()
            ]);
        }
    }

    public function productECP()
    {
        if ($this->helpECPF()):
            return helpDB();
        endif;
    }

    public function  deleteGeneralProductOfCombo(Request $request)
    {

        try {
            $data = $request->validate([
                'combo_product_id' => 'required',
                'general_product_id' => 'required'
            ]);

            ComboProduct::where('combo_product_id', $request->combo_product_id)->where('general_product_id', $request->general_product_id)->delete();

            return response()->json([
                'success' => true,
                'message' => 'deleted',
            ]);
        } catch (Throwable $th) {
            return $th->getMessage();
        }
    }



    public function deleteProductVariant($product_id, $variant_id)
    {
        // return $product_id . $variant_id;
        $item = ProductVariant::where('product_id', $product_id)->where('variant_id', $variant_id)->firstOrFail();
        $item->delete();
        return response()->json([
            'success' => true,
            'message' => 'deleted',
        ]);
    }


    public function helpECPF()
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

    public function searchProduct($search)
    {

        $products = Product::where('product_code', $search)->with(['productBarcode', 'purchaseItem'])->paginate(10);
        return response()->json([
            'status' => 'SUCCESS',
            'products' => $products
        ]);
    }




    public function approved($id)
    {
        $product = Product::findOrFail($id);
        $product->status = 1;
        if ($product->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'product approved successfully'
            ]);
        }
    }




    public function pending($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->status = 2;
            if ($product->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'product pending successfully'
                ]);
            }
        }
    }




    public function deny($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->status = 3;
            if ($product->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'product deny successfully'
                ]);
            }
        }
    }


    public function delete($id)
    {
        $product = Product::find($id);
        if ($product) {
            $product->status = 4;
            if ($product->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'product delete successfully'
                ]);
            }
        }
    }



    public function stockUpdate(Request $request, $id)
    {

        $product = Product::find($id);
        if ($product) {
            $product->stock = $request->stock;
            if ($product->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'product - ' . $product->product_code . ' - stock updated'
                ]);
            }
        }
    }






    public function deleteImage(Request $request, $id)
    {

        ProductImage::findOrFail($id)->delete();
        return response()->json([
            'success' => true,
            'message' => ' image  deleted'
        ]);
    }

    public function searchWithCode($code)
    {
        $product = Product::where('status', '!=', 4)->where('product_code', $code)->where('status', 1)->select('id', 'name', 'price', 'sale_price', 'reselling_price', 'thumbnail_img', 'product_code', 'stock')->first();
        if ($product) {
            $product_attributes = ProductAttribute::where('product_id', $product->id)->with('attribute')->get();
            $product_variants = ProductVariant::where('product_id', $product->id)->with('variant')->get();
            $data[] = array_merge($product->toArray(), ['attributes' => $product_attributes, 'variants' => $product_variants]);
            return \response()->json([
                'status' => 'SUCCESS',
                'product' => $data
            ]);
        }
    }

    public function productStock(Request $request)
    {

        $item = $request->item ?? 20;
        $products = Product::where('status', '!=', 4)->where('status', 1)->where('stock', '>', 0)->with('purchaseItem')->paginate($item);
        return response()->json($products);
    }

    public function printBarcode($id, $howmany)
    {

        $product = Product::find($id);
        $product_barcode = ProductBarcode::where('product_id', $id)->first();
        $pdf = PDF::loadView('admin.pdf.barcode', compact('product_barcode', 'howmany', 'product'));
        //      return $pdf->stream();
        return view('admin.pdf.barcode', \compact('product_barcode', 'howmany', 'product'));
    }

    public function searchCustomer(Request $request, $number)
    {

        $customer = Customer::where('phone', $number)->first();
        if (!empty($customer)) {
            $orders = Order::where('customer_phone', $number)->with('orderItem.product:id,name,thumbnail_img,product_code')->orderBy('id', 'desc')->get();
            return response()->json([
                'message' => "customer al ready register.",
                'order_records' => $orders,
                'customer' => $customer
            ]);
        } else {
            return response()->json([
                'message' => "new customer for us",
            ]);
        }
    }
    public function get_suggested_product(Request $request)
    {

        $paginate_item = $request->item ?? 10;
        $products = Product::where('status', '!=', 4)->orderBy('id', 'DESC')->where('status', 1)->where('stock', '>=', 1)->with(['productImage'])->paginate($paginate_item);
        return response()->json([
            'status' => "OK",
            'products' => $products,
        ]);
    }




    public function search($search)
    {

        $products = Product::where('status', '!=', 4)->where('product_code', $search)
            ->orWhere('details', 'like', '%' . $search . '%')
            ->orWhere('name', 'like', '%' . $search . '%')
            ->with(['productBarcode:id,product_id,barcode_number', 'productVariant.variant'])->paginate(10);
        return response()->json([
            'status' => 'SUCCESS',
            'products' => $products
        ]);
    }




    public function search_suggested_product($product_code)
    {

        $products = Product::where('status', '!=', 4)->where('product_code', 'like', '%' . $product_code . '%')->with(['productImage'])->paginate(20);
        return response()->json([
            'status' => "OK",
            'products' => $products,
        ]);
    }

    public function search_suggested_product_code_name(Request $request, $data)
    {

        $item = $request->item ?? 30;
        $products = Product::where('status', '!=', 4)->where('product_code', 'like', '%' . $data . '%')
            ->orWhere('name', 'like', '%' . $data . '%')
            ->with(['purchaseItem', 'productBarcode'])
            ->paginate($item);
        return response()->json($products);
    }




    public function searchSingleProduct($code)
    {

        $product = Product::where('status', '!=', 4)->where('product_code', $code)->first();

        return response()->json([
            'status' => "OK",
            'product' => $product,
        ]);
    }



    public function stock_report_pdf()
    {

        $stock_items = purchaseItem::orderBy('id', 'DESC')->with('product')->get();
        $pdf = PDF::loadView('admin.pdf.product_stock_report', compact('stock_items'));
        return  $pdf->stream();
    }



    public function copyProduct($id, $copy_items)
    {
        $c_product = Product::findOrFail($id);
        DB::transaction(function () use ($c_product, $copy_items) {
            for ($p = 1; $p <= $copy_items; $p++) {

                $max_id = Product::max('id') ?? rand(111, 999);
                $product_code = 1000 + $max_id;
                $product = new Product();
                $product->name = $c_product->name . $p;
                $product->slug =  HelperService::slugCreator(strtolower($c_product->name)) . '-' . $product_code . '-' . $p;
                $product->category_id = $c_product->category_id;
                $product->sub_category_id = $c_product->sub_category_id ?? null;
                $product->sub_sub_category_id = $c_product->sub_sub_category_id ?? null;
                $product->product_code = $product_code;
                $product->price = $c_product->price;
                $product->sale_price = $c_product->sale_price;
                $product->discount = $c_product->discount ?? 0;
                $product->reselling_price = $c_product->reselling_price;
                $product->thumbnail_img = $c_product->thumbnail_img;
                $product->status = 1;
                $product->stock = 0;
                $product->details = $c_product->details;
                $product->short_details = $c_product->short_details;
                $product->save();
                //save product Image
                $c_product_variants_img = ProductImage::where('product_id', $c_product->id)->first();
                if (!empty($c_product_variants_img)) {
                    $product_image = new ProductImage();
                    $product_image->product_id = $product->id;
                    $product_image->image = $c_product_variants_img->image;
                    $product_image->save();
                }
                //if product save then generate product barcode
                HelperService::productBarcodeStore($product->id, $product->product_code);
                //save variants
                $c_product_variants = ProductVariant::where('product_id', $c_product->id)->get();
                if (!empty($c_product_variants)) {
                    foreach ($c_product_variants as  $item) {
                        $p_variant = new ProductVariant();
                        $p_variant->product_id = $product->id;
                        $p_variant->attribute_id = $item->attribute_id ?? null;
                        $p_variant->variant_id = $item->variant_id ?? null;
                        $p_variant->save();
                    }
                }
            }
        });

        return response()->json([
            'success' => true,
            'message' => 'product duplicated -' . $copy_items . ' times',
        ]);
    }




    public function stockInAnatherProduct(Request $request)
    {

        $validatedData = $request->validate([
            'from_product_code' => 'required ',
            'to_product_code' => 'required',
            'quantity' => 'required',
        ]);

        $from_product = Product::where('product_code', $request->from_product_code)->first();
        $to_product = Product::where('product_code', $request->to_product_code)->first();

        if (!$from_product) {
            return response()->json('From Product  Not Found Against This Code ' . $request->from_product_code);
        }

        if (!$to_product) {
            return response()->json('To  Product Found Against This Code ' . $request->to_product_code);
        }
        if ($from_product->stock < $request->quantity) {
            return response()->json($from_product->name . ' Stock available ' . $from_product->stock);
        }

        if ($from_product->category_id !== $to_product->category_id) {
            return response()->json("From & To Product Category Not Match");
        }
        /////update from product stock
        $from_product->stock = $from_product->stock - $request->quantity;
        $from_product->save();

        /////update from product stock
        $to_product->stock = $to_product->stock + $request->quantity;
        $to_product->save();
        // return $request->all();

        $product_transfer = new ProductStockTransfer();
        $product_transfer->from_product_id = $from_product->id;
        $product_transfer->to_product_id = $to_product->id;
        $product_transfer->qauntity = $request->quantity;
        $product_transfer->creator_id = session()->get('admin')['id'];
        $product_transfer->comment = $request->comment;
        $product_transfer->save();
        return response()->json([
            'status' => "SUCCESS",
            'message' => "transfer SuccessFully",
        ]);

        //
    }

    public function stockTransfer()
    {
        $data = ProductStockTransfer::latest()->with(['from_product', 'to_product', 'creator'])->paginate(20);
        return response()->json($data);
    }




    public function ckEditorUpload(Request $request)
    {

        $originName = $request->file('upload')->getClientOriginalName();
        $fileName = pathinfo($originName, PATHINFO_FILENAME);
        $extension = $request->file('upload')->getClientOriginalExtension();
        $fileName = $fileName . '_' . time() . '.' . $extension;

        $request->file('upload')->move(public_path('images'), $fileName);

        $CKEditorFuncNum = $request->input('CKEditorFuncNum');
        $url = asset('public/images/' . $fileName);
        $msg = 'Image uploaded successfully';
        $response = "<script>window.parent.CKEDITOR.tools.callFunction($CKEditorFuncNum, '$url', '$msg')</script>";

        @header('Content-type: text/html; charset=utf-8');
        echo $response;
    }





    public function  stockTracking(Request $request)
    {

        $product = Product::where('product_code', $request->product_code)->firstOrFail();
        if (empty($request->start_date) &&  empty($request->end_date)) {
            //purchase records
            $reports = [];
            $reports['purchase_records'] = DB::table('purchase_items')->join('purchases', 'purchase_items.purchase_id', '=', 'purchases.id')
                ->where('purchase_items.product_id', $product->id)
                ->select('purchases.id', 'purchases.purchase_date', 'purchases.invoice_no', 'purchase_items.stock', 'purchase_items.price')->get();
            //order records
            $reports['order_records'] = DB::table('order_items')->join('orders', 'order_items.order_id', '=', 'orders.id')
                ->where('order_items.product_id', $product->id)
                ->whereNotBetween('orders.status', [6, 7])
                ->select('orders.id', 'orders.created_at', 'orders.invoice_no', 'order_items.quantity', 'order_items.price')->get();

            //sales records
            $reports['sale_records'] = DB::table('sale_items')->join('sales', 'sale_items.sale_id', '=', 'sales.id')
                ->where('sale_items.product_id', $product->id)
                ->select('sales.id', 'sales.created_at', 'sales.invoice_no', 'sale_items.qty', 'sale_items.price')->get();
            return response()->json([
                'success' => true,
                'reports' => $reports,
                'product' => $product,
            ]);
        } else {

            //purchase records
            $reports = [];
            $reports['purchase_records'] = DB::table('purchase_items')->join('purchases', 'purchase_items.purchase_id', '=', 'purchases.id')
                ->where('purchase_items.product_id', $product->id)
                ->whereDate('purchases.purchase_date', '>=', $request->start_date)
                ->whereDate('purchases.purchase_date', '<=', $request->end_date)
                ->select('purchases.id', 'purchases.purchase_date', 'purchases.invoice_no', 'purchase_items.stock', 'purchase_items.price')->get();
            //order records
            $reports['order_records'] = DB::table('order_items')->join('orders', 'order_items.order_id', '=', 'orders.id')
                ->where('order_items.product_id', $product->id)
                ->whereNotBetween('orders.status', [6, 7])
                ->whereDate('orders.created_at', '>=', $request->start_date)
                ->whereDate('orders.created_at', '<=', $request->end_date)
                ->select('orders.id', 'orders.created_at', 'orders.invoice_no', 'order_items.quantity', 'order_items.price')->get();

            //sales records
            $reports['sale_records'] = DB::table('sale_items')->join('sales', 'sale_items.sale_id', '=', 'sales.id')
                ->where('sale_items.product_id', $product->id)
                ->whereDate('sales.created_at', '>=', $request->start_date)
                ->whereDate('sales.created_at', '<=', $request->end_date)
                ->select('sales.id', 'sales.created_at', 'sales.invoice_no', 'sale_items.qty', 'sale_items.price')->get();
            return response()->json([
                'success' => true,
                'reports' => $reports,
                'product' => $product,
            ]);
        }
    }





    public function stockReportCategoryWise($category_id)
    {

        $category = Category::where('id', $category_id)->with('subCategory.subSubCategory')->first();
        //fetched products of this category and calculated it's stock and amount ;
        $products = Product::where('status', '!=', 4)->where('stock', '>', 0)->where('category_id', $category_id)->select('id', 'stock')->with(['purchaseItem:id,product_id,price,stock'])->get();
        $category->{'total_stock'} =  $products->sum('stock');
        $category->{'total_amount'} =  self::getCategoryStockAmount($products);
        //collecting sub categories stock and amount report
        self::getSubCategoryStock('sub_category_id', $category->subCategory);

        // return $category ;
        $pdf = PDF::loadView('admin.pdf.stock_report_category_wise', compact('category'));
        return $pdf->stream();
    }




    public function stockReportAllCategory()
    {

        $categories = Category::select('id', 'name')->with('subCategory.subSubCategory')->get();
        foreach ($categories as $key => $value) {
            $products = Product::where('stock', '>', 0)->where('category_id', $value->id)->select('id', 'stock')->with(['purchaseItem:id,product_id,price,stock'])->get();
            $value->{'total_stock'} = $products->sum('stock');
            $total_amount = 0;
            //fetched average purchase price
            foreach ($products as $item) {
                count($item->purchaseItem) > 0 ? $total_amount += round($item->stock * self::averagePurchasePrice($item->purchaseItem), 0) : 0;
            }
            $value->{'total_amount'} = $total_amount;
            //collecting sub categories stock and amounts
            self::getSubCategoryStock('sub_category_id', $value->subCategory);
        }

        //  return $categories ;
        $pdf = PDF::loadView('admin.pdf.stock_report_all_category_wise', compact('categories'));
        return $pdf->stream();
    }





    public static function getSubCategoryStock($category_column_name, $categories)
    {
        foreach ($categories as $key => $value) {
            $products = Product::where('stock', '>', 0)->where($category_column_name, $value->id)->select('id', 'stock')->with(['purchaseItem:id,product_id,price,stock'])->get();
            $value->{'total_stock'} = $products->sum('stock');
            $total_amount = 0;
            //fetched average purchase price
            foreach ($products as $item) {
                count($item->purchaseItem) > 0 ? $total_amount += round($item->stock * self::averagePurchasePrice($item->purchaseItem), 0) : 0;
            }
            $value->{'total_amount'} = $total_amount;
            //collecting sub sub categories stock and amounts
            $value->{'sub_sub_categories'} = self::getCategoryWiseProductStock('sub_sub_category_id', $value->subSubCategory);
        }
        return;
    }








    public static function getCategoryStockAmount($products)
    {

        $total_amount = 0;
        //fetched average purchase price
        foreach ($products as $item) {
            count($item->purchaseItem) > 0 ? $total_amount += round($item->stock * self::averagePurchasePrice($item->purchaseItem), 0) : 0;
        }
        return $total_amount;
    }





    public function productStockReports(Request $request)
    {

        $item = $request->item ?? 20;
        $categories = Category::select('id', 'name')->get();
        if (!empty($categories)) {
            self::getCategoryWiseProductStock('category_id', $categories);
        }
        $sub_categories = '';
        $sub_sub_categories = '';

        if (!empty($request->category_id)  || !empty($request->sub_category_id)  || !empty($request->sub_sub_category_id)) {
            //fetched sub category and stock
            $sub_categories = $request->category_id ? SubCategory::where('category_id', $request->category_id)->select('id', 'name')->get() : '';
            if (!empty($sub_categories)) {
                self::getCategoryWiseProductStock('sub_category_id', $sub_categories);
            }

            $sub_sub_categories = $request->sub_category_id ? SubSubCategory::where('subcategory_id', $request->sub_category_id)->select('id', 'name')->get() : '';
            if (!empty($sub_sub_categories)) {
                self::getCategoryWiseProductStock('sub_sub_category_id', $sub_sub_categories);
            }

            $category_column_name = '';
            $category_id = '';

            //only category wise
            if (!empty($request->category_id) && $request->category_type == 'category') {
                $category_column_name = 'category_id';
                $category_id = $request->category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }
            //category and sub category wise
            if (!empty($request->sub_category_id) && $request->category_type == 'sub_category') {
                $category_column_name = 'sub_category_id';
                $category_id = $request->sub_category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }

            //category and sub sub category wise
            if (!empty($request->sub_sub_category_id) && $request->category_type == 'sub_sub_category') {
                $category_column_name = 'sub_sub_category_id';
                $category_id = $request->sub_sub_category_id;
                $products = self::getCategoryWiseProducts($category_column_name, $category_id, $item);
            }

            return response()->json([
                'categories' => $categories,
                'products' => $products,
                'sub_categories' => $sub_categories,
                'sub_sub_categories' => $sub_sub_categories,
            ]);
        } else {

            $products = Product::where('status', '!=', 4)->where('stock', '>', 0)->select('id', 'name', 'category_id', 'sub_category_id', 'sub_sub_category_id', 'stock', 'product_code', 'price', 'sale_price')->with('purchaseItem')->paginate($item);
            return response()->json([
                'categories' => $categories,
                'products' => $products,
            ]);
        }
    }




    public static function  getCategoryWiseProducts($category_column_name, $category_id, $paginate_item)
    {

        return Product::where('status', '!=', 4)->where($category_column_name, $category_id)
            ->select(
                'id',
                'name',
                'category_id',
                'sub_category_id',
                'sub_sub_category_id',
                'stock',
                'product_code',
                'price',
                'sale_price',
                'slug',
                'thumbnail_img',
                'status',
                'show_homepage',
                'show_reseller_panel',
                'is_combo'
            )
            ->with('productBarcode', 'purchaseItem', 'merchant')->paginate($paginate_item);
    }



    public static function getCategoryWiseProductStock($category_column_name, $categories)
    {
        foreach ($categories as $key => $value) {
            $products = Product::where('status', '!=', 4)->where('stock', '>', 0)->where($category_column_name, $value->id)->select('id', 'stock')->with(['purchaseItem:id,product_id,price,stock'])->get();
            $value->{'total_stock'} = $products->sum('stock');
            $total_amount = 0;
            //fetched average purchase price
            foreach ($products as $item) {
                count($item->purchaseItem) > 0 ? $total_amount += round($item->stock * self::averagePurchasePrice($item->purchaseItem), 0) : 0;
            }
            $value->{'total_amount'} = $total_amount;
        }
        return;
    }



    public static  function averagePurchasePrice($purchase_items)
    {

        $total_price = 0;
        $total_stock = 0;
        foreach ($purchase_items as $key => $purchase) {
            $total_price += $purchase->price;
            $total_stock += $purchase->stock;
        }
        //average price
        $price = $total_price / $total_stock;
        return round($price, 2);
    }




    public function brand()
    {
        $brands = Brand::where('status', 1)->get();
        return response()->json([
            'success' => true,
            'brands' => $brands,
        ]);
    }
}
