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
<!-- <div class="breadcumb-wrapper " data-bg-src="{{asset('course_banner/'.$courseinfo->course_banner)}}"
    data-overlay="title" data-opacity="8">
    <!-- <div class="breadcumb-shape" data-bg-src="{{asset('common/assets/img/bg/breadcumb_shape_1_1.png')}}">
    </div>
    <div class="shape-mockup breadcumb-shape2 jump d-lg-block d-none" data-right="30px" data-bottom="30px">
        <img src="{{asset('common/assets/img/bg/breadcumb_shape_1_2.png')}}" alt="shape">
    </div>
    <div class="shape-mockup breadcumb-shape3 jump-reverse d-lg-block d-none" data-left="50px" data-bottom="80px">
        <img src="{{asset('common/assets/img/bg/breadcumb_shape_1_3.png')}}" alt="shape">
    </div> 
    <div class="container">
        <div class="breadcumb-content text-center">
            <h1 class="breadcumb-title">Courses Details</h1>
            <ul class="breadcumb-menu">
                <li><a href="{{route('landing-page')}}">Home</a></li>
                <li>{{$courseinfo->name}}</li>
            </ul>
        </div>
    </div>
</div>-->
<!--==============================
Project Area  
==============================-->
<!--==============================
Event Area  
==============================-->
<section class="">
    <div class="container">
        <div class="row">
            <div class="col-xxl-8 col-lg-7">
                <div class="course-single">
                    <div class="course-single-top">
                        <div class="course-img">
                            <img src="{{asset('course_banner/'.$courseinfo->course_banner)}}" alt="Course Image"
                                style="width: 100vh;">
                            <!-- <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            <span class="tag bg-theme">BEST SELLER</span> -->
                        </div>
                        <div class="course-meta style2">
                            <!-- <span><i class="fal fa-file"></i>Lesson 8</span> -->
                            <span><i class="fal fa-user"></i>Students 60+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                             <span class="meta-title">Category: </span><a href="#">{{$coursetype->name}}</a>
                           
                        </div>
                        <h2 class="course-title">{{$courseinfo->name}}</h2>
                        <ul class="course-single-meta">
                            {{--
                            <li class="course-single-meta-author">
                                <img src="{{asset('common/assets/img/course/author2.png')}}" alt="author">
                                <span>
                                    <span class="meta-title">Instructor: </span>
                                    <a href="course.html">Max Alexix</a>
                                </span>
                            </li>
                            
                            <li>
                                <span class="meta-title">Category: </span>
                                <a href="#">{{$coursetype->name}}</a>
                            </li>--}}
                            <li>
                                <span class="meta-title">Last Update: </span>
                                <a href="#">{{Carbon\Carbon::parse($courseinfo->updated_at)->format('d-M-Y')}}</a>
                            </li>
                            {{--
                            <li>
                                <span class="meta-title">Review: </span>
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:80%">Rated <strong class="rating">4.00</strong> out of
                                            5</span>
                                    </div>
                                    (4.00)
                                </div>
                            </li>
                           
                        </ul> --}}
                    </div>
                    <div class="course-single-bottom">
                        <ul class="nav course-tab" id="courseTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="description-tab" data-bs-toggle="tab"
                                    href="#Coursedescription" role="tab" aria-controls="Coursedescription"
                                    aria-selected="true"><i class="fa-regular fa-bookmark"></i>Overview</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="curriculam-tab" data-bs-toggle="tab" href="#curriculam"
                                    role="tab" aria-controls="curriculam" aria-selected="false"><i
                                        class="fa-regular fa-book"></i>Curriculam</a>
                            </li>
                            {{--
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="instructor-tab" data-bs-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false"><i class="fa-regular fa-user"></i>Instructor</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false"><i class="fa-regular fa-star-sharp"></i>Reviews</a>
                            </li> 
                            --}}
                        </ul>
                        <div class="tab-content" id="productTabContent">
                            <div class="tab-pane fade show active" id="Coursedescription" role="tabpanel"
                                aria-labelledby="description-tab">
                                <div class="course-description">
                                    <h5 class="h5">Description</h5>
                                    {!! $courseinfo->description !!}
                                </div>
                            </div>
                            <div class="tab-pane fade" id="curriculam" role="tabpanel" aria-labelledby="curriculam-tab">
                                <div class="course-curriculam">
                                    <h5 class="h5">The Course Curriculam</h5>
                                    @if($coursemodule)
                                    {!! $coursemodule->description !!}
                                    @else
                                    Please check later we are updating content
                                    @endif
                                </div>
                            </div>
                            {{--
                            <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                                <div class="course-instructor">
                                    <div class="course-author-box">
                                        <div class="auhtor-img">
                                            <img src="{{asset('common/assets/img/team/team_2_1.jpg')}}"
                                                alt="Author Image">
                                        </div>
                                        <div class="media-body">
                                            <h3 class="author-name"><a class="text-inherit"
                                                    href="team-details.html">Kevin Perry</a></h3>
                                            <p class="author-text">Optimize resource eveling innoation whereas visionary
                                                value. Compellingly engage extensible process with business process
                                                improvements.</p>
                                            <div class="author-meta">
                                                <a href="course.html"><i class="fal fa-file-video"></i>4 Courses</a>
                                                <span><i class="fal fa-users"></i>2500 Students</span>
                                            </div>
                                            <div class="th-social">
                                                <a href="https://facebook.com/" target="_blank"><i
                                                        class="fab fa-facebook-f"></i></a>
                                                <a href="https://twitter.com/" target="_blank"><i
                                                        class="fab fa-twitter"></i></a>
                                                <a href="https://linkedin.com/" target="_blank"><i
                                                        class="fab fa-linkedin-in"></i></a>
                                                <a href="https://instagram.com/" target="_blank"><i
                                                        class="fab fa-instagram"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
                                <div class="course-Reviews">
                                    <div class="th-comments-wrap ">
                                        <ul class="comment-list">
                                            <li class="review th-comment-item">
                                                <div class="th-post-comment">
                                                    <div class="comment-avater">
                                                        <img src="{{asset('common/assets/img/blog/comment-author-3.jpg')}}"
                                                            alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Mark Jack</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>22
                                                            April, 2022</span>
                                                        <div class="star-rating" role="img"
                                                            aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong
                                                                    class="rating">5.00</strong> out of 5 based on <span
                                                                    class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">Lorem ipsum dolor sit amet, consectetur
                                                            adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                            et dolore magna aliqua. Ut enim ad minim veniam, quis
                                                            nostrud exercitation ullamco</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="review th-comment-item">
                                                <div class="th-post-comment">
                                                    <div class="comment-avater">
                                                        <img src="{{asset('common/assets/img/blog/comment-author-2.jpg')}}"
                                                            alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Alexa Deo</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>26
                                                            April, 2022</span>
                                                        <div class="star-rating" role="img"
                                                            aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong
                                                                    class="rating">5.00</strong> out of 5 based on <span
                                                                    class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">The purpose of lorem ipsum is to create a
                                                            natural looking block of text (sentence, paragraph, page,
                                                            etc.) that doesn't distract from the layout. A practice not
                                                            without controversy, laying out pages.</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="review th-comment-item">
                                                <div class="th-post-comment">
                                                    <div class="comment-avater">
                                                        <img src="{{asset('common/assets/img/blog/comment-author-1.jpg')}}"
                                                            alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Tara sing</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>26
                                                            April, 2022</span>
                                                        <div class="star-rating" role="img"
                                                            aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong
                                                                    class="rating">5.00</strong> out of 5 based on <span
                                                                    class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">The passage experienced a surge in popularity
                                                            during the 1960s when Letraset used it on their dry-transfer
                                                            sheets, and again during the 90s as desktop publishers
                                                            bundled the text with their software.</p>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div> <!-- Comment Form -->
                                    <div class="th-comment-form ">
                                        <div class="form-title">
                                            <h3 class="blog-inner-title ">Add a review</h3>
                                        </div>
                                        <div class="row">
                                            <div class="form-group rating-select d-flex align-items-center">
                                                <label>Your Rating</label>
                                                <p class="stars">
                                                    <span>
                                                        <a class="star-1" href="#">1</a>
                                                        <a class="star-2" href="#">2</a>
                                                        <a class="star-3" href="#">3</a>
                                                        <a class="star-4" href="#">4</a>
                                                        <a class="star-5" href="#">5</a>
                                                    </span>
                                                </p>
                                            </div>
                                            <div class="col-12 form-group">
                                                <textarea placeholder="Write a Message" class="form-control"></textarea>
                                                <i class="text-title far fa-pencil-alt"></i>
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <input type="text" placeholder="Your Name" class="form-control">
                                                <i class="text-title far fa-user"></i>
                                            </div>
                                            <div class="col-md-6 form-group">
                                                <input type="text" placeholder="Your Email" class="form-control">
                                                <i class="text-title far fa-envelope"></i>
                                            </div>
                                            <div class="col-12 form-group">
                                                <input id="reviewcheck" name="reviewcheck" type="checkbox">
                                                <label for="reviewcheck">Save my name, email, and website in this
                                                    browser for the next time I comment.<span
                                                        class="checkmark"></span></label>
                                            </div>
                                            <div class="col-12 form-group mb-0">
                                                <button class="th-btn">Post Review <i
                                                        class="far fa-arrow-right ms-1"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            --}}
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-4 col-lg-5">
                <aside class="sidebar-area">
                    <div class="widget widget_info  ">
                        {{-- <div class="th-video">
                            <img src="{{asset('common/assets/img/widget/video_1.jpg')}}" alt="video">
                            <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn popup-video"><i
                                    class="fas fa-play"></i></a>
                        </div>
                        --}}
                        @if($courseinfo->apply_fee==1)
                        <div class="title-area">
                            <span class="sub-title fs-4">Course Fee</span>
                            <span class="h4 course-price">{{$courseinfo->course_fee}}
                                @if($courseinfo->apply_discount==1) <span
                                    class="tag">{{$courseinfo->current_discount}}</span> @endif
                            </span>
                        </div>
                        @endif

                        <a href="{{route('enroll-course',$courseinfo->slug)}}" class="th-btn">Enroll</a>
                        <!-- <a href="cart.html" class="th-btn style4">Buy Now</a> -->
                        <h3 class="widget_title">Course Information</h3>
                        <div class="info-list">
                            <ul>
                                {{-- 
                                <li>
                                    <i class="fa-light fa-user"></i>
                                    <strong>Instructor: </strong>
                                    <span>Kevin Perry</span>
                                </li> 
                                --}}
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
                        <a href="{{route('download-course-info',$courseinfo->slug)}}" target="_new"
                            class="th-btn style6 mt-35 mb-0"><i class="far fa-file-pdf me-2"></i>Download
                            Information</a>
                    </div>
                    <div class="widget widget_banner  " data-overlay="theme" data-opacity="9" data-bg-src="assets/img/widget/widget-banner-bg.png">
                            <div class="widget-banner">
                                <h4 class="title">Need Help? We Are Here To Help You</h4>
                                <div class="logo"><img src="{{asset('common/assets/img/logo-white.png')}}" alt="img"></div>
                                <h5 class="subtitle">Call us directly on</h5>
                                <a href="tel:+917304562050" class="link">+91 730 456 2050</a>
                                <a href="{{route('contact')}}" target="_new" class="th-btn style7">Contact Us Now <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                        </div>
                </aside>
            </div>
        </div>
    </div>
