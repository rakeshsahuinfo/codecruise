@extends('layouts.common.master')
@section('title','Events')
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
    Breadcumb
============================== -->
<div class="breadcumb-wrapper " data-bg-src="{{asset('common/assets/img/slider/slide-22.png')}}" data-overlay="title"
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
            <h1 class="breadcumb-title">Events & Batches</h1>
            <ul class="breadcumb-menu">
                <li><a href="{{route('landing-page')}}">Home</a></li>
                <li>Upcoming</li>
            </ul>
        </div>
    </div>
</div>
<!--==============================
Service Area  
==============================-->
<!--==============================
	Event Area  
	==============================-->
<section class="space" data-bg-src="{{asset('common/assets/img/bg/event-bg_1.png')}}">
    <div class="shape-mockup event-shape1 jump" data-top="0" data-left="-60px">
        <img src="{{asset('common/assets/img/team/team-shape_1_1.png')}}" alt="img">
    </div>
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Fetaured Events</span>
            <h2 class="sec-title">Our Upcoming Events</h2>
        </div>
        @php
        $promos=App\Models\PromoSession::where('is_active',1)->orderBy('created_at','desc')->get();
        @endphp

        <div class="row slider-shadow event-slider-1 th-carousel gx-70" data-slide-show="3" data-lg-slide-show="3"
            data-md-slide-show="1" data-sm-slide-show="1" data-xs-slide-show="1" data-arrows="true">
            @if($promos)
            @foreach($promos as $prs)
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('promo_banner/'.$prs->promo_banner)}}" style="width: 100px;height: 100px;"
                            alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">{{$prs->speaker}}</span>
                                <p class="author-desig">{{$prs->about_speaker}}</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Mumbai, India,</p>
                            <p><i class="fal fa-clock"></i>07:30 pm - 8:30 pm</p>
                        </div>
                        <h3 class="event-card_title"><a
                                href="{{url('/promo/'.$prs->promo_type.'/'.$prs->slug)}}">{{$prs->name}}</a></h3>
                        <div class="event-card_bottom">
                            <a href="{{url('/promo/'.$prs->promo_type.'/'.$prs->slug)}}" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            @endif
        </div>

    </div>
