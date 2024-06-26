<?php

namespace App\Http\Controllers;

use App\Models\University;
use Illuminate\Http\Request;

class UniversityController extends Controller
{
    
    public function index(){
        $data= University::with(['faculty.semester.course.material'])->get();
       return response()->json($data);
    }

    public function store(Request $request){
        try{
            $validated = $request->validate([
                'name' => ['required', 'max:255'],
                'details' =>'required',
                'address' => 'required',
                'image_url' => 'required',
            ]);
            
            University::create($validated);
            return response()->json(['message'=>"Data inserted successfully"],200);   
        } catch(\Exception $e){
            return response()->json(["error"=>"Internal Server Error. Try again later", "message"=>$e->getMessage()], 500);
        }
    }

    public function allCourses(){
        $id = request('id');
        // dd($id);
        $university = University::with('courses')->findOrFail($id);
        return $university;
    
        // Now you can use $courses as needed, such as returning it or passing it to a view.
    }

    public function facultyData(){
        $id = request('id');

        $university = University::with('faculty')->findOrFail($id);
        return $university;
    }

    public function update(Request $request, $id)
    {
        $data = University::findOrFail($id);
    
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'details' => 'required',
            'address' => 'required',
            'image_url' => 'required',
        ]);
    
        $data->update($validated);
    
        return response()->json(['message' => 'University updated successfully'], 200);
    }
    


    public function delete($id)
    {
        // Logic to delete the university with the given ID
        University::findOrFail($id)->delete();

        return response()->json(['message' => 'University deleted successfully']);
    }
    
}
