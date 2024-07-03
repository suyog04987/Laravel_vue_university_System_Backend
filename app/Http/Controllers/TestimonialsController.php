<?php

namespace App\Http\Controllers;

use App\Models\Testimonials;
use Illuminate\Http\Request;

class TestimonialsController extends Controller
{
    //

    public function index()
    {
        $testimonials = Testimonials::all();
        return response()->json($testimonials);
        
    }

 public function store(Request $request)
{
    try {
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'position' => 'required',
            'content' => 'required',
            'image' => 'nullable|file|mimes:jpeg,png,jpg,gif|max:2048', // Example validation for image
        ]);

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
            $path = $file->storeAs('images', $filename, 'public');
            $validated['image'] = $filename;
        }

        Testimonials::create($validated);
        return response()->json(['message' => "Data inserted successfully"], 200);   
    } catch (\Exception $e) {
        return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
    }
}


public function update(Request $request, $id)
{
    try {
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'position' => 'required',
            'content' => 'required',
        ]);

        $data = Testimonials::findOrFail($id);

        if ($request->hasFile('image')) {
            $file = $request->file('image');
            $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
            $path = $file->storeAs('images', $filename, 'public');
            $data->image = $filename;
        }

        $data->update($validated);
        return response()->json(['message' => "Data updated successfully"], 200);   
    } catch (\Exception $e) {
        return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
    }
}


public function delete($id)
{
    $data = Testimonials::findOrFail($id);
    $data->delete();
    return response()->json(['message' => "Data deleted successfully"], 200);
}

}
