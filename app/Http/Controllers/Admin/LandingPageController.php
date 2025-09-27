<?php

namespace App\Http\Controllers\Admin;

use App\Models\LandingPage;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class LandingPageController extends Controller
{
    public function pages()
    {
        $landing_pages = LandingPage::orderBy('id', 'desc')->get();
        return response()->json([
            'success' => true,
            'landing_pages' => $landing_pages,
        ]);
    }


    public function addPage(Request $request)
    {
        $data = $request->validate([
            'page_name' => 'required',
            'image' => 'required',
        ]);
        $page = new LandingPage();
        $page->page_name = $request->page_name;
        $page->page_slug = Str::slug($request->page_name); 
        $page->main_title = $request->main_title;
        $page->hotline_title = $request->hotline_title;
        $page->hotline_phone = $request->hotline_phone;
        $page->video_title = $request->video_title;
        $page->video_title_two = $request->video_title_two;
        $page->video_title_three = $request->video_title_three;
        $page->video_url = $request->video_url;
        $page->video_url_two = $request->video_url_two;
        $page->video_url_three = $request->video_url_three;
        $page->why_us_title = $request->why_us_title;
        $page->why_us_description = $request->why_us_description;
        $page->solution_title = $request->solution_title;
        $page->benefit_title = $request->benefit_title;
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('images/page', 'public');
            $page->main_banner = $path ;
        }
        if ($request->hasFile('hotline_image')) {
            $path = $request->file('hotline_image')->store('images/page', 'public');
            $page->hotline_image = $path ;
        }
        if ($request->hasFile('benefit_image')) {
            $path = $request->file('benefit_image')->store('images/page', 'public');
            $page->benefit_image = $path ;
        }


        if($page->save()){
            return response()->json([
                'success' =>true,
                'message' => 'Added successfully',
            ]);
        }
    }


    public function update(Request $request , $id){
        $data = $request->validate([
            'page_name' => 'required',
            'hotline_title' => 'required',
            'hotline_phone' => 'required',
            'page_slug' => 'required|unique:landing_pages,page_slug,' .$id,
        ]);
        $page = LandingPage::find($id);
        $page->page_name = $request->page_name;
        $page->page_slug = Str::slug($request->page_slug);
        $page->main_title = $request->main_title;
        $page->hotline_title = $request->hotline_title;
        $page->hotline_phone = $request->hotline_phone;
        $page->video_title = $request->video_title;
        $page->video_title_two = $request->video_title_two;
        $page->video_title_three = $request->video_title_three;
        $page->video_url = $request->video_url;
        $page->video_url_two = $request->video_url_two;
        $page->video_url_three = $request->video_url_three;
        $page->why_us_title = $request->why_us_title;
        $page->why_us_description = $request->why_us_description;
        $page->solution_title = $request->solution_title;
        $page->benefit_title = $request->benefit_title;
        if ($request->hasFile('image')) {
            $path = $request->file('image')->store('images/page', 'public');
            $page->main_banner=$path ;
        }


        if ($request->hasFile('hotline_image')) {
            $path = $request->file('hotline_image')->store('images/page', 'public');
            $page->hotline_image=$path ;
        }

        // return $request->hasFile('benefit_image');
        if ($request->hasFile('benefit_image')) {
            $path = $request->file('benefit_image')->store('images/page', 'public');
            $page->benefit_image=$path ;
        }


        if($page->save()){
            return response()->json([
                'success' =>true,
                'message' => 'Updated successfully',
            ]);
        }
    }


    public function edit($id)
    {
        $page = LandingPage::findOrFail($id);
        return response()->json([
            'success' => true,
            'page' => $page,
        ]);
    }




    public function status($id)
    {
        $page = LandingPage::findOrFail($id);
        if($page->status == 1){
            $page->status = 0;
            $page->save();
        }else{
            $page->status = 1;
            $page->save(); 
        }

        return response()->json([
            'success' => true,
            'message' => 'Updated successfully',
        ]);
    }



    public function activePage()
    {
        $landing_pages = LandingPage::where('status', 1)->orderBy('id', 'desc')->get();
        return response()->json([
            'success' => true,
            'pages' => $landing_pages,
        ]);
    }
}
