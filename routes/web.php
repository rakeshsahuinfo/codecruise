<?php

use App\Http\Controllers\AboutController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CourseController as AdminCourseController;
use App\Http\Controllers\Admin\CourseTypeController as AdminCourseTypeController;
use App\Http\Controllers\Admin\PromoSessionController as AdminPromoSessionController;
use App\Http\Controllers\Admin\TechStackController as AdminTechStackController;
use App\Http\Controllers\CourseController;
use App\Http\Controllers\FeedbackAuthController;
use App\Http\Controllers\LandingPageController;
use App\Http\Controllers\PromoSessionRegistrationController;
use App\Http\Controllers\QueryController;
use App\Http\Middleware\PreventBackHistory;
use Illuminate\Support\Facades\Route;

// Route::get('/', function () {
//     return view('index');
// });

Route::get('/',[LandingPageController::class,'index'])->name('landing-page');
Route::get('/contact',[AboutController::class,'contact'])->name('contact');
Route::get('/about',[AboutController::class,'index'])->name('about');
Route::get('/upcoming-event',[AboutController::class, 'upcomingEvent'])->name('upcoming-event');
Route::get('/course/{id}',[CourseController::class,'index'])->name('course');
Route::get('/course-by-type/{course_type_id}',[CourseController::class,'courseByType'])->name('course-by-type');
Route::get('/course-catalog',[CourseController::class,'courseCatalog'])->name('course-catalog');

Route::get('/download-course-info/{id}',[CourseController::class,'downloadCourseinfo'])->name('download-course-info');
Route::get('/search-course', [CourseController::class,'searchCourse'])->name('search-course');
Route::post('/save-query',[QueryController::class,'saveQuery'])->name('save-query');
Route::get('/enroll-course/{course_id}',[QueryController::class,'enrollCourse'])->name('enroll-course');
Route::get('promo/{promo_type}/{slug}',[PromoSessionRegistrationController::class,'promoSession'])->name('promo-session');
Route::post('/register-promo-session',[PromoSessionRegistrationController::class,'registerPromoSession'])->name('register-promo-session');
Route::get('/privacy-policy',[LandingPageController::class,'privacyPolicy'])->name('privacy-policy');

Route::get('/webinars',[LandingPageController::class,'Webinars'])->name('webinars');

//Feedback
Route::get('/feedback/{slug}', [FeedbackAuthController::class, 'redirectToGoogle']);
Route::get('/feedback/auth/google/callback', [FeedbackAuthController::class, 'handleGoogleCallback']);
Route::post('/feedback/save-feedback', [FeedbackAuthController::class, 'saveFeedback'])->name('save-feedback');

Route::get('/admin-login',[AdminController::class,'adminLogin'])->name('login');
Route::post('/admin-sign-in',[AdminController::class,'signIn'])->name('admin-sign-in');

//Certificate
Route::get('/verify-participation-certificate/{code}',[AdminPromoSessionController::class,'verifyParticipationCertificate'])->name('verify-participation-certificate');
Route::get('/verify-completion-certificate/{code}',[AdminPromoSessionController::class,'verifyCompletionCertificate'])->name('verify-completion-certificate');

Route::group(['middleware' => ['auth', PreventBackHistory::class], 'prefix' => 'admin'], function () {
    Route::get('/admin-sign-out',[AdminController::class,'signOut'])->name('admin-sign-out');
    Route::get('/dashboard',[AdminController::class,'dashboard'])->name('admin-dashboard');
    Route::get('/course-type',[AdminCourseTypeController::class,'index'])->name('admin-course-type');
    Route::get('/new-course-type',[AdminCourseTypeController::class,'new'])->name('new-course-type');
    Route::post('/create-course-type',[AdminCourseTypeController::class,'create'])->name('create-course-type');
    Route::get('/edit-course-type/{id}',[AdminCourseTypeController::class,'edit'])->name('edit-course-type');
    Route::post('/update-course-type',[AdminCourseTypeController::class,'update'])->name('update-course-type');
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

    //Promo Session
    Route::get('/promo-session',[AdminPromoSessionController::class,'index'])->name('admin-promo-session');
    Route::get('/new-promo-session',[AdminPromoSessionController::class,'new'])->name('new-promo-session');
    Route::post('/create-promo-session',[AdminPromoSessionController::class,'create'])->name('create-promo-session');
    Route::get('/edit-promo-session/{id}',[AdminPromoSessionController::class,'edit'])->name('edit-promo-session');
    Route::post('/update-promo-session',[AdminPromoSessionController::class,'update'])->name('update-promo-session');
    Route::get('/show-promo-session/{id}',[AdminPromoSessionController::class,'index'])->name('show-promo-session');

    Route::get('/show-promo-session-registration/{id}',[AdminPromoSessionController::class,'showRegistrations'])->name('show-promo-session-registration');
    Route::get('/edit-promo-session-registration/{id}', [AdminPromoSessionController::class, 'editRegistrations'])->name('edit-promo-session-registration');
    Route::post('/update-promo-session-registration', [AdminPromoSessionController::class, 'updateRegistrations'])->name('update-promo-session-registration');
    Route::get('/show-promo-session-feedback/{id}', [AdminPromoSessionController::class, 'showFeedback'])->name('show-promo-session-feedback');
    
    Route::get('/download-reg-candidate', [AdminController::class, 'downloadRegCandidate'])->name('download-reg-candidate');
    Route::get('/download-inquiry-candidate', [AdminController::class, 'downloadInquiryCandidate'])->name('download-inquiry-candidate');
    Route::get('/download-promo-candidate/{id}', [AdminController::class, 'downloadPromoCandidate'])->name('download-promo-candidate');
    
    //Certificate
    Route::get('/participation-certificate/{id}',[AdminPromoSessionController::class,'participationCertificate'])->name('participation-certificate');
    Route::get('/completion-certificate/{id}',[AdminPromoSessionController::class,'completionCertificate'])->name('completion-certificate');
    Route::post('/issue-completion-certificate',[AdminPromoSessionController::class,'issueCompletionCertificate'])->name('issue-completion-certificate');

    Route::get('/homepage', [])->name('homepage');
});