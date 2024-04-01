<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\LandingPageController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/',[LandingPageController::class,'index'])->name('landing-page');
Route::get('/about',[AboutController::class,'index'])->name('about');
Route::get('/course/{id}',[CourseController::class,'index'])->name('course');

