<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\Brand;
use Illuminate\Support\Str;
class BrandController extends Controller
{
    public function index()
    {
        $brands = Brand::orderby('id', 'desc')->paginate(40);
        return response()->json([
            'brands' => $brands,
            'status' => 'SUCCESS'
        ]);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'name' => 'required|unique:brands|',
        ]);
        $brand = new Brand();
        $brand->name = $request->name;
        $brand->slug = Str::slug($request->name);
        $brand->status = 1;

        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('images/brand', 'public');
            $brand->image = $path;
        }
        if ($brand->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Brand add successfully'
            ]);
        }
    }



    public function active($id)
    {
        $brand = Brand::find($id);
        if ($brand) {
            $brand->status = 1;
            if ($brand->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Brand active successfully'
                ]);
            }
        }
    }

    public function deActive($id)
    {
        $brand = Brand::find($id);
        if ($brand) {
            $brand->status = 0;
            if ($brand->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'Brand de-active successfully'
                ]);
            }
        }
    }

    public function search($search)
    {
        $brands = Brand::where('name', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(10);

        if ($brands) {
            return response()->json([
                'brands' => $brands,
                'status' => 'SUCCESS'
            ]);
        }
    }

    public function edit($id)
    {
        $brand = Brand::find($id);
        if ($brand) {
            return response()->json([
                'status' => 'SUCCESS',
                'brand' => $brand
            ]);
        }

    }

    public function update(Request $request, $id)
    {

        $this->validate($request, [
            'name'=>'required|unique:brands,name,'.$id,
        ]);
        $brand = Brand::find($id);
        $brand->name = $request->name;
        $brand->position = $request->position;
        $brand->slug = Str::slug($request->name);
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('images/brand', 'public');
            $brand->image = $path;
        }
        if ($brand->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'brand update successfully'
            ]);
        }
    }
}
