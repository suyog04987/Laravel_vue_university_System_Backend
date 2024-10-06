<?php

namespace App\Http\Controllers;

use App\Models\Courses;
use App\Models\Faculty;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function getCourses(){
        // Get all courses with only the course name and its faculty name
        // $data['courseData'] = Courses::with(['faculty' => function($query){
        //     $query->select('id', 'name');
        // }])->get(['id', 'name', 'faculties_id']);

        $data['courseData'] = Courses::get(['id', 'name','faculties_id',]);
    
        return $data;
    }

    public function getFaculty(){
        $facultyData = Faculty::with('courses')->get(['id', 'name']);
        $data['facultyData'] = $facultyData->map(function ($faculty) {
            if ($faculty->courses->isNotEmpty()) {
                $faculty->course_names = $faculty->courses->pluck('name')->join(', ');
            }
            return $faculty;
        });
    
        return $data;
    }



    public function postRecommendation(Request $request){
        $courses = $request->input('course');

        $facultyCount = [];
        foreach ($courses as $course) {
            $faculties_id = $course['faculties_id'];
            if(!isset($facultyCount[$faculties_id])){
                $facultyCount[$faculties_id] = 0;

            }
            $facultyCount[$faculties_id]++;
        }
        arsort($facultyCount);
        
        $sortedFacultyNames = [];
        foreach($facultyCount as $faculties_id => $count){
            $faculty = Faculty::find($faculties_id);
            if($faculty){
                $sortedFacultyNames[] = $faculty->name;
            }
        }
        return $sortedFacultyNames;
    }
}
