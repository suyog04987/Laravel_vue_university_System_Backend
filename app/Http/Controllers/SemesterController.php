<?php

namespace App\Http\Controllers;

use App\Models\Semester;
use Illuminate\Http\Request;
use PhpParser\Node\Expr\FuncCall;

class SemesterController extends Controller
{
    public function index()
    {
        $data = Semester::with('faculty')->get();
        return response()->json($data);
    }

    public function store(Request $request)
    {
        try {
            $validation = $request->validate([
                'semester' => 'required',
                'universities_id' => 'required',
                'faculties_id' => 'required',
            ]);
           
            Semester::create($validation);
            return response()->json(['message' => "Data inserted successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }
    public function update(Request $request, $id)
    {
        $data = Semester::findOrFail($id);
    
        $validated = $request->validate([
            'semester' => ['required', 'max:255'],
            'universities_id' => 'required',
            'faculties_id' => 'required',
        ]);
    
        $data->update($validated);
    
        return response()->json(['message' => 'Semester updated successfully'], 200);
    }

    public function delete($id)
    {
        // Logic to delete the university with the given ID
        Semester::findOrFail($id)->delete();

        return response()->json(['message' => 'Semester deleted successfully....']);
    }
}
