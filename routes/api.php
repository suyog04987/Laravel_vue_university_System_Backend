<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CourcesController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SemesterController;
use App\Http\Controllers\UniversityController;
use App\Models\Faculty;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;



Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


// admin login 

Route::post('/login', [AuthController::class, 'login']);



// end 


Route::get('/university', [UniversityController::class, 'index']);
Route::post('/universityUpdate/{id}',[UniversityController::class, 'update']);
Route::delete('/universityDelete/{id}',[UniversityController::class, 'delete']);

Route::get('/university/{id}',[UniversityController::class, 'facultyData']);

Route::post('/university/add', [UniversityController::class, 'store']);
Route::get('/all-courses/{id}', [UniversityController::class, "allCourses"]);



Route::get('/faculty', [FacultyController::class, 'index']);
Route::get('/faculty/{id}', [FacultyController::class, 'semesterData']);

Route::post('/facultyUpdate/{id}',[FacultyController::class, 'update']);
Route::delete('/facultyDelete/{id}', [FacultyController::class, 'delete']);

Route::post('/faculty/add', [FacultyController::class, 'store']);



Route::get('/semester', [SemesterController::class, 'index']);
Route::post('/semesterUpdate/{id}', [SemesterController::class, 'update']);
Route::delete('/semesterDelete/{id}', [SemesterController::class, 'delete']);
Route::post('/semester/add', [SemesterController::class, 'store']);

// Route::get('/semester',[SemesterController::class,'index']);

Route::post('/courses/add', [CourcesController::class, 'store']);
Route::post('/coursesUpdate/{id}',[CourcesController::class,'update']);
Route::get('/courses/{id}', [CourcesController::class, 'courseData']);
Route::delete('/courseDelete/{id}',[CourcesController::class,'delete']);