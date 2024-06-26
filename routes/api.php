<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\CollegeController;
use App\Http\Controllers\CourcesController;
use App\Http\Controllers\FacultyController;
use App\Http\Controllers\MaterialController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\SemesterController;
use App\Http\Controllers\TestimonialsController;
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


//testimonial
Route::get('/testimonial', [TestimonialsController::class, 'index']);
Route::post('/testimonial/add', [TestimonialsController::class, 'store']);
Route::post('/testimonialUpdate/{id}',[TestimonialsController::class,'update']);
Route::delete('/testimonialDelete/{id}',[TestimonialsController::class,'delete']);

//material

Route::get('/material', [MaterialController::class, 'index']);
Route::post('/material/add', [MaterialController::class, 'store']);
Route::post('/materialUpdate/{id}',[MaterialController::class,'update']);
Route::delete('/materialDelete/{id}',[MaterialController::class,'delete']);


//college
Route::get('/college', [CollegeController::class, 'index']);
Route::get('/paginatedCollegeData', [CollegeController::class, 'paginateData']);
Route::post('/college/add', [CollegeController::class, 'store']);
Route::post('/collegeUpdate/{id}',[CollegeController::class,'update']);
Route::delete('/collegeDelete/{id}',[CollegeController::class,'delete']);
