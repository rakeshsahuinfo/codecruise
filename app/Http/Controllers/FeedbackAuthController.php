<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use App\Models\UserFeedback;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Laravel\Socialite\Facades\Socialite;

class FeedbackAuthController extends Controller
{
    public function redirectToGoogle($slug)
    {
        try {
            $ps = PromoSession::where('slug', $slug)->first();
            Session::put('promo_session_id', $ps->id);
            return Socialite::driver('google')->redirect();
        } catch (Exception $e) {
            return redirect('/');
        }
    }

    public function handleGoogleCallback()
    {
        try {
            $user = Socialite::driver('google')->user();
            $promo_session_id = Session::get('promo_session_id');
            $ps = PromoSession::find($promo_session_id);
            $psr = PromoSessionRegistration::where('promo_session_id', $promo_session_id)->where('email', $user->getEmail())->first();
            if ($psr) {
                $name = $psr->name;
                $email = $psr->email;
                $contact = $psr->contact;
                $user_type = "registered";
            } else {
                $name = $user->getName();
                $email = $user->getEmail();
                $contact = "";
                $user_type = "random";
            }
            //Log::info( $user->getEmail().'-'.$user->getName());
            return view('common.feedback-for-promo-session', ['ps' => $ps, 'name' => $name, 'email' => $email, 'contact' => $contact, 'user_type' => $user_type]);
        } catch (Exception $e) {
            return redirect('/');
        }
    }

    public function saveFeedback(Request $request){
        try{
            $ufbcheck=UserFeedback::where('email',$request->email)->where('promo_session_id',$request->promo_session_id)->first();
            if($ufbcheck){
                Session::forget('promo_session_id');
                return redirect('/')->with(['msg' => 'You Have Already Submitted Your Feedback', 'status' => 'success']);
            }
            $ufb=new UserFeedback($request->all());
            if($ufb->save()){
                Session::forget('promo_session_id');
                return redirect('/')->with(['msg' => 'Thank You! Feedback Submitted Successfully', 'status' => 'success']);
            }
        }catch (Exception $e) {
            return back()->with(['msg' => 'Registeration failed try again', 'status' => 'danger']);
        }
    }
}
