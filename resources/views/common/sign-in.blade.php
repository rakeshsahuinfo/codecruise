@extends('layouts.common.master')
@section('title','Sign-In')
@section('headasset')
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
	Hero Area
	==============================-->


<!--==============================
    Contact Area  
    ==============================-->
<div class="space" id="contact-sec">
    <div class="container">
        <div class="login-wrapper text-center card">
            <div class="login-content">
              <div class="login-logo"><img src="{{asset('common/assets/img/logo-white.png')}}" alt="" class="img-fluid" style="width: 200px;height: auto;"></div>
              <div class="login-form">
                <form method="post" action="javascript:void(0)">
                  <div>
                    <a  class="btn btn-google w100" href="{{ url('login/google') }}"><img src="{{asset('/common/assets/img/google-signin.png')}}" alt=""></a>
                  </div>
                </form>
              </div>
            </div>
        </div>
    </div>
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
<!-- ======= Footer ======= -->
<!-- End Footer -->
@stop
@section('jsscript')
@include('layouts.common.jsscript')
@stop