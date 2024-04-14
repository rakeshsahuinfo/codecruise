<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CourseType;
use Exception;
use App\Models\SEODetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class CourseTypeController extends Controller
{
    public function index()
    {
        try {
            $coursetype = CourseType::orderBy('name', 'asc')->get();
            return view('admin.course-type.index', ['coursetype' => $coursetype]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function new()
    {
        return view('admin.course-type.new');
    }

    public function create(Request $request)
    {
        try {

            $course = CourseType::create([
                'name' => $request->name,
                'slug' => $request->slug,
                'is_active' => $request->is_active
            ]);
            self::storeSEODetail($request, 'course_type', $course->id);

            return redirect('/admin/course-type')->with(["msg" => "Course Type Created", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function edit($id)
    {
        try {
            $coursetype = CourseType::find($id);
            $coursetype->seo = SEODetail::where('subject_id', $coursetype->id)->where('subject_type', 'course_type')->first();
            
            return view('admin.course-type.edit', ['coursetype' => $coursetype]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function update(Request $request)
    {
        try {
            // return $request;
            $coursetype = CourseType::findOrFail($request->course_type_id);
            $coursetype->name = $request->name;
            $coursetype->slug = $request->slug;
            $coursetype->is_active = $request->is_active;
            $coursetype->update();

           self::storeSEODetail($request, 'course_type', $coursetype->id);

            return redirect('/admin/course-type')->with(["msg" => "Course Type Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public static function storeSEODetail($request, $type, $subject_id){
        if($subject_id!=null || $subject_id!=""){
            $seo = SEODetail::where('subject_id', $subject_id)->where('subject_type', $type)->first();
            if(!$seo){
                $seo = new SEODetail;    
            }
        }else{
            $seo = new SEODetail;
        }
        $seo->subject_type = $type;
        $seo->subject_id = $subject_id;
        $seo->seo_title = $request->seo_title;
        $seo->seo_description = $request->seo_description;
        $seo->seo_keyword = $request->seo_keyword;
        $seo->is_index = $request->is_index;
        $seo->is_follow = $request->is_follow;
        $seo->canonical = $request->canonical;
        $seo->save();
    }
}
