<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Exception;
use Illuminate\Http\Request;

class PromoSessionRegistrationController extends Controller
{
    public function promoSession($slug){
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $proses=PromoSession::where('is_active',1)->where('slug',$slug)->first();
            if($proses){
                return view('common.promo-session',['proses'=>$proses]);
            }else{
                return redirect('/');
            }
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function registerPromoSession(Request $request){
        try {
            $proses = new PromoSessionRegistration();
            $proses->name = $request->input('name');
            $proses->email = $request->input('email');
            $proses->contact = $request->input('contact');
            $proses->company_college_name = $request->input('company_college_name');
            $proses->promo_session_id = $request->input('promo_session_id'); // Assuming 'course_id' is the name of the input field for course_ids
            // Save the model to the database
            $proses->save();

            return redirect('/')->with(['msg' => 'Registered for the Session successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Registeration failed try again', 'status' => 'danger']);
        }
    }
}
