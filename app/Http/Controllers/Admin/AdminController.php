<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserQuery;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class AdminController extends Controller
{
    public function adminLogin(){
        return view('admin.login');
    }

    public function signIn(Request $request){
        // return $request;
        $credentials = ['email' => $request->email, 'password' => $request->password];
        $user = User::where('email', $request->email)->first();
        if (!$user) {
            return redirect()->back()->withInput()->with(['msg' => 'Login Failed', 'status' => 'danger']);
        } else {

            if (auth()->attempt($credentials)) {
                return redirect('/admin/dashboard')->with(['msg' => 'Logged in', 'status' => 'success']);
            } else {
                return redirect()->back()->withInput()->with(['msg' => 'Login Failed', 'status' => 'danger']);
            }
        }
    }

    public function signOut(){
        auth()->logout();
        return redirect('/admin-login')->with(['msg' => 'Logged out', 'status' => 'success']);
    }

    public function dashboard(){
        try{
            $uq=UserQuery::orderBy('created_at','desc')->get();
            return view('admin.dashboard',['user_query'=>$uq]);
        }catch(Exception $ex){
            Log::info("Something went wrong");
        }
    }
}
