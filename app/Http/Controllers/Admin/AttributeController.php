<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attribute;

class AttributeController extends Controller
{
    public function allWithVariants()
    {
        // This function finds all active attributes and loads their related variants.
        $attributes = Attribute::with('variants')->where('status', 1)->get();

        return response()->json([
            'success' => true,
            'attributes' => $attributes
        ]);
    }
}