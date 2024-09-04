<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class JobController extends Controller
{
    public function jobs()
    {
        if(Auth::user()){
            return redirect('/user/user-desk');
        }else{  
            return view('common.sign-in');
        }
    }
}
