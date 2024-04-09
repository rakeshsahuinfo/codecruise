<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\CourseTechStack;
use App\Models\TechStack;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;

class TechStackController extends Controller
{
    public function index()
    {
        try {
            $techstack = TechStack::orderBy('name', 'asc')->get();
            return view('admin.tech-stack.index', ['techstack' => $techstack]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function new()
    {
        return view('admin.tech-stack.new');
    }

    public function create(Request $request)
    {
        try {
            // return $request;
            $request->validate([
                'tech_stack_logo' => 'required|image|mimes:jpeg,png,jpg,gif,jfif|max:2048',
            ]);
            $image = $request->file('tech_stack_logo');
            $imageName = time() . '.' . $image->extension();
            // $image->storeAs('public/tech_stack', $imageName);
            $image->move(public_path('tech_stack'), $imageName);

            TechStack::create([
                'name' => $request->name,
                'tech_stack_logo' => $imageName,
                'is_active' => $request->is_active
            ]);

            return redirect('/admin/tech-stack')->with(["msg" => "Tech Stack Created", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function edit($id)
    {
        try {
            $techstack = TechStack::find($id);

            return view('admin.tech-stack.edit', ['techstack' => $techstack]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function update(Request $request)
    {
        try {
            // return $request;
            $techstack = TechStack::findOrFail($request->tech_stack_id);
            if ($request->hasFile('tech_stack_logo')) {
                // Delete previous banner if it exists
                // if ($techstack->tech_stack_logo) {
                //     $imagePath = 'public/tech_stack/' . $techstack->tech_stack_logo;
                //     if (Storage::exists($imagePath)) {
                //         Storage::delete($imagePath);
                //     }
                // }
                if ($techstack->tech_stack_logo) {
                    $imagePath = public_path('tech_stack/' . $techstack->tech_stack_logo);
                    if (File::exists($imagePath)) {
                        File::delete($imagePath);
                    }
                }
                // Upload and store the new image
                $image = $request->file('tech_stack_logo');
                $imageName = time() . '.' . $image->extension();
                // $image->storeAs('public/tech_stack', $imageName);
                $image->move(public_path('tech_stack'), $imageName);

                // Set the new image name
                $techstack->tech_stack_logo = $imageName;
            }

            // Update or create course data
            $techstack->name = $request->name;
            $techstack->is_active = $request->is_active;
            $techstack->update();

            return redirect('/admin/tech-stack')->with(["msg" => "Tech Stack Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function addCourseTechStack($course_id)
    {
        try {
            $techstack = TechStack::orderBy('name', 'asc')->get();
            $course = Course::find($course_id);
            return view('admin.tech-stack.course-tech-stack', ['techstack' => $techstack, 'course' => $course]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function courseAssignTechStack(Request $request)
    {
        // Log::info($request);
        try {

            $opt = $request->opt;
            if ($opt == "add") {
                $cts = new CourseTechStack();
                $cts->course_id = $request->course_id;
                $cts->tech_stack_id = $request->tech_stack_id;
                $cts->is_active = 1;
                $cts->save();
                return ['msg' => 'success'];
            }
            if ($opt == "remove") {
                $cts = CourseTechStack::where('course_id', $request->course_id)->where('tech_stack_id', $request->tech_stack_id)->first();
                $cts->delete();
                return ['msg' => 'success'];
            }
        } catch (Exception $ex) {
            // Log::info($ex);
            return ['msg' => 'fail'];
        }
    }
}
