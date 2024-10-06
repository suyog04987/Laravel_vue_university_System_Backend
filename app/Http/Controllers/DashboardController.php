<?php

namespace App\Http\Controllers;

use App\Models\College;
use App\Models\Courses;
use App\Models\Faculty;
use App\Models\Semester;
use App\Models\University;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    //

    public function cardData()
    {   
        $faculties = Faculty::count();
        $universities = University::count();
        $courses = Courses::count();
        $semesters = Semester::count();
        $colleges = College::count();
        $data = [
            'Colleges' => $colleges,
            'Faculties' => $faculties,
            'Universities' => $universities,
            'Courses' => $courses,
            'Semesters' => $semesters
        ];
        return response()->json($data);

    }
}
