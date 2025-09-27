<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class HappyCustomerController extends Controller
{
    // Define the table name for easy reuse
    protected $table = 'happy_customers';

    /**
     * Display a paginated list of happy customers.
     */
    public function index()
    {
        $customers = DB::table($this->table)->orderBy('order', 'asc')->paginate(10);
        return response()->json([
            'status' => 'SUCCESS',
            'customers' => $customers
        ]);
    }

    /**
     * Store a new happy customer entry.
     */
    public function store(Request $request)
    {
        $request->validate([
            'image' => 'required|image',
            'order' => 'required|integer',
        ]);

        $imagePath = null;
        if ($request->hasFile('image')) {
            $imagePath = $request->file('image')->store('images/happy_customers', 'public');
        }

        DB::table($this->table)->insert([
            'image' => $imagePath,
            'alt_text' => $request->alt_text,
            'order' => $request->order,
            'status' => 1,
            'created_at' => now(),
            'updated_at' => now(),
        ]);

        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Happy Customer added successfully'
        ]);
    }

    /**
     * Get a specific happy customer for editing.
     */
    public function edit($id)
    {
        $customer = DB::table($this->table)->where('id', $id)->first();
        if ($customer) {
            return response()->json([
                "status" => "SUCCESS",
                "customer" => $customer,
            ]);
        }
        return response()->json(["status" => "ERROR", "message" => "Customer not found"], 404);
    }

    /**
     * Update an existing happy customer entry.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'order' => 'required|integer',
        ]);

        $customer = DB::table($this->table)->where('id', $id)->first();
        if (!$customer) {
             return response()->json(["status" => "ERROR", "message" => "Customer not found"], 404);
        }

        $updateData = [
            'alt_text' => $request->alt_text,
            'order' => $request->order,
            'updated_at' => now(),
        ];

        if ($request->hasFile('image')) {
            // Delete the old image
            if ($customer->image && Storage::disk('public')->exists($customer->image)) {
                Storage::disk('public')->delete($customer->image);
            }
            // Store the new image
            $updateData['image'] = $request->file('image')->store('images/happy_customers', 'public');
        }

        DB::table($this->table)->where('id', $id)->update($updateData);

        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Happy Customer updated successfully',
        ]);
    }

    /**
     * Delete a happy customer entry.
     */
    public function destroy($id)
    {
        $customer = DB::table($this->table)->where('id', $id)->first();

        if ($customer) {
            // Delete the image from storage
            if ($customer->image && Storage::disk('public')->exists($customer->image)) {
                 Storage::disk('public')->delete($customer->image);
            }
            // Delete the database record
            DB::table($this->table)->where('id', $id)->delete();

            return response()->json([
                'status' => 'SUCCESS',
                'message' => 'Happy Customer deleted successfully'
            ]);
        }
        return response()->json(["status" => "ERROR", "message" => "Customer not found"], 404);
    }

    /**
     * Activate a happy customer.
     */
    public function active($id)
    {
        DB::table($this->table)->where('id', $id)->update(['status' => 1]);
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Customer activated successfully'
        ]);
    }

    /**
     * Deactivate a happy customer.
     */
    public function deActive($id)
    {
        DB::table($this->table)->where('id', $id)->update(['status' => 0]);
        return response()->json([
            'status' => 'SUCCESS',
            'message' => 'Customer de-activated successfully'
        ]);
    }
}