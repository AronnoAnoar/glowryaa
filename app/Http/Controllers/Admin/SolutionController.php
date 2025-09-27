<?php

namespace App\Http\Controllers\Admin;

use App\Models\Solution;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\LandingPage;

class SolutionController extends Controller
{
    public function index($slug)
    {
        $page = LandingPage::where('status', 1)->where('page_slug', $slug)->firstOrFail();
        $solutions = Solution::where('landing_page_id', $page->id)->with('landingPage')->orderby('id', 'desc')->get();
        return response()->json([
            'solutions' => $solutions,
            'success' => true,
        ]);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'title' => 'required',
            'icon' => 'required',
            'landing_page_id' => 'required',
        ]);
        $solution = new Solution();
        $solution->landing_page_id = $request->landing_page_id;
        $solution->title = $request->title;
        $solution->icon = $request->icon;
        $solution->save();
        return response()->json([
            'success' => true,
            'message' => 'solution added successfully'
        ]);
        
    }

    

    public function status($id)
    {
        $solution = Solution::find($id);
        if ($solution->status == 1) {
            $solution->status = 0;
            $solution->save();
        }else{
            $solution->status = 1;
            $solution->save();
        }

        return response()->json([
            'success' => true,
            'message' => 'solution status updated'
        ]);
    }


    public function search($search)
    {
        $solutions = Solution::where('title', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(10);

        if ($solutions) {
            return response()->json([
                'solutions' => $solutions,
                'success' => true,
            ]);
        }
    }

    public function edit($id)
    {
        $solution = Solution::with('landingPage')->find($id);
        return response()->json([
            'success' => true,
            'solution' => $solution
        ]);
    }




    public function update(Request $request, $id)
    {

        $this->validate($request, [
            'title' => 'required',
            'icon' => 'required',
            'landing_page_id' => 'required',
        ]);
        $solution = Solution::find($id);
        $solution->landing_page_id = $request->landing_page_id;
        $solution->title = $request->title;
        $solution->icon = $request->icon;
        $solution->save();
        return response()->json([
            'success' => true,
            'message' => 'Solution update successfully'
        ]);
        
    }



    public function delete($id)
    {
        $solution = Solution::findOrFail($id);
        $solution->delete();
        return response()->json([
            'success' => true,
            'message' => 'solution deleted successfully'
        ]);
    }
}