</section>
<!--==============================
Servce Area  
==============================-->
<section class="space-bottom">
    <div class="container">
        <div class="title-area text-center">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Tech Stack</span>
            <div class="title-area">
                <span class="sub-title fs-4">Important Tech Stack Covered</span>
            </div>

            <h2 class="sec-title"></h2>
        </div>
        <div class="row" data-slide-show="4" data-ml-slide-show="3" data-lg-slide-show="3" data-md-slide-show="2"
            data-sm-slide-show="1" data-arrows="true">
            <div class="container mt-2">
                <p class="text-center"></p>
                <div class="row justify-content-center">
                    @if($coursetechstack)
                    @foreach($coursetechstack as $ts)
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
                        <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                            <img src="{{ asset('tech_stack/' . $ts->tech_stack_logo) }}"
                                style="width: 120px;height:120px;margin: 5px auto;border-radius: 5px;" class="p-3">
                            <div class="card-tittle px-4 text-center sub-title fs-6">{{$ts->name}}</div>
                            <div class="card-body"></div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>

        </div>
    </div>
</section>
 <!--==============================
Category Area  
==============================-->
<section class="space">
        <div class="container">
            <div class="title-area text-center text-md-start">
               <span class="sub-title">Why learn at Codecruise</span>
                <h2 class="sec-title fw-medium">Our Course Features</h2>
            </div>
            <div class="row gy-50">
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_1.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Project-based Learning</a></h3>
                            <!--<p class="category-card2_text">Globally maintain magnetic process with model foster data after ubiuitous architectures.</p>
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_2.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Topic-based Assessments</a></h3>
                            <!--<p class="category-card2_text">Ubiuitos maintain magnetic process with model foster data after architectures ubiuitous.</p>-->
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_3.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Work on Live Projects</a></h3>
                            <!--<p class="category-card2_text">Magnetic maintain Globally process with model architectures data after ubiuitous foster.</p>-->
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_4.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Interview Preparation</a></h3>
                            <!--<p class="category-card2_text">Genious maintain magnetic process with model foster data after ubiuitous Previoiuslyws.</p>-->
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_5.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Internships</a></h3>
                            <!--<p class="category-card2_text">Getting maintain magnetic process with model foster data after ubiuitous architectures.</p>-->
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-xl-4">
                    <div class="category-card2">
                        <div class="category-card2_icon">
                            <img src="{{asset('common/assets/img/update1/icon/category_1_6.svg')}}" alt="icon">
                        </div>
                        <div class="category-card2_content">
                            <h3 class="category-card2_title"><a href="javascript:void(0)">Placement Assistance</a></h3>
                            <!--<p class="category-card2_text">Startup maintain magnetic process with model foster data after architectures ubiuitous.</p>-->
                            <a href="/about" class="link-btn">Learn More<i class="fas fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  <!--==============================
