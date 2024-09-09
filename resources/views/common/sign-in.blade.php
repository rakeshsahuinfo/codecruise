@extends('layouts.common.master')
@section('title','Sign-In')
@section('headasset')
<style>
    /* Style to make the iframe act as the background */
    .iframe-background {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%; /* Keep the full width as before */
        height: 1200px; /* Adjust height to match original iframe height */
        opacity: 0.3; /* Reducing transparency of the iframe */
        z-index: 1; /* Lower z-index to make it appear in the background */
        pointer-events: none; /* Disabling interaction */
    }

    /* Style to keep the form on top */
    .login-content {
        position: relative;
        z-index: 2; /* Higher z-index to appear above the iframe */
        background-color: #f0f9fa; /* Solid white background */
        padding: 15px;
        border-radius: 8px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1); /* Optional shadow for better separation */
    }

    /* Ensure the container has position relative to contain the absolute iframe */
    #contact-sec {
        position: relative;
        min-height: 100vh; /* Ensure the section height accommodates the iframe */
    }
</style>
@stop
@section('content')
<!--[if lte IE 9]>
    	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
  	<![endif]-->

<!--********************************
   		Code Start From Here 
	******************************** -->

<!--==============================
		Preloader
	==============================-->
@include('common.pre-loader')

<!--==============================
		Sidemenu
	============================== -->
@include('common.side-menu')

<!--==============================
		Mobile Menu
	============================== -->
@include('common.mobile-menu')

<!--==============================
		Header Area
	==============================-->
<header class="th-header header-layout1">
    @include('common.top-bar')
    @include('common.nav')
</header>

<!--==============================
    Contact Area  
    ==============================-->
<div class="space" id="contact-sec">
    <div class="container mt-4">
        <div class="login-wrapper text-center">
            <div class="login-content">
                <!-- Sign-in Form -->
                <form method="post" action="javascript:void(0)">
                    <div>
                        <h6>PLEASE SIGN IN TO VIEW THE LATEST UPDATES & JOB POSTINGS</h6>
                        <a  class="btn btn-google w100 my-4" href="{{ url('login/google') }}">
                            <img src="{{asset('/common/assets/img/google-signin.png')}}" alt="">
                        </a>
                    </div>
                </form>
                <!-- End of Sign-in Form -->
            </div>
        </div>
    </div>

    <!-- Job Iframe (in the background) -->
    <iframe src="https://optimhire.com/d/Search-job-iframe?ref_code=code-cruise&skill=&positions=&dark_color=007072&light_color=0F2239" class="iframe-background" width="100%" height="1200"></iframe>
</div>

<!--==============================
	Footer Area
	==============================-->
@include('common.footer')

<!--********************************
			Code End  Here 
	******************************** -->

<!-- Scroll To Top -->
<div class="scroll-top">
    <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
        <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98"
            style="transition: stroke-dashoffset 10ms linear 0s; stroke-dasharray: 307.919, 307.919; stroke-dashoffset: 307.919;">
        </path>
    </svg>
</div>
<!-- End #main -->
@stop
@section('jsscript')
@include('layouts.common.jsscript')
@stop
