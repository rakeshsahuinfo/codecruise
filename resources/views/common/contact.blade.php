@extends('layouts.common.master')
@section('title','Contact-Us')
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

<div class="breadcumb-wrapper " data-bg-src="{{asset('common/assets/img/bg/breadcumb-bg.jpg')}}" data-overlay="title" data-opacity="8">
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
            <div class="col-xl-5 mb-30 mb-xl-0">
                <div class="me-xxl-5 mt-60">
                    <div class="title-area mb-25">
                        <h2 class="border-title h3">Have Any Questions?</h2>
                    </div>
                    <p class="mt-n2 mb-25">Have a inquiry or some feedback for us? Fill out the form <br> below to
                        contact our team.</p>
                    <div class="contact-feature">
                        <div class="contact-feature-icon">
                            <i class="fal fa-location-dot"></i>
                        </div>
                        <div class="media-body">
                            <p class="contact-feature_label">Our Address</p>
                            <a href="https://www.google.com/maps" class="contact-feature_link">2690 Hiltona Street
                                Victoria Road, <br> New York, Canada</a>
                        </div>
                    </div>
                    <div class="contact-feature">
                        <div class="contact-feature-icon">
                            <i class="fal fa-phone"></i>
                        </div>
                        <div class="media-body">
                            <p class="contact-feature_label">Phone Number</p>
                            <a href="tel:+011456586986" class="contact-feature_link">Mobile:<span>(+65) - 48596 -
                                    5789</span></a>
                            <a href="tel:+011456586986" class="contact-feature_link">Phone: <span>(+00) - 12543 -
                                    4165</span></a>
                        </div>
                    </div>
                    <div class="contact-feature">
                        <div class="contact-feature-icon">
                            <i class="fal fa-clock"></i>
                        </div>
                        <div class="media-body">
                            <p class="contact-feature_label">Hours of Operation</p>
                            <span class="contact-feature_link">Monday - Friday: 09:00 - 20:00</span>
                            <span class="contact-feature_link">Sunday & Saturday: 10:30 - 22:00</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-7">
                <div class="contact-form-wrap" data-bg-src="assets/img/bg/contact_bg_1.png">
                    <span class="sub-title">Contact With Us!</span>
                    <h2 class="border-title">Get in Touch</h2>
                    <p class="mt-n1 mb-30 sec-text">Lorem ipsum dolor sit amet adipiscing elit, sed do eiusmod tempor
                        eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    <form action="mail.php" method="POST" class="contact-form ajax-contact">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control style-white" name="name" id="name"
                                        placeholder="Your Name*">
                                    <i class="fal fa-user"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control style-white" name="email" id="email"
                                        placeholder="Email Address*">
                                    <i class="fal fa-envelope"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <select name="subject" id="subject"
                                        class="single-select nice-select form-select style-white">
                                        <option value="" disabled selected hidden>Select Subject*</option>
                                        <option value="Web Design">Web Design</option>
                                        <option value="Web Development">Web Development</option>
                                        <option value="Engine Diagnostics">Engine Diagnostics</option>
                                        <option value="Digital Marketing">Digital Marketing</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="tel" class="form-control style-white" name="number" id="number"
                                        placeholder="Phone Number*">
                                    <i class="fal fa-phone"></i>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="form-group ">
                                    <textarea name="message" id="message" cols="30" rows="3"
                                        class="form-control style-white" placeholder="Write Your Message*"></textarea>
                                    <i class="fal fa-pen"></i>
                                </div>
                            </div>
                            <div class="form-btn col-12 mt-10">
                                <button class="th-btn">Send Message<i class="fas fa-long-arrow-right ms-2"></i></button>
                            </div>
                        </div>
                        <p class="form-messages mb-0 mt-3"></p>
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