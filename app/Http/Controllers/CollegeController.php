<?php

namespace App\Http\Controllers;

use App\Models\College;
use Illuminate\Http\Request;

class CollegeController extends Controller
{
    //

    public function paginateData()
    {
        $colleges = College::paginate(6);
        return response()->json($colleges);
    }

    public function index()
    {
        return College::all();
    }
    
    public function store(Request $request)
    {
       try{
        $validation = $request->validate([
            'name' => 'required',
            'location' => 'required',
            'website' => 'required',
            'est_date' => 'required',
            'affiliation' => 'required'
        ]);

        if($request->hasFile('image')){
            $file = $request->file('image');
            $filename = time().'_'.uniqid().'.'.$file->getClientOriginalExtension();
            $path = $file->storeAs('images',$filename,'public');
            $validation['image'] = $filename;
        }

        College::create($validation);
        return response()->json(['message' => "Data inserted successfully"], 200);
         }catch(\Exception $e){
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
       }
}

public function delete($id)
{
    try{
        $college = College::findOrFail($id);
        $college->delete();
        return response()->json(['message' => "Data deleted successfully"], 200);
    }catch(\Exception $e){
        return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
    }
}

public function update(Request $request, $id){
    try{
        $college = College::findOrFail($id);
        $validation = $request->validate([
            'name' => 'required',
            'location' => 'required',
            'website' => 'required',
            'est_date' => 'required',
            'affiliation' => 'required'
        ]);

        if($request->hasFile('image')){
            $file = $request->file('image');
            $filename = time().'_'.uniqid().'.'.$file->getClientOriginalExtension();
            $path = $file->storeAs('images',$filename,'public');
            $validation['image'] = $filename;
        }

        $college->update($validation);
        return response()->json(['message' => "Data updated successfully"], 200);
    }catch(\Exception $e){
        return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
    }   
}


}
