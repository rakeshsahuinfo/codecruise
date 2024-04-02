<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\LandingPageController;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/',[LandingPageController::class,'index'])->name('landing-page');
Route::get('/about',[AboutController::class,'index'])->name('about');
Route::get('/course/{id}',[CourseController::class,'index'])->name('course');


Route::get('/admin-login',[AdminController::class,'adminLogin'])->name('login');
Route::post('/admin-sign-in',[AdminController::class,'signIn'])->name('admin-sign-in');

Route::group(['middleware' => ['auth'], 'prefix' => 'admin'], function () {
    Route::get('/admin-sign-out',[AdminController::class,'signOut'])->name('admin-sign-out');
    Route::get('/dashboard',[AdminController::class,'dashboard'])->name('admin-dashboard');
});