Feature Area  
==============================-->
<div class="space">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-6 mb-45 mb-xl-0">
                    <div class="title-area text-center text-xl-start mb-35">
                        <span class="sub-title">Why Choose Codecruise</span>
                        <h2 class="sec-title fw-semibold">Get An Experience Person in Personal Learning</h2>
                    </div>
                    <!--<p class="mt-n2 mb-35 text-center text-xl-start">Enthusiastically facilitate distinctive experiences whereas excellent metrics. Dynamically fashion fully tested methodologies with cost effective data. Completely synergize ethical web services rather than professional applications.</p>-->
                    <div class="row gy-30">
                        <div class="col-md-6">
                            <div class="feature-block">
                                <div class="feature-block_icon">
                                    <img src="{{asset('common/assets/img/update1/icon/feature_3_1.svg')}}" alt="icon">
                                </div>
                                <div class="media-body">
                                    <h3 class="feature-block_title">Highly Experienced</h3>
                                    <!--<p class="feature-block_text">Quickly iterate reliable infomediarie vis-a-vis top-line action items.</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="feature-block">
                                <div class="feature-block_icon">
                                    <img src="{{asset('common/assets/img/update1/icon/feature_3_2.svg')}}" alt="icon">
                                </div>
                                <div class="media-body">
                                    <h3 class="feature-block_title">Dedicated Support</h3>
                                    <!--<p class="feature-block_text">Quickly iterate reliable infomediarie vis-a-vis top-line action items.</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="feature-block">
                                <div class="feature-block_icon">
                                    <img src="{{asset('common/assets/img/update1/icon/feature_3_3.svg')}}" alt="icon">
                                </div>
                                <div class="media-body">
                                    <h3 class="feature-block_title">Question, Quiz & Test</h3>
                                    <!--<p class="feature-block_text">Quickly iterate reliable infomediarie vis-a-vis top-line action items.</p>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="feature-block">
                                <div class="feature-block_icon">
                                    <img src="{{asset('common/assets/img/update1/icon/feature_3_4.svg')}}" alt="icon">
                                </div>
                                <div class="media-body">
                                    <h3 class="feature-block_title">Live Coaching</h3>
                                    <!--<p class="feature-block_text">Quickly iterate reliable infomediarie vis-a-vis top-line action items.</p>-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-6">
                    <div class="ps-xxl-5 ms-xl-2">
                        <div class="video-box2">
                            <!--<img src="{{asset('common/assets/img/update1/normal/video_3.jpg')}}" alt="video">-->
                            <a href="https://www.youtube.com/watch?v=GBm_sAwIAAM" class="play-btn popup-video"><i class="fas fa-play"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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