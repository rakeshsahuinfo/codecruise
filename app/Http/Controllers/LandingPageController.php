<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LandingPageController extends Controller
{
    public function index(){
        return view('common.index');
    }
    public function privacyPolicy(){
        return view('common.privacy-policy');
    }
    public function Webinars(){
        return view('common.webinars');
    }
    
}
