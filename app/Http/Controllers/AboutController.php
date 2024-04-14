<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index(){
        return view('common.about');
    }
    public function contact(){
        return view('common.contact');
    }
}
