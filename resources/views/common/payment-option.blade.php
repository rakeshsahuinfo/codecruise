@extends('layouts.common.master')
@section('title','Payment Option')
@section('headasset')
<style>
    .error {
        padding-left: 5px;
        padding-top: 5px;
        color: teal;
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
{{--
<div class="breadcumb-wrapper " data-bg-src="{{asset('common/assets/img/bg/breadcumb-bg.jpg')}}" data-overlay="title"
    data-opacity="8">
    <div class="breadcumb-shape" data-bg-src="{{asset('common/assets/img/bg/breadcumb_shape_1_1.png')}}">
    </div>
    <div class="shape-mockup breadcumb-shape2 jump d-lg-block d-none" data-right="30px" data-bottom="30px">
        <img src="{{asset('common/assets/img/bg/breadcumb_shape_1_2.png')}}" alt="shape">
    </div>
    <div class="shape-mockup breadcumb-shape3 jump-reverse d-lg-block d-none" data-left="50px" data-bottom="80px">
        <img src="{{asset('common/assets/img/bg/breadcumb_shape_1_3.png')}}" alt="shape">
    </div>
    <div class="container">
        <div class="breadcumb-content text-center">
            <h1 class="breadcumb-title">Contact Us</h1>
            <ul class="breadcumb-menu">
                <li><a href="{{route('landing-page')}}">Home</a></li>
                <li>Contact Us</li>
            </ul>
        </div>
    </div>
</div>
--}}
<!--==============================
    Contact Area  
    ==============================-->
<div class="space" id="contact-sec">
    <div class="container">
        {{--
        <div class="map-sec">
            <div class="map">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3644.7310056272386!2d89.2286059153658!3d24.00527418490799!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39fe9b97badc6151%3A0x30b048c9fb2129bc!2sthemeholy!5e0!3m2!1sen!2sbd!4v1651028958211!5m2!1sen!2sbd"
                    allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        --}}
        <div class="row">
            <div class="col-xl-8">
                <div class="contact-form-wrap" data-bg-src="assets/img/bg/contact_bg_1.png">
                    <span class="sub-title">Payment Options</span>
                    <h2 class="border-title"> Course: {{$courseinfo->name}}</h2>
                    <img src="{{asset('payment_option/payment_options.webp')}}" alt="">
                    <h3 class="widget_title mt-4">CodeCruise Powered By WhizzAct</h3>
                    <div class="info-list">
                        <ul>
                            <li>
                                <i class="fa-light fa-note"></i>
                                <strong>Note: </strong>
                                <span>To complete your enrollment process, please make your payment using the options shown on the page and share a screenshot of the transaction details at <strong>+91 8080 975897</strong>. We have also emailed the payment options to your registered email address. Alternatively, you can arrange payment later by contacting our support team using the provided contact information.</span>
                            </li>
                            </ul>
                        </div>
                </div>
            </div>
            <div class="col-xl-4 mb-10 mb-xl-0" style="margin-top: -120px;">
                <div class="me-xxl-5 mt-5">
                    <!-- <div class="title-area mb-10">
                        <h2 class="border-title h3">{{$courseinfo->name}}</h2>
                    </div> -->

                    <div class="card" data-aos="zoom-in">
                        <a href="{{route('course',$courseinfo->slug)}}">
                            <img src="{{ asset('course_banner/' . $courseinfo->course_banner) }}" alt="" class="p-3">
                        </a>
                    </div>
                    <div class="widget widget_info  ">
                        <!-- <div class="th-video">
                            <img src="{{asset('common/assets/img/widget/video_1.jpg')}}" alt="video">
                            <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn popup-video"><i class="fas fa-play"></i></a>
                        </div> -->
                        @if($courseinfo->apply_fee==1)
                        <div class="">
                            <!-- <span class="sub-title fs-4">Course Fee</span> -->
                            <span
                                class="h4 course-price">₹{{App\Http\Controllers\Admin\AdminController::currency_format((int)$courseinfo->course_fee)}}
                                @if($courseinfo->apply_discount==1)
                                @php
                                $course_fee = (int)$courseinfo->course_fee;
                                $current_discount = (int)$courseinfo->current_discount;
                                $total_fee = $course_fee + ($course_fee * $current_discount/100);
                                $rounded_total_fee = ceil(round($total_fee, 0)/500)*500;
                                @endphp
                                <del
                                    class="h6">{{App\Http\Controllers\Admin\AdminController::currency_format($rounded_total_fee)}}</del>
                                <span class="tag">Flat {{$courseinfo->current_discount}}% Off</span>
                                @endif
                            </span>
                        </div>
                        @endif
                        <!-- <a href="cart.html" class="th-btn style4">Buy Now</a> -->
                        <h3 class="widget_title">Course Information</h3>
                        <div class="info-list">
                            <ul>
                                <!-- <li>
                                    <i class="fa-light fa-user"></i>
                                    <strong>Instructor: </strong>
                                    <span>Kevin Perry</span>
                                </li> -->
                                <li>
                                    <i class="fa-light fa-clock"></i>
                                    <strong>Class Schedule: </strong>
                                    <span>{{$courseinfo->class_schedule}}</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-clock"></i>
                                    <strong>Duration: </strong>
                                    <span>{{$courseinfo->course_duration}}</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-clock"></i>
                                    <strong>Delivery Mode: </strong>
                                    <span>{{$courseinfo->delivery_mode}}</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-tag"></i>
                                    <strong>Course level: </strong>
                                    <span>Beginners/Intermediate</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-globe"></i>
                                    <strong>Language: </strong>
                                    <span>English</span>
                                </li>
                                <!-- <li>
                                    <i class="fa-light fa-puzzle-piece"></i>
                                    <strong>Quizzes: </strong>
                                    <span>04</span>
                                </li> -->
                            </ul>
                        </div>

                    </div>
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
<script src="{{asset('common/assets/js/jquery.validate.min.js')}}"></script>
<script src="{{asset('common/assets/js/validate.js')}}"></script>
<script src="{{asset('common/assets/js/myscript.js')}}"></script>
@stop