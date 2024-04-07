<?php

namespace App\Http\Controllers;

use App\Models\Courses;
use App\Models\Semester;
use Illuminate\Http\Request;

class CourcesController extends Controller
{
    //

    public function store(Request $request){
    try {    
        $validation= $request->validate([
            'name'=>'required',
            'universities_id'=>'required',
            'faculties_id'=> 'required',
            'semesters_id' => 'required',
            'credit_hrs' => 'required',
        ]);

        Courses::create($validation);
        return response()->json(['message' => "Data inserted successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        };
}

    public function courseData(){
        $id = request('id');
        $courses = Semester::with('course')->findOrFail($id);
        return($courses);
    }

    public function update(Request $request, $id)
    {
        $data = Courses::findOrFail($id);
    
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'universities_id' => 'required',
            'faculties_id' => 'required',
            'semesters_id' => 'required',
            'credit_hrs' => 'required',
        ]);
    
        $data->update($validated);
    
        return response()->json(['message' => 'Courses updated successfully'], 200);
    }
    public function delete($id)
    {
        // Logic to delete the university with the given ID
        Courses::findOrFail($id)->delete();

        return response()->json(['message' => 'Course deleted successfully....']);
    }
}
