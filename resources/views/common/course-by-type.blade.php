@extends('layouts.common.master')
@section('title','Course-Info')
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
            <h1 class="breadcumb-title">Courses</h1>
            <ul class="breadcumb-menu">
                <li><a href="index.html">Home</a></li>
                <li>{{$course_type->name}}</li>
            </ul>
        </div>
    </div>
</div>
<!--==============================
Course Area  
==============================-->
@php

@endphp
<section class="space-top space-extra-bottom">
    <div class="container">
        <div class="th-sort-bar">
            <div class="row justify-content-between align-items-center">
                <div class="col-md-auto">
                    <span class="course-result-count">We found <span class="text-theme">{{$course->count()}}
                            courses</span> available for you</span>
                </div>
                <div class="col-md-auto">
                    <div class="nav" role=tablist>
                        <a href="#" class="active" id="tab-course-grid" data-bs-toggle="tab" data-bs-target="#tab-grid"
                            role="tab" aria-controls="tab-grid" aria-selected="true"><i class="fa-solid fa-grid-2"></i>
                            Grid</a>
                        <!-- <a href="#" id="tab-course-list" data-bs-toggle="tab" data-bs-target="#tab-list" role="tab" aria-controls="tab-grid" aria-selected="false"><i class="fas fa-list"></i> List</a> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade active show" id="tab-grid" role="tabpanel" aria-labelledby="tab-course-grid">
                <div class="row gy-4 mb-30">
                    @if($course)
                    @foreach($course as $c)
                    <div class="col-md-6 col-lg-4 col-xxl-3 filter-item cat1 cat3">
                        <div class="course-box2 style2">
                            <div class="course-img">
                                <a href="{{route('course',$c->slug)}}"><img
                                        src="{{asset('course_banner/'.$c->course_banner)}}" alt="course"
                                        style="height: 180px;"></a>
                                <span class="tag"><a href="{{route('course',$c->slug)}}">View</a></span>
                            </div>
                            <div class="course-content">
                                <div class="course-author">
                                    <div class="author-info fw-bold">
                                        {{-- <img src="{{asset('common/assets/img/update1/course/author.jpg')}}"
                                            alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a> --}}
                                        @if($c->apply_fee==1)
                                        <span class="text-theme fs-6 fees">Fees: <span
                                                class="text-dark fees">₹{{App\Http\Controllers\Admin\AdminController::currency_format((int)$c->course_fee)}}</span></span>
                                        <span class="pill bg-warning text-white px-2 fs-6 discount">
                                            @if($c->apply_discount==1)
                                            @php
                                            $course_fee = (int)$c->course_fee;
                                            $current_discount = (int)$c->current_discount;
                                            $total_fee = $course_fee + ($course_fee * $current_discount/100);
                                            $rounded_total_fee = ceil(round($total_fee, 0)/500)*500;
                                            @endphp
                                            <del
                                                class="h6 old-fee">{{App\Http\Controllers\Admin\AdminController::currency_format($rounded_total_fee)}}</del>
                                            <span class="tag discount-offer">Flat {{$c->current_discount}}% Off</span>
                                            @endif
                                        </span>
                                        @endif
                                    </div>
                                    <div class="course-rating">
                                        {{-- <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>
                                        (4.00) --}}
                                    </div>
                                </div>
                                <h3 class="course-title"><a href="{{route('course',$c->slug)}}">{{$c->name}}</a></h3>
                                {{-- <div class="course-meta">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 50</span>
                                    <span><i class="fal fa-eye"></i>View: 12K</span>
                                </div> --}}
                            </div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>
            {{--
            <div class="tab-pane fade " id="tab-list" role="tabpanel" aria-labelledby="tab-course-list">
                <div class="row gy-30">
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_1.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">Education Software and PHP and JS
                                        System Script</a></h3>
                                <p class="course-text">We are committed to making a positive impact on education
                                    globally. Through our initiatives, we aim to bridge educational gaps, improve
                                    learning outcomes.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 60+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_2.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">Learn Figma – UI/UX Design
                                        Essential Training</a></h3>
                                <p class="course-text">Through our initiatives, we aim to bridge educational gaps. We
                                    are committed to making a positive impact on education globally improve learning
                                    outcomes.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 9</span>
                                    <span><i class="fal fa-user"></i>Students 50+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_3.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">Advanced Android 12 & Kotlin
                                        Development Course</a></h3>
                                <p class="course-text">We aim to bridge educational gaps, improve learning outcomes. We
                                    are committed to making a positive impact on education globally, through our
                                    initiatives.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 7</span>
                                    <span><i class="fal fa-user"></i>Students 30+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_4.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">IT Statistics Data Science and
                                        Business Analysis</a></h3>
                                <p class="course-text">We are committed to making a positive impact on education
                                    globally. Through our initiatives, we aim to bridge educational gaps, improve
                                    learning outcomes.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 10</span>
                                    <span><i class="fal fa-user"></i>Students 20+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_5.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">The Complete HTML & CSS Bootcamp
                                        2023 Edition</a></h3>
                                <p class="course-text">Through our initiatives, we aim to bridge educational gaps. We
                                    are committed to making a positive impact on education globally improve learning
                                    outcomes.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 8</span>
                                    <span><i class="fal fa-user"></i>Students 60+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Max Alexix</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <div class="course-grid">
                            <div class="course-img">
                                <img src="{{asset('common/assets/img/course/course_2_6.png')}}" alt="img">
                                <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                            </div>
                            <div class="course-content">
                                <div class="d-flex justify-content-between">
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:79%">Rated <strong class="rating">4.00</strong> out of
                                                5</span>
                                        </div>(4.7)
                                    </div>
                                    <div class="offer-tag">Free</div>
                                </div>

                                <h3 class="course-title"><a href="course-details.html">Fashion Photography From To
                                        Professional Courses</a></h3>
                                <p class="course-text">We aim to bridge educational gaps, improve learning outcomes. We
                                    are committed to making a positive impact on education globally, through our
                                    initiatives.</p>
                                <div class="course-meta style2">
                                    <span><i class="fal fa-file"></i>Lesson 9</span>
                                    <span><i class="fal fa-user"></i>Students 50+</span>
                                    <span><i class="fal fa-chart-simple"></i>Beginner</span>
                                </div>
                                <div class="course-author">
                                    <div class="author-info">
                                        <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                        <a href="course.html" class="author-name">Kevin Perry</a>
                                    </div>
                                    <a href="course-details.html" class="link-btn">View Details<i
                                            class="fas fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            --}}
        </div>
        <!-- <div class="th-pagination text-center pt-20">
            <ul>
                <li><a href="blog.html">01</a></li>
                <li><a href="blog.html">02</a></li>
                <li><a href="blog.html">03</a></li>
                <li><a href="blog.html"><i class="far fa-arrow-right"></i></a></li>
            </ul>
        </div> -->
    </div>
</section>

<!--==============================
Footer Area
==============================-->
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