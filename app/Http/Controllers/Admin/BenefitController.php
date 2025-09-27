<?php

namespace App\Http\Controllers\Admin;

use App\Models\Benefit;
use App\Models\LandingPage;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class BenefitController extends Controller
{
    public function index($slug)
    {
        $page = LandingPage::where('status', 1)->where('page_slug', $slug)->firstOrFail();
        $benefits = Benefit::where('landing_page_id', $page->id)->with('landingPage')->orderby('id', 'desc')->paginate(30);
        return response()->json([
            'success' => true,
            'benefits' => $benefits,
        ]);
    }

    public function store(Request $request)
    {

        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'landing_page_id' => 'required',
        ]);
        $benefit = new Benefit();
        $benefit->title = $request->title;
        $benefit->landing_page_id = $request->landing_page_id;
        $benefit->description = $request->description;
        $benefit->save();
        return response()->json([
            'success' => true,
            'message' => 'benefit added successfully'
        ]);
        
    }

    

    public function status($id)
    {
        $benefit = Benefit::find($id);
        if ($benefit->status == 1) {
            $benefit->status = 0;
            $benefit->save();
        }else{
            $benefit->status = 1;
            $benefit->save();
        }

        return response()->json([
            'success' => true,
            'message' => 'benefit status updated'
        ]);
    }


    public function search($search)
    {
        $benefits = Benefit::where('title', 'like', '%' . $search . '%')->orderBy('id', 'DESC')->paginate(10);

        if ($benefits) {
            return response()->json([
                'benefits' => $benefits,
                'success' => true,
            ]);
        }
    }

    public function edit($id)
    {
        $benefit = Benefit::with('landingPage')->find($id);
        return response()->json([
            'success' => true,
            'benefit' => $benefit
        ]);
    }




    public function update(Request $request, $id)
    {

        $this->validate($request, [
            'title' => 'required',
            'description' => 'required',
            'landing_page_id' => 'required',
        ]);
        $benefit = Benefit::find($id);
        $benefit->landing_page_id = $request->landing_page_id;
        $benefit->title = $request->title;
        $benefit->description = $request->description;
        $benefit->position = $request->position;
        $benefit->save();
        return response()->json([
            'success' => true,
            'message' => 'Benefit update successfully'
        ]);
        
    }


    public function delete($id)
    {
        $benefit = Benefit::findOrFail($id);
        $benefit->delete();
        return response()->json([
            'success' => true,
            'message' => 'Benefit deleted successfully'
        ]);
    }
}
