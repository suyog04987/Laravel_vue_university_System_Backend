<?php

namespace App\Http\Controllers;

use App\Models\Material;
use Illuminate\Http\Request;

class MaterialController extends Controller
{


    public function index()
    {
        return Material::all();
    }

    //storing the data with three files
    public function store(Request $request)
    {
        try {
            $validation = $request->validate([
                'note' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'syllabus' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'solution' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'courses_id' => 'required',
                'semesters_id' => 'required',
                'universities_id' => 'required',
                'faculties_id' => 'required',
            ]);

            if ($request->hasFile('note')) {
                $file = $request->file('note');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['note'] = $filename;
            }

            if ($request->hasFile('syllabus')) {
                $file = $request->file('syllabus');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['syllabus'] = $filename;
            }


            if ($request->hasFile('solution')) {
                $file = $request->file('solution');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['solution'] = $filename;
            }

            Material::create($validation);
            return response()->json(['message' => "Data inserted successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }

    public function delete($id)
    {
        try {
            $material = Material::findOrFail($id);
            $material->delete();
            return response()->json(['message' => "Data deleted successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }

    public function update (Request $request, $id)
    {
        try {
            $validation = $request->validate([
                'note' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'syllabus' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'solution' => 'file|mimes:jpeg,png,jpg,pdf,docx|max:10240',
                'courses_id' => 'required',
                'semesters_id' => 'required',
                'universities_id' => 'required',
                'faculties_id' => 'required',
            ]);
             
            $material = Material::findOrFail($id);
            if ($request->hasFile('note')) {
                $file = $request->file('note');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['note'] = $filename;
            }

            if ($request->hasFile('syllabus')) {
                $file = $request->file('syllabus');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['syllabus'] = $filename;
            }


            if ($request->hasFile('solution')) {
                $file = $request->file('solution');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('files', $filename, 'public');
                $validation['solution'] = $filename;
            }

            $material->update($validation);

            return response()->json(['message' => "Data updated successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }
}
