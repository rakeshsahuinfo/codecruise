<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Exception;
use Illuminate\Http\Request;

class PromoSessionRegistrationController extends Controller
{
    public function promoSession($promo_type,$slug){
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
            $checkreg=PromoSessionRegistration::where('email',$request->input('email'))->where('contact',$request->input('contact'))->where('promo_session_id',$request->input('promo_session_id'))->first();
            if($checkreg){
                return redirect('/')->with(['msg' => 'Registered for the Session Successfully', 'status' => 'success']);
            }
            $proses=PromoSession::find($request->input('promo_session_id'));
            $prosesr = new PromoSessionRegistration();
            $prosesr->name = $request->input('name');
            $prosesr->email = $request->input('email');
            $prosesr->contact = $request->input('contact');
            $prosesr->company_college_name = $request->input('company_college_name');
            $prosesr->promo_session_id = $request->input('promo_session_id'); // Assuming 'course_id' is the name of the input field for course_ids
            // Save the model to the database
            if($proses->apply_message==1){
                $prosesr->message=$request->input('message');
            }else{
                $prosesr->message="";
            }
            $prosesr->save();

            return redirect('/')->with(['msg' => 'Registered for the Session Successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Registeration failed try again', 'status' => 'danger']);
        }
    }
}
