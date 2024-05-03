<?php

namespace App\Http\Controllers;

use App\Models\PromoSession;
use App\Models\PromoSessionRegistration;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Session;
use Laravel\Socialite\Facades\Socialite;

class FeedbackAuthController extends Controller
{
    public function redirectToGoogle($slug)
    {
        $ps = PromoSession::where('slug', $slug)->first();
        Session::put('promo_session_id', $ps->id);
        return Socialite::driver('google')->redirect();
    }

    public function handleGoogleCallback()
    {
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
    }
}
