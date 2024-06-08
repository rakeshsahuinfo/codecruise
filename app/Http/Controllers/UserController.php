<?php

namespace App\Http\Controllers;

use App\Models\User;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Log;
use Laravel\Socialite\Facades\Socialite;

class UserController extends Controller
{
    public function signIn()
    {
        return view('common.sign-in');
    }

    public function redirect()
    {
        return Socialite::driver('google_login')->redirect();
    }

    public function callback()
    {
        try {

            $user = Socialite::driver('google_login')->user();
            // Log::info($user->user['name']);
            // Log::info($user->user);
            $u = User::where('email', $user->email)->first();
            if ($u) {
                Auth::login($u);
                return redirect('/user/user-desk')->with(['msg' => 'Logged in', 'status' => 'success']);
            } else {
                $new_user = new User();
                $new_user->email = $user->email;
                $new_user->password = "";
                $new_user->name = $user->name;
                $new_user->role = "open";
                if ($new_user->save()) {
                    Auth::login($new_user);
                    return redirect('/user/user-desk')->with(['msg' => 'Logged in', 'status' => 'success']);
                } else {
                    return back()->with(['msg' => 'Login Failed', 'status' => 'error']);
                }
                return back()->with(['msg' => 'Login Failed', 'status' => 'error']);
            }
        } catch (Exception $e) {
            Log::info($e->getMessage());
            return redirect('/')->with(['msg' => 'Something went wrong, try again', 'status' => 'error']);
        }
    }

    public function signOut(Request $request)
    {
        Auth::logout();
        return redirect('/')->with(['msg' => 'Logged out', 'status' => 'success']);
    }

    public function userDesk()
    {
        return view('common.home.user-desk');
    }
}
