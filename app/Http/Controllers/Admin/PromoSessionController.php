<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use App\Models\SEODetail;
use App\Models\UserFeedback;
use PDF;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Validator;
use BaconQrCode\Writer;
use SimpleSoftwareIO\QrCode\Facades\QrCode;

class PromoSessionController extends Controller
{
    public function test()
    {
        $psr = PromoSessionRegistration::all();
        foreach ($psr as $pr) {
            $p = PromoSessionRegistration::find($pr->id);
            $p->reg_code = Self::generateUniqueCode();
            $p->save();
        }
        return ['updated'];
    }

    public function index()
    {
        try {
            $proses = PromoSession::orderBy('is_active', 'desc')->orderBy('id', 'asc')->get();
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
                'session_alias' => $request->session_alias,
                'about_session' => $request->about_session,
                'session_date' => $request->session_date,
                'session_time' => $request->session_time,
                'session_mode' => $request->session_mode,
                'session_venue' => $request->session_venue,
                'description' => $request->description,
                'speaker' => $request->speaker,
                'about_speaker' => $request->about_speaker,
                'promo_banner' => $imageName,
                'apply_message' => $request->apply_message,
                'stop_feedback' => $request->stop_feedback,
                'stop_registration' => $request->stop_registration,
                'co_founder' => $request->co_founder,
                'issue_date'=>$request->issue_date,
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
            $proses->session_alias = $request->session_alias;
            $proses->about_session = $request->about_session;
            $proses->session_date = $request->session_date;
            $proses->session_time = $request->session_time;
            $proses->session_mode = $request->session_mode;
            $proses->session_venue = $request->session_venue;
            $proses->description = $request->description;
            $proses->speaker = $request->speaker;
            $proses->about_speaker = $request->about_speaker;
            $proses->apply_message = $request->apply_message;
            $proses->stop_feedback = $request->stop_feedback;
            $proses->stop_registration = $request->stop_registration;
            $proses->co_founder = $request->co_founder;
            $proses->issue_date=$request->issue_date;
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

    public function editRegistrations($id)
    {
        try {
            $psr = PromoSessionRegistration::find($id);
            return view('admin.promo-session.edit-regitration', ['psr' => $psr]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    public function updateRegistrations(Request $request)
    {
        try {
            $psr = PromoSessionRegistration::find($request->promo_session_reg_id);
            $psr->name = $request->name;
            $psr->email = $request->email;
            $psr->contact = $request->contact;
            $psr->company_college_name = $request->company_college_name;
            $psr->update();
            return redirect('/admin/show-promo-session-registration/' . $psr->promo_session_id)->with(['msg' => 'Participants Detail Updated', 'status' => 'success']);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    public function showFeedback($promo_session_id)
    {
        try {
            $proses = PromoSession::find($promo_session_id);
            $prosesfb = UserFeedback::where('promo_session_id', $promo_session_id)->orderBy('created_at', 'desc')->get();
            return view('admin.promo-session.promo-session-feedback', ['proses' => $proses, 'prosesfb' => $prosesfb]);
        } catch (Exception $ex) {
            Log::info("Something went wrong");
        }
    }

    //certificate
    public function participationCertificate($id)
    {
        $psr = PromoSessionRegistration::find($id);
        $ps = PromoSession::find($psr->promo_session_id);
        if (empty($psr->reg_code)) {
            $reg_code = Self::generateUniqueCode();
            $psr->reg_code = $reg_code;
            $psr->save();
        }

        $qrCodeImagePath = public_path('qr_code/' . $psr->reg_code . '.svg');
        $svgFile = public_path('qr_code/' . $psr->reg_code . '.svg');

        $qrCodeText = QrCode::size(80)->generate(url('/verify-participation-certificate/' . base64_encode($psr->reg_code)));

        // Check if the SVG file already exists
        if (file_exists($qrCodeImagePath)) {
            unlink($qrCodeImagePath);
        }
        file_put_contents($svgFile, $qrCodeText);

        $pdf = PDF::loadView('certificate.participation', ['psr' => $psr, 'ps' => $ps])->setPaper('a4', 'landscape');
        return Response::make($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' => 'inline; filename=CodeCruise(' . $psr->name . ').pdf'
        ]);
    }

    public function completionCertificate($id)
    {
        $psr = PromoSessionRegistration::find($id);
        $ps = PromoSession::find($psr->promo_session_id);
        if (empty($psr->reg_code)) {
            $reg_code = Self::generateUniqueCode();
            $psr->reg_code = $reg_code;
            $psr->save();
        }

        $qrCodeImagePath = public_path('qr_code/' . $psr->reg_code . '.svg');
        $svgFile = public_path('qr_code/' . $psr->reg_code . '.svg');

        $qrCodeText = QrCode::size(80)->generate(url('/verify-completion-certificate/' . base64_encode($psr->reg_code)));

        // Check if the SVG file already exists
        if (file_exists($qrCodeImagePath)) {
            unlink($qrCodeImagePath);
        }
        file_put_contents($svgFile, $qrCodeText);

        $pdf = PDF::loadView('certificate.completion',  ['psr' => $psr, 'ps' => $ps])->setPaper('a4', 'landscape');
        return Response::make($pdf->output(), 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' => 'inline; filename=CodeCruise(' . $psr->name . ').pdf'
        ]);
    }

    // public function verifyParticipationCertificate($id)
    // {
    //     $psr = PromoSessionRegistration::find(base64_decode($id));
    //     $ps = PromoSession::find($psr->promo_session_id);
    //     return view('common.participation-certificate', ['psr' => $psr, 'ps' => $ps]);
    // }

    // public function verifyCompletionCertificate($id)
    // {
    //     $psr = PromoSessionRegistration::find(base64_decode($id));
    //     $ps = PromoSession::find($psr->promo_session_id);
    //     return view('common.completion-certificate', ['psr' => $psr, 'ps' => $ps]);
    // }

    public function verifyParticipationCertificate($code)
    {
        try {
            $reg_code = base64_decode($code);
            $psr = PromoSessionRegistration::where('reg_code', $reg_code)->first();
            $ps = PromoSession::find($psr->promo_session_id);
            if (empty($psr->reg_code)) {
                $reg_code = Self::generateUniqueCode();
                $psr->reg_code = $reg_code;
                $psr->save();
            }

            $qrCodeImagePath = public_path('qr_code/' . $psr->reg_code . '.svg');
            $svgFile = public_path('qr_code/' . $psr->reg_code . '.svg');

            $qrCodeText = QrCode::size(80)->generate(url('/verify-participation-certificate/' . base64_encode($psr->reg_code)));

            // Check if the SVG file already exists
            if (file_exists($qrCodeImagePath)) {
                unlink($qrCodeImagePath);
            }
            file_put_contents($svgFile, $qrCodeText);

            $pdf = PDF::loadView('certificate.verify-participation', ['psr' => $psr, 'ps' => $ps])->setPaper('a4', 'landscape');
            return Response::make($pdf->output(), 200, [
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'inline; filename=CodeCruise(' . $psr->name . ').pdf'
            ]);
        } catch (Exception $ex) {
            return redirect('/');
        }
    }

    public function verifyCompletionCertificate($code)
    {
        try {
            $reg_code = base64_decode($code);
            $psr = PromoSessionRegistration::where('reg_code', $reg_code)->first();
            $ps = PromoSession::find($psr->promo_session_id);
            if (empty($psr->reg_code)) {
                $reg_code = Self::generateUniqueCode();
                $psr->reg_code = $reg_code;
                $psr->save();
            }

            $qrCodeImagePath = public_path('qr_code/' . $psr->reg_code . '.svg');
            $svgFile = public_path('qr_code/' . $psr->reg_code . '.svg');

            $qrCodeText = QrCode::size(80)->generate(url('/verify-completion-certificate/' . base64_encode($psr->reg_code)));

            // Check if the SVG file already exists
            if (file_exists($qrCodeImagePath)) {
                unlink($qrCodeImagePath);
            }
            file_put_contents($svgFile, $qrCodeText);

            $pdf = PDF::loadView('certificate.verify-completion', ['psr' => $psr, 'ps' => $ps])->setPaper('a4', 'landscape');
            return Response::make($pdf->output(), 200, [
                'Content-Type' => 'application/pdf',
                'Content-Disposition' => 'inline; filename=CodeCruise(' . $psr->name . ').pdf'
            ]);
        } catch (Exception $ex) {
            return redirect('/');
        }
    }

    public static function generateUniqueCode()
    {
        $code = "CC" . strtoupper(substr(sha1(microtime()), 0, 14));
        // Check if the generated SKU already exists in the database
        while (PromoSessionRegistration::where('reg_code', $code)->exists()) {
            $code = "CC" . strtoupper(substr(sha1(microtime()), 0, 14));
        }
        return $code;
    }
}
