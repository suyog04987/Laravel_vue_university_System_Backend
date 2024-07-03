<?php

namespace App\Http\Controllers;

use App\Models\Feedback;
use Illuminate\Http\Request;

class FeedbackController extends Controller
{
    //

    public function index(){
        $data = Feedback::all();
        return $data;
    }

    public function store(Request $request){

        try{
            $validation = $request->validate([
                'name'=>'required',
                'email'=>'required',
                'phone'=>'required',
                'subject'=>'required',
                'message'=> 'required',
            ]);
            Feedback::create($validation);
            return response()->json(['message' => "Data inserted successfully"], 200);   
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }

    public function delete($id){
        try{
            $data = Feedback::find($id);
            $data->delete();
            return response()->json(['message' => "Data deleted successfully"], 200);   
        } catch (\Exception $e) {
            return response()->json(["error" => "Internal Server Error. Try again later", "message" => $e->getMessage()], 500);
        }
    }
}