</section>
{{--
<section class="overflow-hidden space">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> What We Do</span>
            <h2 class="sec-title">Online Education Tailored to You</h2>
        </div>
        <div class="row gy-4 justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="service-card style3">
                    <div class="service-card-content">
                        <div class="service-card-icon">
                            <img src="{{asset('common/assets/img/icon/service-icon-3-1.svg')}}" alt="Icon">
                        </div>
                        <h3 class="box-title">Learn From Anywhere</h3>
                        <p class="service-card-text"> Competently unleash competitive initiatives for alternative
                            interfaces. Enthusiastically supply resource eveling platforms</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="service-card style3">
                    <div class="service-card-content">
                        <div class="service-card-icon">
                            <img src="{{asset('common/assets/img/icon/service-icon-3-2.svg')}}" alt="Icon">
                        </div>
                        <h3 class="box-title">Expert Instructor</h3>
                        <p class="service-card-text"> Competently unleash competitive initiatives for alternative
                            interfaces. Enthusiastically supply resource eveling platforms</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="service-card style3">
                    <div class="service-card-content">
                        <div class="service-card-icon">
                            <img src="{{asset('common/assets/img/icon/service-icon-3-3.svg')}}" alt="Icon">
                        </div>
                        <h3 class="box-title">24/7 Live Support</h3>
                        <p class="service-card-text"> Competently unleash competitive initiatives for alternative
                            interfaces. Enthusiastically supply resource eveling platforms</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==============================
About Area  
==============================-->
<div class="overflow-hidden overflow-hidden bg-smoke space" id="about-sec"
    data-bg-src="{{asset('common/assets/img/bg/about-5-bg.png')}}">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 mb-50 mb-xl-0">
                <div class="img-box4">
                    <div class="img1">
                        <img class="tilt-active" src="{{asset('common/assets/img/normal/about_5_1.png')}}" alt="About">
                    </div>
                    <div class="about-grid">
                        <h3 class="about-grid_year"><span class="counter-number">10</span>k+</h3>
                        <p class="about-grid_text">Students Active Our Courses</p>
                    </div>
                    <div class="img2">
                        <img class="tilt-active" src="{{asset('common/assets/img/normal/about_5_2.png')}}" alt="About">
                    </div>
                    <div class="shape1 shape-mockup jump" data-bottom="0" data-left="-46px">
                        <img src="{{asset('common/assets/img/normal/about_5_1shape.png')}}" alt="About">
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="title-area mb-35">
                    <span class="sub-title"><i class="fal fa-book me-2"></i> About Our University</span>
                    <h2 class="sec-title">Welcome to Edura University.</h2>
                </div>
                <p class="mt-n2 mb-25">Collaboratively simplify user friendly networks after principle centered
                    coordinate effective methods of empowerment distributed niche markets pursue market positioning
                    web-readiness after resource sucking applications. </p>
                <div class="row mb-35 gy-4">
                    <div class="col-lg-6">
                        <div class="about-grid3">
                            <div class="about-grid-icon"><img
                                    src="{{asset('common/assets/img/icon/about-grid-icon2-1.svg')}}" alt="icon"></div>
                            <div class="details">
                                <h5>Undergraduate Education</h5>
                                <p>With flexible courses</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="about-grid3">
                            <div class="icon"><img src="{{asset('common/assets/img/icon/about-grid-icon2-2.svg')}}"
                                    alt="icon"></div>
                            <div class="details">
                                <h5>Postgraduate Education</h5>
                                <p>Study flexibly online</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row align-items-center">
                    <div class="col-md-auto">
                        <div class="about-grid_img mb-30 mb-md-0">
                            <img src="{{asset('common/assets/img/normal/about_1_4.png')}}" alt="img">
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="checklist">
                            <ul>
                                <li>Get access to 4,000+ of our top courses</li>
                                <li>Popular topics to learn now</li>
                                <li>Find the right instructor for you</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <a href="about.html" class="th-btn mt-40">ABOUT MORE<i class="fa-regular fa-arrow-right ms-2"></i></a>
            </div>
        </div>
    </div>
</div>
<!--==============================
Counter Area  
==============================-->
<div class="counter-area-2" data-bg-src="{{asset('common/assets/img/bg/counter-bg_1.png')}}">
    <div class="container">
        <div class="row justify-content-between">
            <div class="col-sm-6 col-xl-3 counter-card-wrap">
                <div class="counter-card">
                    <h2 class="counter-card_number"><span class="counter-number">3.9</span>k<span
                            class="fw-normal">+</span></h2>
                    <p class="counter-card_text"><strong>Successfully</strong> Trained</p>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3 counter-card-wrap">
                <div class="counter-card">
                    <h2 class="counter-card_number"><span class="counter-number">15.8</span>k<span
                            class="fw-normal">+</span></h2>
                    <p class="counter-card_text"><strong>Classes</strong> Completed</p>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3 counter-card-wrap">
                <div class="counter-card">
                    <h2 class="counter-card_number"><span class="counter-number">97.5</span>k<span
                            class="fw-normal">+</span></h2>
                    <p class="counter-card_text"><strong>Satisfaction</strong> Rate</p>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3 counter-card-wrap">
                <div class="counter-card">
                    <h2 class="counter-card_number"><span class="counter-number">100.2</span>k<span
                            class="fw-normal">+</span></h2>
                    <p class="counter-card_text"><strong>Students</strong> Community</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--==============================
Team Area  
==============================-->
<section class="space overflow-hidden">
    <div class="shape-mockup team2-bg-shape1 jump-reverse d-lg-block d-none" data-left="-2%" data-top="0">
        <img src="{{asset('common/assets/img/team/team-shape_1_1.png')}}" alt="img">
    </div>

    <div class="shape-mockup team2-bg-shape5 jump d-xxl-block d-none" data-right="-7%" data-top="40%">
        <img src="{{asset('common/assets/img/team/team-shape_1_5.png')}}" alt="img">
    </div>

    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Our Instructor</span>
            <h2 class="sec-title">Meet Our Expert Instructor</h2>
        </div>
        <div class="row th-carousel slider-shadow" data-slide-show="4" data-lg-slide-show="3" data-md-slide-show="2"
            data-sm-slide-show="2" data-xs-slide-show="1">
            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_1.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Hirmar Ubunti</a></h3>
                        <span class="team-desig">Instructor</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_2.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Lily Michelle</a></h3>
                        <span class="team-desig">Founder & CEO</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_3.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Daniel Thomas</a></h3>
                        <span class="team-desig">Junior Instructor</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_4.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Jennifer Patricia</a></h3>
                        <span class="team-desig">Senior Instructor</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_1.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Hirmar Ubunti</a></h3>
                        <span class="team-desig">Instructor</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_2.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Lily Michelle</a></h3>
                        <span class="team-desig">Founder & CEO</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_3.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Daniel Thomas</a></h3>
                        <span class="team-desig">Junior Instructor</span>
                    </div>
                </div>
            </div>

            <!-- Single Item -->
            <div class="col-lg-6">
                <div class="team-card style2">
                    <div class="team-img-wrap">
                        <svg class="team-shape" xmlns="http://www.w3.org/2000/svg" width="327" height="337"
                            viewBox="0 0 327 337" fill="none">
                            <path
                                d="M158.167 331C158.167 333.946 160.555 336.333 163.5 336.333C166.446 336.333 168.833 333.946 168.833 331C168.833 328.054 166.446 325.667 163.5 325.667C160.555 325.667 158.167 328.054 158.167 331ZM158.167 6C158.167 8.94552 160.555 11.3333 163.5 11.3333C166.446 11.3333 168.833 8.94552 168.833 6C168.833 3.05448 166.446 0.666667 163.5 0.666667C160.555 0.666667 158.167 3.05448 158.167 6ZM325 167.5C325 257.254 253.238 330 163.5 330V332C254.359 332 327 258.343 327 167.5H325ZM2.00012 167.5C2.00012 77.7618 73.7458 7 163.5 7V5C72.6574 5 0.00012207 76.6411 0.00012207 167.5H2.00012Z"
                                fill="#0D5EF4" />
                        </svg>
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/team_2_4.jpg')}}" alt="Team">
                        </div>
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <div class="th-social">
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                                <a target="_blank" href="https://instagram.com/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="team-content">
                        <h3 class="team-title"><a href="team-details.html">Jennifer Patricia</a></h3>
                        <span class="team-desig">Senior Instructor</span>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="cta-area-3 ">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 mb-30 mb-lg-0">
                <div class="cta-card" data-bg-src="{{asset('common/assets/img/bg/cta-bg_3_1.png')}}">
                    <div class="title-area mb-40">
                        <span class="sub-title text-white"><i class="fal fa-book me-2"></i>Popular Courses</span>
                        <h4 class="sec-title text-white">Get The Best Courses & <br> Upgrade Your Skills </h4>
                    </div>
                    <a href="contact.html" class="th-btn style8">Join With Us<i class="fas fa-arrow-right ms-2"></i></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="cta-card" data-bg-src="{{asset('common/assets/img/bg/cta-bg_3_2.png')}}">
                    <div class="title-area mb-40">
                        <span class="sub-title text-white"><i class="fal fa-book me-2"></i>Popular Courses</span>
                        <h4 class="sec-title text-white">Engaging Courses for <br> Intellectual Exploration</h4>
                    </div>
                    <a href="contact.html" class="th-btn style8">Join With Us<i class="fas fa-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==============================
Blog Area  
==============================-->
<section class="blog-area-5 overflow-hidden bg-smoke space-bottom">
    <div class="container">
        <div class="mb-35 text-center text-md-start">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-8">
                    <div class="title-area mb-md-0">
                        <span class="sub-title"><i class="fal fa-book me-2"></i> Our News & Blogs</span>
                        <h2 class="sec-title">Latests News & Blogs</h2>
                    </div>
                </div>
                <div class="col-md-auto">
                    <a href="blog.html" class="th-btn">View All Posts<i class="fa-solid fa-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
        <div class="row slider-shadow th-carousel blog-slider-1" data-slide-show="3" data-lg-slide-show="2"
            data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-1.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>05 Jun, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the Power of
                                Learning!</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-2.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>03 Jun, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">Enrich Your Mind, Envision Your Future:
                                Education for Success</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-3.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>10 Jul, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">University class starting soon while the
                                lovely valley team work</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-1.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>02 Apr, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the Power of
                                Learning!</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-2.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>03 Jun, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">Enrich Your Mind, Envision Your Future:
                                Education for Success</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

            <div class="col-md-6 col-xl-4">
                <div class="th-blog blog-single style2">
                    <div class="blog-img">
                        <a href="blog-details.html"><img src="{{asset('common/assets/img/blog/blog-1-3.jpg')}}"
                                alt="Blog Image"></a>
                    </div>
                    <div class="blog-content">
                        <div class="blog-meta">
                            <a class="author" href="blog.html"><i class="fa-light fa-user"></i>by David Smith</a>
                            <a href="blog.html"><i class="fa-light fa-clock"></i>10 Jul, 2023</a>
                        </div>
                        <h4 class="box-title"><a href="blog-details.html">University class starting soon while the
                                lovely valley team work</a>
                        </h4>
                        <a href="blog-details.html" class="link-btn">Read More Details<i
                                class="fas fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<!--==============================
Cta Area  
==============================-->
<div class="cta-area-1" data-bg-src="{{asset('common/assets/img/bg/cta-bg1.png')}}">
    <div class="container">
        <div class="row align-items-center justify-content-between">
            <div class="col-lg-8">
                <div class="cta-wrap title-area mb-0">
                    <div class="cta-icon">
                        <img src="{{asset('common/assets/img/normal/cta-icon1.png')}}" alt="icon">
                    </div>
                    <div class="cta-content">
                        <h2 class="cta-title sec-title">Get Online Courses</h2>
                        <p class="cta-text">Met consectetur adipiscing sed eiustempore dolore</p>
                    </div>
                    <a href="about.html" class="th-btn style8">Join With Us<i class="fas fa-arrow-right ms-1"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="cta-img-1" data-overlay="title" data-opacity="8">
        <img src="{{asset('common/assets/img/normal/cta_1_1.png')}}" alt="Image">
        <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn style2 popup-video"><i
                class="fa-sharp fa-solid fa-play"></i></a>
    </div>
</div>
--}}
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