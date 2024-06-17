<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Carbon\Carbon;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Razorpay\Api\Api;
use Razorpay\Api\Errors\SignatureVerificationError;

class PaymentController extends Controller
{
    public function showPromoPaymentForm($promo_type, $slug, $reg_code)
    {
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $proses = PromoSession::where('is_active', 1)->where('slug', $slug)->first();
            $prosesr = PromoSessionRegistration::where('reg_code', base64_decode($reg_code))->first();
            if ($prosesr->payment_status == "complete") {
                return redirect('/')->with(['msg' => 'Your payment is complete', 'status' => 'success']);
            }
            if ($proses) {
                return view('common.payment.promo-payment-form', ['proses' => $proses, 'prosesr' => $prosesr]);
            } else {
                return redirect('/');
            }
        } catch (Exception $ex) {
            return redirect('/')->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function processPromoPayment(Request $request)
    {
        try {
            // $courseinfo=Course::find(base64_decode($course_id));
            $proses = PromoSession::find($request->promo_session_id);
            $prosesr = PromoSessionRegistration::where('reg_code', $request->reg_code)->first();
            $api = new Api(env('RAZORPAY_KEY'), env('RAZORPAY_SECRET'));

            $order = $api->order->create([
                'receipt' => uniqid(),
                'amount' => $request->amount * 100, // amount in paise
                'currency' => 'INR'
            ]);

            if ($proses) {
                return view('common.payment.process-promo-payment', ['proses' => $proses, 'prosesr' => $prosesr, 'order_id' => $order->id, 'amount' => $request->amount, 'razorpay_key' => env('RAZORPAY_KEY'), 'name' => $request->name, 'email' => $request->email, 'contact' => $request->contact]);
            } else {
                return redirect('/');
            }
        } catch (Exception $ex) {
            Log::info($ex);
            return redirect('/')->with(['msg' => 'Something went wrong', 'status' => 'danger']);
        }
    }

    public function promoPaymentSuccess(Request $request)
    {
        $input = $request->all();

        $api = new Api(env('RAZORPAY_KEY'), env('RAZORPAY_SECRET'));

        try {
            $attributes = [
                'razorpay_order_id' => $input['razorpay_order_id'],
                'razorpay_payment_id' => $input['razorpay_payment_id'],
                'razorpay_signature' => $input['razorpay_signature']
            ];

            $api->utility->verifyPaymentSignature($attributes);

            // Payment signature is valid, process the payment
            // Update order status, save transaction details to the database, etc.
            $proses = PromoSession::find($input['promo_session_id']);
            $prosesr = PromoSessionRegistration::find($input['promo_session_reg_id']);
            $prosesr->razorpay_order_id = $input['razorpay_order_id'];
            $prosesr->razorpay_payment_id = $input['razorpay_payment_id'];
            $prosesr->payment_amount = $input['payment_amount'];
            $prosesr->payment_status = "complete";
            $prosesr->save();

            $session_date = preg_replace('/(?<=\d)(st|nd|rd|th)\b/', '<sup>$1</sup>', Carbon::parse($proses->session_date)->format('jS F, Y'));

            Self::acknowledgementMail($request->input('email'), $request->input('name'), $proses->promo_banner, $proses->name,  $session_date, $proses->session_time, $input['razorpay_order_id'], $input['razorpay_payment_id'], $input['payment_amount']);
            
            return response()->json(['success' => true]);
        } catch (SignatureVerificationError $e) {
            // Payment signature is invalid, handle the error
            return response()->json(['success' => false, 'error' => $e->getMessage()]);
        }
    }

    public function promoPaymentSuccessMessage()
    {
        return redirect('/')->with(['msg' => 'Payment Successfull', 'status' => 'success']);
    }

    public static function acknowledgementMail($to_email, $to_name, $banner_url, $session_name, $session_date, $session_time, $razorpay_order_id, $razorpay_payment_id, $payment_amount)
    {
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
                            "VAR6": "' . $razorpay_order_id . '",
                            "VAR7": "' . $razorpay_payment_id . '",
                            "VAR8": "' . $payment_amount . '"
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
