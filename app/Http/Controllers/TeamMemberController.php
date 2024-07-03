<?php

namespace App\Http\Controllers;

use App\Models\TeamMember;
use Illuminate\Http\Request;

class TeamMemberController extends Controller
{
    //

    public function index()
    {
        $teams = TeamMember::all();
        return response()->json($teams);

    }

    public function store(Request $request){
        try{
            $validate = $request ->validate([
                'name' => ['required', 'max:255'],
                'position' => 'required',
                'photo' => 'nullable|mimes:jpeg,png,jpg,gif|max:2048',
                'facebook' => 'nullable',
                'twitter' => 'nullable',
                'linkedin' => 'nullable',
                'description' => 'required'
            ]);

            if($request->hasFile('photo')){
                $file = $request->file('photo');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('images', $filename, 'public');
                $validate['photo'] = $filename;
            }

            TeamMember::create($validate);
            return response()->json(['message' => "Data inserted successfully"], 200);
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }

    public function update(Request $request, $id)
    {
        try{
            $validate = $request->validate([
                'name' => ['required', 'max:255'],
                'position' => 'required',
                'facebook' => 'nullable',
                'twitter' => 'nullable',
                'linkedin' => 'nullable',
                'description' => 'required'
            ]);

            $data = TeamMember::findOrFail($id);

            if($request->hasFile('photo')){
                $file = $request->file('photo');
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $path = $file->storeAs('images', $filename, 'public');
                $data->photo = $filename;
            }
            $data->update($validate);
            return response()->json(['message' => "Data updated successfully"], 200);
        }catch (\Exception $e){
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }

    public function delete($id)
    {
        try{
            $data = TeamMember::findOrFail($id);
            $data->delete();
            return response()->json(['message' => "Data deleted successfully"], 200);
        }catch (\Exception $e){
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }
}
