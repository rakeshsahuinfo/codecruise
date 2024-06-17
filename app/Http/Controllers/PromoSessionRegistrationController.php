<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Admin\PromoSessionController;
use App\Models\Country;
use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class PromoSessionRegistrationController extends Controller
{
    public function promoSession($promo_type, $slug)
    {
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $proses = PromoSession::where('is_active', 1)->where('slug', $slug)->first();
            $country = Country::all();
            if ($proses) {
                return view('common.promo-session', ['proses' => $proses, 'country' => $country]);
            } else {
                return redirect('/');
            }
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function registerPromoSession(Request $request)
    {
        try {
            $proses = PromoSession::find($request->input('promo_session_id'));
            if ($proses->stop_registration == 1) {
                return back()->with(['msg' => 'Sorry, Registration process is closed.', 'status' => 'danger']);
            }
            $checkreg = PromoSessionRegistration::where('email', $request->input('email'))->where('contact', "+" . $request->input('phone_code') . " " . $request->input('contact'))->where('promo_session_id', $request->input('promo_session_id'))->first();
            if ($checkreg) {
                return redirect('/')->with(['msg' => 'Registered for the Session Successfully', 'status' => 'success']);
            }

            $prosesr = new PromoSessionRegistration();
            $prosesr->reg_code = PromoSessionController::generateUniqueCode();
            $prosesr->name = $request->input('name');
            $prosesr->email = $request->input('email');
            $prosesr->contact = "+" . $request->input('phone_code') . " " . $request->input('contact');
            $prosesr->company_college_name = $request->input('company_college_name');
            $prosesr->promo_session_id = $request->input('promo_session_id'); // Assuming 'course_id' is the name of the input field for course_ids
            // Save the model to the database
            if ($proses->apply_message == 1) {
                $prosesr->message = $request->input('message');
            } else {
                $prosesr->message = "";
            }
            $prosesr->completion_certificate = 0;
            if ($proses->is_free == 1) {
                $prosesr->payment_status = "NA";
            } else {
                $prosesr->payment_status = "pending";
            }
            $prosesr->save();
            $session_date = preg_replace('/(?<=\d)(st|nd|rd|th)\b/', '<sup>$1</sup>', Carbon::parse($proses->session_date)->format('jS F, Y'));

            Self::acknowledgementMail($request->input('email'), $request->input('name'), $proses->promo_banner, $proses->name,  $session_date, $proses->session_time, $proses->is_free, $proses->promo_type, $proses->slug, $prosesr->reg_code);

            if ($proses->is_free == 1) {
                return redirect('/')->with(['msg' => 'Registered for the Session Successfully', 'status' => 'success']);
            } else {
                return redirect('/promo/promo-payment/' . $proses->promo_type . '/' . $proses->slug . '/' . base64_encode($prosesr->reg_code));
            }
        } catch (Exception $ex) {
            Log::info($ex);
            return back()->with(['msg' => 'Registeration failed try again', 'status' => 'danger']);
        }
    }

    public static function acknowledgementMail($to_email, $to_name, $banner_url, $session_name, $session_date, $session_time, $is_free, $promo_type, $slug, $reg_code)
    {
        if ($is_free == 1) {
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
                CURLOPT_POSTFIELDS => '{
                "recipients": [
                    {
                        "to": [
                            {
                                "email": "' . $to_email . '",
                                "name": "' . $to_name . '"
                            }
                        ],
                        "variables": {
                            "VAR1": "' . url('/promo_banner/' . $banner_url) . '",
                            "VAR2": "' . $to_name . '",
                            "VAR3": "' . $session_name . '",
                            "VAR4": "' . $session_date . '",
                            "VAR5": "' . $session_time . '"
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
        } else {
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
                CURLOPT_POSTFIELDS => '{
                "recipients": [
                    {
                        "to": [
                            {
                                "email": "' . $to_email . '",
                                "name": "' . $to_name . '"
                            }
                        ],
                        "variables": {
                            "VAR1": "' . url('/promo_banner/' . $banner_url) . '",
                            "VAR2": "' . $to_name . '",
                            "VAR3": "' . $session_name . '",
                            "VAR4": "' . $session_date . '",
                            "VAR5": "' . $session_time . '",
                            "VAR6": "' . url('/promo/promo-payment/' . $promo_type . '/' . $slug . '/' . base64_encode($reg_code)) . '"
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
        }
    }
}
