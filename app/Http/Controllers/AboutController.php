<?php

namespace App\Http\Controllers;

use App\Models\Country;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index(){
        return view('common.about');
    }
    public function contact(){
        $country=Country::all();
        return view('common.contact',['country'=>$country]);
    }
    public function upcomingevent(){
        return view('common.upcoming-event');
    }
}
