<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use App\Models\SEODetail;
use App\Models\UserFeedback;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Validator;

class PromoSessionController extends Controller
{
    public function index()
    {
        try {
            $proses = PromoSession::orderBy('is_active','desc')->orderBy('id', 'desc')->get();
            return view('admin.promo-session.index', ['proses' => $proses]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function new()
    {
        return view('admin.promo-session.new');
    }

    public function create(Request $request)
    {
        try {
            // return $request;
            $rules = array(
                'promo_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif,webp|max:4096', // 4MB
            );
            $validator = Validator::make($request->all(), $rules);
            if ($validator->fails()) {
                return back()->with(['msg' => 'Problem with uploading image', 'status' => 'danger']);
            }
            // $request->validate([
            //     'promo_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif|max:2048',
            // ]);
            $image = $request->file('promo_banner');
            $imageName = time() . '.' . $image->extension();
            // $image->storeAs('public/course_banner', $imageName);
            $image->move(public_path('promo_banner'), $imageName);

            $proses = PromoSession::create([
                'promo_type' => $request->promo_type,
                'name' => $request->name,
                'slug' => $request->slug,
                'description' => $request->description,
                'speaker'=>$request->speaker,
                'about_speaker'=>$request->about_speaker,
                'promo_banner' => $imageName,
                'apply_message' => $request->apply_message,
                'is_active' => $request->is_active
            ]);

            CourseTypeController::storeSEODetail($request, 'promo_session', $proses->id);


            return redirect('/admin/promo-session')->with(["msg" => "Promo Session Created", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function edit($id)
    {
        try {

            $proses = PromoSession::find($id);
            $proses->seo = SEODetail::where('subject_id', $proses->id)->where('subject_type', 'promo_session')->first();
            return view('admin.promo-session.edit', ['proses' => $proses]);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function update(Request $request)
    {
        try {
            // return $request;
            $proses = PromoSession::findOrFail($request->promo_session_id);
            if ($request->hasFile('promo_banner')) {
                $rules = array(
                    'promo_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif,webp|max:4096', // 4MB
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
                if ($proses->promo_banner) {
                    $imagePath = public_path('promo_banner/' . $proses->promo_banner);
                    if (File::exists($imagePath)) {
                        File::delete($imagePath);
                    }
                }

                // Upload and store the new image
                $image = $request->file('promo_banner');
                $imageName = time() . '.' . $image->extension();
                // $image->storeAs('public/course_banner', $imageName);
                $image->move(public_path('promo_banner'), $imageName);

                // Set the new image name
                $proses->promo_banner = $imageName;
            }

            // Update or create course data
            $proses->promo_type = $request->promo_type;
            $proses->name = $request->name;
            $proses->slug = $request->slug;
            $proses->description = $request->description;
            $proses->speaker=$request->speaker;
            $proses->about_speaker=$request->about_speaker;
            $proses->apply_message = $request->apply_message;
            $proses->is_active = $request->is_active;
            $proses->update();

            CourseTypeController::storeSEODetail($request, 'promo_session', $proses->id);

            return redirect('/admin/promo-session')->with(["msg" => "Promo Session Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }



    public function showRegistrations($promo_session_id)
    {
        try {
            $proses = PromoSession::find($promo_session_id);
            $prosesreg = PromoSessionRegistration::where('promo_session_id', $promo_session_id)->orderBy('created_at', 'desc')->get();
            return view('admin.promo-session.promo-session-registration', ['proses' => $proses, 'prosesreg' => $prosesreg]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    public function showFeedback($promo_session_id){
        try {
            $proses = PromoSession::find($promo_session_id);
            $prosesfb = UserFeedback::where('promo_session_id', $promo_session_id)->orderBy('created_at', 'desc')->get();
            return view('admin.promo-session.promo-session-feedback', ['proses' => $proses, 'prosesfb' => $prosesfb]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }
}
