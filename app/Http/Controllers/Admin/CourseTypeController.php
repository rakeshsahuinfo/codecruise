<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\CourseType;
use Exception;
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

            CourseType::create([
                'name' => $request->name,
                'is_active' => $request->is_active
            ]);

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
            $coursetype->is_active = $request->is_active;
            $coursetype->update();

            return redirect('/admin/course-type')->with(["msg" => "Course Type Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }
}
