<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Carbon\Carbon;
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
            $session_date=preg_replace('/(?<=\d)(st|nd|rd|th)\b/', '<sup>$1</sup>', Carbon::parse($proses->session_date)->format('jS F, Y'));
            Self::acknowledgementMail($request->input('email'), $request->input('name'), $proses->promo_banner, $proses->name,  $session_date, $proses->session_time);
            return redirect('/')->with(['msg' => 'Registered for the Session Successfully', 'status' => 'success']);
        } catch (Exception $ex) {
            return back()->with(['msg' => 'Registeration failed try again', 'status' => 'danger']);
        }
    }

    public static function acknowledgementMail($to_email, $to_name, $banner_url, $session_name, $session_date, $session_time){
        $curl = curl_init();
        curl_setopt_array($curl, array(
          CURLOPT_URL => 'https://control.msg91.com/api/v5/email/send',
          CURLOPT_RETURNTRANSFER => true,
          CURLOPT_ENCODING => '',
          CURLOPT_MAXREDIRS => 10,
          CURLOPT_TIMEOUT => 0,
          CURLOPT_FOLLOWLOCATION => true,
          CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
          CURLOPT_CUSTOMREQUEST => 'POST',
          CURLOPT_POSTFIELDS =>'{
            "recipients": [
                {
                    "to": [
                        {
                            "email": "'.$to_email.'",
                            "name": "'.$to_name.'"
                        }
                    ],
                    "variables": {
                        "VAR1": "'.url('/promo_banner/'.$banner_url).'",
                        "VAR2": "'.$to_name.'",
                        "VAR3": "'.$session_name.'",
                        "VAR4": "'.$session_date.'",
                        "VAR5": "'.$session_time.'"
                    }
                }
            ],
            "from": {
                "email": "no-reply@codecruise.in"
            },
            "domain": "mail.codecruise.in",
            "template_id": "thank_u_for_registration"
        }',
          CURLOPT_HTTPHEADER => array(
            'Content-Type: application/json',
            'authkey: 420001AsQ1t1kED661904fdP1',
            'Cookie: PHPSESSID=oevvq2s57hii1j3qtff8idrn25'
          ),
        ));
        $response = curl_exec($curl);
        curl_close($curl);
        // echo $response;
    }
}
