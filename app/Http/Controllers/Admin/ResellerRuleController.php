<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\ResellingRule;

class ResellerRuleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $reseller_rules= ResellingRule::orderBy('id','asc')->get();
            return response()->json([
            "success" => "OK",
            "reseller_rules" => $reseller_rules ,
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         $validatedData = $request->validate([
            'title' => 'required',
            'description' => 'required',
         ]);

         $service= new ResellingRule ();
         $service->title=$request->title;
         $service->description=$request->description;
         $service->save();

         return response()->json([
            "success" => "OK",
            "message" => 'reseller rules added successfully ' ,
         ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
         $reselling_rule = ResellingRule::find($id);
         if ($reselling_rule) {
            return response()->json([
                "success" => "OK",
                "reselling_rule" => $reselling_rule ,
            ]);
         }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
         $validatedData = $request->validate([
         'title' => 'required',
         'description' => 'required',
         ]);

         $reselling_rule = ResellingRule::find($id);
         $reselling_rule->title=$request->title ;
         $reselling_rule->description=$request->description;

         if($reselling_rule->save()){

            return response()->json([
            'status' => 'SUCCESS',
            'message' => 'reselling rules updated successfully',
         ]);

         }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
         $reselling_rule=ResellingRule::find($id);
            if ($reselling_rule){
                if ($reselling_rule->delete()){
                return response()->json([
                'status'=>'SUCCESS',
                'message'=>'Reselling Rule Deleted Successfully'
                ]);
            }
         }
    }
}
