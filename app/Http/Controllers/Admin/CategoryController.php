<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\SubCategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Str;

class CategoryController extends Controller
{

    public function index()
    {
        $categories = Category::orderby('id', 'desc')->paginate(10);
        return response()->json([
            'categories' => $categories,
            'status' => 'SUCCESS'
        ]);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'name' => 'required|unique:categories',
            'meta_title'=>'nullable|max:70',
            'meta_key' => 'nullable',
            'meta_description' => 'nullable|max:170',
            'meta_content' => 'nullable',
        ]);
        $slug=explode(" ", $request->name);
        $category = new Category();
        $category->name = $request->name;
        $category->slug = Str::slug($category->name);
        $category->is_selected = 1;
        $category->status = 1;
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;
        $category->meta_key = $request->meta_key;
        $category->meta_content = $request->meta_content;

        if ($request->hasFile('image')) {
            $validatedData = $request->validate([
                //'image' => 'required|file|image|dimensions:max_width=1000,max_height=1000',
            ]);
            $path = $request->file('image')->store('images/category', 'public');
            $category->icon_image = $path;
        }
        if ($category->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'category add successfully'
            ]);
        }
    }

    public function unselected($id)
    {
        $category = Category::find($id);
        if ($category) {
            $category->is_selected = 0;
            if ($category->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'category unselected successfully'
                ]);
            }
        }
    }

    public function selected($id)
    {
        $category = Category::find($id);
        if ($category) {
            $category->is_selected = 1;
            if ($category->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'category selected successfully'
                ]);
            }
        }
    }

    public function active($id)
    {
        $category = Category::find($id);
        if ($category) {
            $category->status = 1;
            if ($category->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'category active successfully'
                ]);
            }
        }
    }

    public function deActive($id)
    {
        $category = Category::find($id);
        if ($category) {
            $category->status = 0;
            if ($category->save()) {
                return response()->json([
                    'status' => 'SUCCESS',
                    'message' => 'category de-active successfully'
                ]);
            }
        }
    }

    public function search($search)
    {
        $categories = Category::where('name', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(10);

        if ($categories) {
            return response()->json([
                'categories' => $categories,
                'status' => 'SUCCESS'
            ]);
        }
    }

    public function edit($id)
    {
        $category = Category::find($id);
        if ($category) {
            return response()->json([
                'status' => 'SUCCESS',
                'category' => $category
            ]);
        }

    }

    public function update(Request $request, $id)
    {

        $this->validate($request, [
            'name' => 'required',
            'meta_title'=>'nullable|max:70',
            'meta_key' => 'nullable',
            'meta_description' => 'nullable|max:170',
            'meta_content' => 'nullable',
        ]);
        $category = Category::find($id);
        $category->name = $request->name;
        $category->position = $request->position;
        $category->slug = Str::slug($category->name);
        $category->meta_title = $request->meta_title;
        $category->meta_description = $request->meta_description;
        $category->meta_key = $request->meta_key;
        $category->meta_content = $request->meta_content;
        if ($request->hasFile('image')) {
            $validatedData = $request->validate([
                //'image' => 'required|file|image|dimensions:max_width=1000,max_height=1000',
            ]);
            $path = $request->file('image')->store('images/category', 'public');
            $category->icon_image = $path;
        }
        if ($category->save()) {
            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'category update successfully'
            ]);
        }
    }

    public function categoryWiseSubCategory($id){

     //   return $id;
        $subCategories=SubCategory::where('category_id',$id)->get();
        if ($subCategories){
            return response()->json([
                'status' => 'SUCCESS',
                'subCategories' =>$subCategories
            ]);
        }
    }

}
