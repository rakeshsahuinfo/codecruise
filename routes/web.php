<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CourseController as AdminCourseController;
use App\Http\Controllers\Admin\TechStackController as AdminTechStackController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\LandingPageController;
use App\Http\Controllers\QueryController;
use App\Http\Middleware\PreventBackHistory;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/',[LandingPageController::class,'index'])->name('landing-page');
Route::get('/about',[AboutController::class,'index'])->name('about');
Route::get('/course/{id}',[CourseController::class,'index'])->name('course');
Route::post('/save-query',[QueryController::class,'saveQuery'])->name('save-query');
Route::get('/enroll-course/{course_id}',[QueryController::class,'enrollCourse'])->name('enroll-course');

Route::get('/admin-login',[AdminController::class,'adminLogin'])->name('login');
Route::post('/admin-sign-in',[AdminController::class,'signIn'])->name('admin-sign-in');

Route::group(['middleware' => ['auth', PreventBackHistory::class], 'prefix' => 'admin'], function () {
    Route::get('/admin-sign-out',[AdminController::class,'signOut'])->name('admin-sign-out');
    Route::get('/dashboard',[AdminController::class,'dashboard'])->name('admin-dashboard');

    Route::get('/course',[AdminCourseController::class,'index'])->name('admin-course');
    Route::get('/new-course',[AdminCourseController::class,'new'])->name('new-course');
    Route::post('/create-course',[AdminCourseController::class,'create'])->name('create-course');
    Route::get('/edit-course/{id}',[AdminCourseController::class,'edit'])->name('edit-course');
    Route::post('/update-course',[AdminCourseController::class,'update'])->name('update-course');
    Route::get('/show-course/{id}',[AdminCourseController::class,'index'])->name('show-course');

    Route::get('/tech-stack',[AdminTechStackController::class,'index'])->name('admin-tech-stack');
    Route::get('/new-tech-stack',[AdminTechStackController::class,'new'])->name('new-tech-stack');
    Route::post('/create-tech-stack',[AdminTechStackController::class,'create'])->name('create-tech-stack');
    Route::get('/edit-tech-stack/{id}',[AdminTechStackController::class,'edit'])->name('edit-tech-stack');
    Route::post('/update-tech-stack',[AdminTechStackController::class,'update'])->name('update-tech-stack');
    Route::get('/show-tech-stack/{id}',[AdminCourseController::class,'index'])->name('show-tech-stack');

    Route::get('/add-course-module/{course_id}',[AdminCourseController::class,'addCourseModule'])->name('add-course-module');
    Route::post('/create-course-module',[AdminCourseController::class,'createCourseModule'])->name('create-course-module');
    Route::post('/update-course-module',[AdminCourseController::class,'updateCourseModule'])->name('update-course-module');
    
    Route::get('/add-course-tech-stack/{course_id}',[AdminTechStackController::class,'addCourseTechStack'])->name('add-course-tech-stack');
    Route::post('/admin-course-assign-tech-stack',[AdminTechStackController::class,'courseAssignTechStack'])->name('admin-course-assign-tech-stack');
});