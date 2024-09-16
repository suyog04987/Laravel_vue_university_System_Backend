<?php

namespace App\Http\Controllers;

use App\Models\Faculty;
use Illuminate\Http\Request;
use PhpParser\Builder\Function_;
use PhpParser\Node\Expr\FuncCall;

class FacultyController extends Controller
{
    

    public function index(){
        $data = Faculty::with('university')->get();
        return response()->json($data);
    }

    public function store(Request $request){
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'universities_id' => 'required',
            'syllabus' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
        ]);
        
        if ($request->hasFile('syllabus')) {
            $file = $request->file('syllabus');
            $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
            $path = $file->storeAs('files', $filename, 'public');
            $validated['syllabus'] = $filename;
        }
        Faculty::create($validated);

        return response()->json(['message' => 'Faculty Added successfully'], 200);
    }

    public function semesterData(){
        $id = request('id');
        $faculty = Faculty::with('semester.course', 'course')->findOrFail($id);
        return($faculty);
    }

    public function update(Request $request, $id)
    {
        $data = Faculty::findOrFail($id);
    
        $validated = $request->validate([
            'name' => ['required', 'max:255'],
            'universities_id' => 'required',
        ]);

        if ($request->hasFile('syllabus')) {
            $file = $request->file('syllabus');
            $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
            $path = $file->storeAs('files', $filename, 'public');
            $validated['syllabus'] = $filename;
        }
    
        $data->update($validated);
    
        return response()->json(['message' => 'Faculty updated successfully'], 200);
    }

    public function delete($id)
    {
        // Logic to delete the university with the given ID
        Faculty::findOrFail($id)->delete();

        return response()->json(['message' => 'Faculty deleted successfully....']);
    }
}
