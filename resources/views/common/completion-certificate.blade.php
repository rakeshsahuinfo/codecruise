@extends('layouts.common.master')
@section('title','Certificate')
@section('headasset')
<style>
    .error {
        padding-left: 5px;
        padding-top: 5px;
        color: teal;
    }
</style>
<style>
    .certificate {
        margin: -80px auto;
        width: 10.8in;
        /* Landscape */
        height: 7.2in;
        /* Landscape */
        background-image: url("{{asset('/certificate/common.jpeg')}}");
        background-size: cover;
        position: relative;
    }

    .content {
        position: absolute;
        top: 25%;
        left: 8%;
        /* transform: translate(-50%, -50%); */
        color: #000;
    }

    .title {
        font-size: 35px;
        font-weight: bold;
        color: #007072;
        margin-bottom: 20px;
    }

    .sub-title {
        font-size: 26px;
        color: #000;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .sub-title-info {
        font-size: 20px;
        font-weight: bold;
        color: #007072;
        margin-bottom: 20px;
    }

    .name {
        font-size: 36px;
        text-transform: capitalize;
        margin-bottom: 10px;
    }

    .event {
        font-size: 18px;
        text-transform: uppercase;
        margin-bottom: 100px;
    }

    .divider {
        margin-bottom: 10px;
    }

    .footer {
        width: 460px;
    }

    .footer td {
        height: 30px;
    }

    .issue {
        vertical-align: bottom;
        padding-bottom: 5px;
    }

    .date {
        font-size: 20px;
        margin-bottom: 20px;
    }

    .signature {
        font-size: 18px;
        text-align: right;
    }

    .sign {
        vertical-align: bottom;
        padding-bottom: 5px;
        text-align: right;
        padding-right: 20px;
    }

    .sign img {
        width: 150px;
        height: 80px;
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
	Hero Area
	==============================-->

<!--==============================
    Contact Area  
    ==============================-->
<div class="space" id="contact-sec">
    <div class="container">
        <div class="certificate">
            <div class="content">
                <div class="title">CERTIFICATE</div>
                <div class="sub-title">OF COMPLETION</div>
                <div class="sub-title-info">THIS CERTIFICATE IS AWARDED TO</div>
                <div class="name">{{ $psr->name }}</div>
                <div class="divider">
                    <hr>
                </div>
                <div class="event">COURSE: {{ $ps->name }}</div>
                <table class="footer">
                    <tr>
                        <td class="issue">
                            Issued On
                        </td>
                        <td class="sign">
                            <img src="{{asset('/certificate/sanjay.png')}}">
                        </td>
                    </tr>
                    <tr>
                        <td class="date">
                            {{ \Carbon\Carbon::parse($ps->session_date)->format('d-m-Y') }}
                        </td>
                        <td class="signature">
                            Director & Co-Founder
                        </td>
                    </tr>
                </table>
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
<script src="{{asset('common/assets/js/jquery.validate.min.js')}}"></script>
<script src="{{asset('common/assets/js/validate.js')}}"></script>
<script src="{{asset('common/assets/js/myscript.js')}}"></script>
@stop