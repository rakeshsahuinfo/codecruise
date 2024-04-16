<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PromoSession;
use App\Models\SEODetail;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;

class PromoSessionController extends Controller
{
    public function index(){
        try {
            $proses = PromoSession::orderBy('id', 'desc')->get();
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
            $request->validate([
                'promo_banner' => 'required|image|mimes:jpeg,png,jpg,gif,jfif|max:2048',
            ]);
            $image = $request->file('promo_banner');
            $imageName = time() . '.' . $image->extension();
            // $image->storeAs('public/course_banner', $imageName);
            $image->move(public_path('promo_banner'), $imageName);

            $proses = PromoSession::create([
                'name' => $request->name,
                'slug' => $request->slug,
                'description' => $request->description,
                'promo_banner' => $imageName,
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
            $proses->name = $request->name;
            $proses->slug = $request->slug;
            $proses->description = $request->description;
            $proses->is_active = $request->is_active;
            $proses->update();

            CourseTypeController::storeSEODetail($request, 'promo_session', $proses->id);

            return redirect('/admin/promo-session')->with(["msg" => "prmo Session Updated", "status" => "success"]);
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }
}
