<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class CourseController extends Controller
{
    public function index(){
        try{
            $course=Course::orderBy('name','asc')->get();
            return view('admin.course.index',['course'=>$course]);
        }catch(Exception $ex){
            return back()->with(['msg'=>'Something went wrong','status'=>'danger']);
        }
    }

    public function new(){
        return view('admin.course.new');
    }

    public function create(Request $request){
        try{
            // return $request;
            $request->validate([
                'course_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif|max:2048',
            ]);
            $image = $request->file('course_banner');
            $imageName = time() . '.' . $image->extension();
            $image->storeAs('public/course_banner', $imageName);
    
            Course::create([
                'name' => $request->name,
                'description' => $request->description,
                'course_banner' => $imageName,
                'is_active' => $request->is_active
            ]);

            return redirect('/admin/course')->with(["msg" => "Course Created", "status" => "success"]);
        }catch(Exception $ex){
            Log::info($ex);
            return back()->with(['msg'=>'Something went wrong','status'=>'danger']);
        }
    }

    public function edit($id){
        try{
            $course=Course::find($id);
            return view('admin.course.edit',['course'=>$course]);
        }catch(Exception $ex){
            return back()->with(['msg'=>'Something went wrong','status'=>'danger']);
        }
    }

    public function update(Request $request){
        try{
            // return $request;
            $course = Course::findOrFail($request->course_id);
            if ($request->hasFile('course_banner')) {
                // Delete previous banner if it exists
                if ($course->course_banner) {
                    Storage::delete('public/course_banner/' . $course->course_banner);
                }
    
                // Upload and store the new image
                $image = $request->file('course_banner');
                $imageName = time() . '.' . $image->extension();
                $image->storeAs('public/course_banner', $imageName);
    
                // Set the new image name
                $course->course_banner = $imageName;
            }
    
            // Update or create course data
            $course->name = $request->name;
            $course->description = $request->description;
            $course->is_active = $request->is_active;
            $course->update();

            return redirect('/admin/course')->with(["msg" => "Course Updated", "status" => "success"]);
        }catch(Exception $ex){
            Log::info($ex);
            return back()->with(['msg'=>'Something went wrong','status'=>'danger']);
        }
    }
}
