<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Course;
use App\Models\CourseModule;
use App\Models\CourseType;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Storage;
use App\Models\SEODetail;
use App\Http\Controllers\Admin\CourseTypeController;
use App\Models\UserQuery;
use Illuminate\Support\Facades\Validator;

class CourseController extends Controller
{
    public function index()
    {
        try {
            $course = Course::join('course_type', 'courses.course_type_id', '=', 'course_type.id')
                ->select('courses.*', 'course_type.name as course_type_name')
                ->orderBy('courses.name', 'asc')
                ->get();
            return view('admin.course.index', ['course' => $course]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function new()
    {
        $course_type = CourseType::all();
        return view('admin.course.new', ['course_type' => $course_type]);
    }

    public function create(Request $request)
    {
        try {
            // return $request;
            $rules = array(
                'course_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif,webp|max:4096', // 4MB
            );
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return back()->with(['msg' => 'Problem with uploading image', 'status' => 'danger']);
            }
            // $request->validate([
            //     'course_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif|max:2048',
            // ]);
            $image = $request->file('course_banner');
            $imageName = time() . '.' . $image->extension();
            // $image->storeAs('public/course_banner', $imageName);
            $image->move(public_path('course_banner'), $imageName);

            $course = Course::create([
                'name' => $request->name,
                'slug' => $request->slug,
                'course_type_id' => $request->course_type_id,
                'description' => $request->description,
                'course_duration' => $request->course_duration,
                'class_schedule' => $request->class_schedule,
                'delivery_mode' => $request->delivery_mode,
                'course_fee' => $request->course_fee,
                'apply_fee'=>$request->apply_fee,
                'current_discount' => $request->current_discount,
                'apply_discount' => $request->apply_discount,
                'course_banner' => $imageName,
                'is_active' => $request->is_active
            ]);

            CourseTypeController::storeSEODetail($request, 'course', $course->id);


            return redirect('/admin/course')->with(["msg" => "Course Created", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function edit($id)
    {
        try {
            $course_type = CourseType::all();
            $course = Course::find($id);
            $course->seo = SEODetail::where('subject_id', $course->id)->where('subject_type', 'course')->first();
            return view('admin.course.edit', ['course' => $course, 'course_type' => $course_type]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function update(Request $request)
    {
        try {
            // return $request;
            $course = Course::findOrFail($request->course_id);
            if ($request->hasFile('course_banner')) {
                $rules = array(
                    'course_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif,webp|max:4096', // 4MB
                );
                $validator = Validator::make($request->all(), $rules);
                if ($validator->fails()) {
                    return back()->with(['msg' => 'Problem with uploading image', 'status' => 'danger']);
                }
                // Delete previous banner if it exists
                // if ($course->course_banner) {
                //     $imagePath = 'public/course_banner/' . $course->course_banner;
                //     if (Storage::exists($imagePath)) {
                //         Storage::delete($imagePath);
                //     }
                // }
                if ($course->course_banner) {
                    $imagePath = public_path('course_banner/' . $course->course_banner);
                    if (File::exists($imagePath)) {
                        File::delete($imagePath);
                    }
                }

                // Upload and store the new image
                $image = $request->file('course_banner');
                $imageName = time() . '.' . $image->extension();
                // $image->storeAs('public/course_banner', $imageName);
                $image->move(public_path('course_banner'), $imageName);

                // Set the new image name
                $course->course_banner = $imageName;
            }

            // Update or create course data
            $course->name = $request->name;
            $course->slug = $request->slug;
            $course->course_type_id = $request->course_type_id;
            $course->description = $request->description;
            $course->course_duration = $request->course_duration;
            $course->class_schedule = $request->class_schedule;
            $course->delivery_mode = $request->delivery_mode;
            $course->course_fee = $request->course_fee;
            $course->apply_fee=$request->apply_fee;
            $course->current_discount = $request->current_discount;
            $course->apply_discount = $request->apply_discount;
            $course->is_active = $request->is_active;
            $course->update();

            CourseTypeController::storeSEODetail($request, 'course', $course->id);

            return redirect('/admin/course')->with(["msg" => "Course Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function addCourseModule($course_id)
    {
        try {
            $course_module = CourseModule::join('courses', 'course_modules.course_id', '=', 'courses.id')
                ->select('course_modules.*', 'courses.name as course_name')
                ->where('courses.id', $course_id)
                ->first();
            if ($course_module) {
                return view('admin.module.edit', ['course_module' => $course_module]);
            } else {
                $course = Course::join('course_type', 'courses.course_type_id', '=', 'course_type.id')
                    ->select('courses.*', 'course_type.name as course_type_name')
                    ->where('courses.id', $course_id)
                    ->first();
                return view('admin.module.new', ['course' => $course]);
            }
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function createCourseModule(Request $request)
    {
        try {

            $course_module = CourseModule::join('courses', 'course_modules.course_id', '=', 'courses.id')
                ->select('course_modules.*', 'courses.name as course_name')
                ->where('courses.id', $request->course_id)
                ->first();
            $cm = new CourseModule($request->all());
            $cm->save();
            return redirect('/admin/course')->with(["msg" => "Course Module Added", "status" => "success"]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function updateCourseModule(Request $request)
    {
        try {
            $cm = CourseModule::find( $request->course_module_id);
            if ($cm) {
                $cm->update($request->all());
                return redirect('/admin/course')->with(["msg" => "Course Module Updated", "status" => "success"]);
            }
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function showCourseEnrollment($id){
        try {
            $course = Course::find($id);
            $userquery = UserQuery::where('query_for','enrollment')->where('course_ids', json_encode([$id]))->orderBy('created_at', 'desc')->get();
            return view('admin.course.course-enrollment', ['course' => $course, 'userquery' => $userquery]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    public function editCourseenrollment($id)
    {
        try {
            $userquery = UserQuery::find($id);
            $course=Course::find($userquery->course_ids[0]);
            $status=["NA","Payment Pending","Partial Payment","Payment Complete","Payment Failed","Admission Confirm","Not Interested"];
            return view('admin.course.edit-course-enrollment', ['userquery' => $userquery,'course'=>$course,'status'=>$status]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    public function updateCourseEnrollment(Request $request)
    {
        try {
            $request->validate([
                'payment_proofs.*' => 'nullable|file|mimes:jpg,jpeg,png,webp,pdf,doc,docx',
            ]);
            $userquery = UserQuery::find($request->user_query_id);
            $userquery->name = $request->name;
            $userquery->email = $request->email;
            $userquery->contact = $request->contact;
            $userquery->company_college_name = $request->company_college_name;
            if ($request->hasFile('payment_proofs')) {
                $paths = [];
                foreach ($request->file('payment_proofs') as $file) {
                    $filename = uniqid().time().'_'.$file->getClientOriginalName();
                    $file->move(public_path('payment_proof'), $filename);
                    $paths[] = $filename;
                }
                $existingPaths = $userquery->payment_proofs ?? [];
                $allPaths = array_merge($existingPaths, $paths);
                $userquery->payment_proofs = $allPaths;
            }
            $userquery->admin_comment=$request->admin_comment;
            $userquery->status=$request->status;
            $userquery->update();
            return redirect('/admin/show-course-enrollment/' . $userquery->course_ids[0])->with(['msg' => 'Enrollment Detail Updated', 'status' => 'success']);
        } catch (Exception $ex) {
            Log::info($ex);
            Log::info("Something went wrong");
        }
    }

    public function deleteDocumentProof($user_query_id,$filename)
    {
        $filePath = public_path('payment_proof') . '/' . $filename;
        if (File::exists($filePath)) {
            File::delete($filePath);
            $userquery = UserQuery::where('id',$user_query_id)->where('payment_proofs', 'LIKE', '%'.$filename.'%')->first();
            if ($userquery) {
                $userquery->update([
                    'payment_proofs' => array_diff($userquery->payment_proofs, [$filename])
                ]);
            }
            return redirect()->back()->with(['msg' => 'Document Deleted', 'status' => 'success']);
        }
        return redirect()->back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
    }
}
