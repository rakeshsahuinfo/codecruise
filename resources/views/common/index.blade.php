@extends('layouts.common.master')
@section('title','Home')
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
@include('common.main-slide')

<!--======== / Hero Section ========-->
<!--==============================
	Contact Area  
	==============================-->
<div class="space-top">
    <div class="container">
        <div class="category-sec-wrap">
            <div class="shape-mockup category-shape-arrow d-xl-block d-none">
                <img src="{{asset('common/assets/img/normal/category-arrow.svg')}}" alt="img">
            </div>
            <div class="row">
                <div class="col-xl-4">
                    <div class="title-area mb-25 mb-lg-0 text-xl-start text-center">
                        <span class="sub-title"><i class="fal fa-book me-2"></i> Courses Categories</span>
                        <h2 class="sec-title">Explore Top Categories</h2>
                        <a href="{{route('course-catalog')}}" class="th-btn">View All Category<i
                                class="fa-regular fa-arrow-right ms-2"></i></a>
                    </div>
                </div>
                <div class="col-xl-8">
                    <div class="row slider-shadow th-carousel category-slider" data-slide-show="4"
                        data-ml-slide-show="3" data-md-slide-show="3" data-sm-slide-show="2" data-arrows="true"
                        data-xl-arrows="true">
                        @php
                        $ctype=App\Models\CourseType::where('is_active',1)->get();
                        @endphp
                        @if($ctype)
                        @foreach($ctype as $ct)
                        <div class="col-md-6 col-xl-4">
                            <div class="category-card">
                                <div class="category-card_icon">
                                    <img src="{{asset('common/assets/img/icon/cat-1_1.svg')}}" alt="image">
                                </div>
                                <div class="category-card_content">
                                    <h3 class="category-card_title"><a
                                            href="{{route('course-by-type',$ct->slug)}}">{{$ct->name}}</a></h3>
                                    {{--<p class="category-card_text">56+ Courses </p>--}}
                                    <a href="{{route('course-by-type',$ct->slug)}}" class="th-btn">Learn More <i
                                            class="fa-solid fa-arrow-right ms-1"></i></a>
                                </div>
                            </div>
                        </div>
                        @endforeach
                        @endif

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--==============================
	Servce Area  
	==============================-->
<section class="space" data-bg-src="{{asset('common/assets/img/bg/course_bg_1.png')}}" id="course-sec">
    <div class="container">
        <div class="mb-35 text-center text-md-start">
            <div class="row align-items-center justify-content-between">
                <div class="col-md-8">
                    <div class="title-area mb-md-0">
                        <span class="sub-title"><i class="fal fa-book me-2"></i> Popular Courses</span>
                        <h2 class="sec-title">Our Popular Courses</h2>
                    </div>
                </div>
                <div class="col-md-auto">
                    <a href="{{route('course-catalog')}}" class="th-btn">View All Courses<i
                            class="fa-solid fa-arrow-right ms-2"></i></a>
                </div>
            </div>
        </div>
        @php
        $course=App\Models\Course::where('is_active', 1)->where(function($queryBuilder) {
            $queryBuilder->where('course_type_id', 1)
            ->orWhere('course_type_id', 2);
        })
        ->orderBy('name', 'asc')
        ->get();
        @endphp
        @if($course)

        <div class="row slider-shadow th-carousel course-slider-1" data-slide-show="4" data-ml-slide-show="3"
            data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
            @foreach($course as $c)
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <a href="{{route('course',$c->slug)}}"><img src="{{asset('course_banner/'.$c->course_banner)}}"
                                alt="course" style="height: 210px;"></a>
                        <span class="tag"><a href="{{route('enroll-course',$c->slug)}}">Enroll</a></span>
                    </div>
                    <div class="course-content">
                        <div class="course-author">
                            <div class="author-info fw-bold">
                                {{-- <img src="{{asset('common/assets/img/update1/course/author.jpg')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a> --}}
                                @if($c->apply_fee==1)
                                <span class="text-theme fs-6 fees">Fees: <span class="text-dark fees">{{$c->course_fee}}</span></span>
                                @endif
                                <span class="pill bg-warning text-white px-2 fs-6 discount">
                                    @if($c->apply_discount==1)
                                    {{$c->current_discount}}
                                    @endif
                                </span>
                            </div>
                            <div class="course-rating">
                                {{-- <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                    <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
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
        <br>
    </div>
</section>
<!--==============================
	Cta Area  
	==============================-->
{{--
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

<!--==============================
	Why choose us Area  
	==============================-->
<div class="why-area-1 space overflow-hidden">

    <div class="shape-mockup why-shape-1 jump" data-top="10%" data-left="7%">
        <img src="{{asset('common/assets/img/normal/about_1_shape1.png')}}" alt="img">
    </div>

    <div class="shape-mockup why-shape-2" data-bg-src="{{asset('common/assets/img/normal/wcu_1_shape1.png')}}"></div>

    <div class="shape-mockup why-shape-3 jump-reverse" data-bottom="25%" data-right="-3%">
        <img src="{{asset('common/assets/img/normal/wcu_1_shape2.png')}}" alt="img">
    </div>

    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6">
                <div class="wcu-img-1">
                    <div class="img1">
                        <img src="{{asset('common/assets/img/normal/wcu_1_1.png')}}" alt="img">
                    </div>
                    <div class="student-count jump-reverse">
                        <h5 class="title"><span class="text-theme"><span class="counter-number">10</span>K+</span>
                            Active Students</h5>
                        <img src="{{asset('common/assets/img/normal/student-group_1_1.png')}}" alt="img">
                    </div>
                    <div class="text-end">
                        <a class="th-btn mt-30" href="{{route('contact')}}">Get Started <i
                                class="far fa-arrow-right ms-1"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-xl-6">
                <div class="wcu-wrap1">
                    <div class="title-area mb-25">
                        <span class="sub-title"><i class="fal fa-book me-2"></i> WHY CHOOSE US</span>
                        <h2 class="sec-title">Thousands Of Experts Around The World Ready To Help.</h2>
                        <p class="sec-text mt-20">Synergistically visualize alternative content before cross
                            functional core Rapidiously administra standardized value via focused benefits.
                            Rapidiously redefine highly efficient niche markets with plug-and-play materials
                            professionally seize client centric solutions</p>
                    </div>
                    <div class="row gy-4">
                        <div class="col-md-6">
                            <div class="wcu-box">
                                <div class="wcu-box_icon">
                                    <i class="fas fa-check-circle"></i>
                                </div>
                                <div class="wcu-box_details">
                                    <h3 class="box-title">World Class Trainers</h3>
                                    <p class="wcu-box_text">Seamlessly envisioneer tactical data through services.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="wcu-box">
                                <div class="wcu-box_icon">
                                    <i class="fas fa-check-circle"></i>
                                </div>
                                <div class="wcu-box_details">
                                    <h3 class="box-title">Easy Learning</h3>
                                    <p class="wcu-box_text">Seamlessly envisioneer tactical data through services.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="wcu-box">
                                <div class="wcu-box_icon">
                                    <i class="fas fa-check-circle"></i>
                                </div>
                                <div class="wcu-box_details">
                                    <h3 class="box-title">Flexible</h3>
                                    <p class="wcu-box_text">Seamlessly envisioneer tactical data through services.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="wcu-box">
                                <div class="wcu-box_icon">
                                    <i class="fas fa-check-circle"></i>
                                </div>
                                <div class="wcu-box_details">
                                    <h3 class="box-title">Affordable Price</h3>
                                    <p class="wcu-box_text">Seamlessly envisioneer tactical data through services.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--==============================
	Counter Area  
=	=============================-->

<div class="container">
    <div class="counter-area-1 bg-theme" data-bg-src="{{asset('common/assets/img/bg/counter-bg_1.png')}}">
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
--}}
<!--==============================
	Cta Area  
	==============================-->
{{--
<section class="cta-area-2 position-relative space-bottom">
    <div class="cta-bg-img" data-bg-src="{{asset('common/assets/img/bg/cta-bg2.png')}}">
    </div>
    <div class="cta-bg-img2" data-bg-src="{{asset('common/assets/img/bg/cta-bg2-shape.png')}}">
    </div>

    <div class="shape-mockup cta-shape1 jump d-md-block d-none" data-left="-2%" data-bottom="-7%">
        <img src="{{asset('common/assets/img/normal/cta_2_shape1.png')}}" alt="img">
    </div>

    <div class="shape-mockup cta-shape2 jump-reverse d-md-block d-none" data-right="-1%" data-top="-3%">
        <img src="{{asset('common/assets/img/normal/cta_2_shape2.png')}}" alt="img">
    </div>

    <div class="shape-mockup cta-shape3 spin d-md-block d-none" data-right="20%" data-top="30%">
        <img src="{{asset('common/assets/img/normal/cta_2_shape3.png')}}" alt="img">
    </div>

    <div class="container text-center">
        <div class="cta-wrap2">
            <div class="title-area text-center mb-35">
                <span class="sub-title"><i class="fal fa-book me-2"></i>Are You Ready For This Offer</span>
                <h2 class="sec-title text-white">40% Offer First <span class="text-theme2">100 Student’s</span> For
                    Featured <br> <span class="fw-normal">Topics by Education Category</span></h2>
                <p class="cta-text">Get unlimited access to 6,000+ of Udemy’s top courses for your team. Learn and
                    improve skills across
                    business, tec, design, and more.</p>
            </div>
            <div class="btn-group justify-content-center">
                <a href="about.html" class="th-btn style3">Join With Us<i class="fas fa-arrow-right ms-2"></i></a>
                <a href="contact.html" class="th-btn style2">Become A Teacher<i class="fas fa-arrow-right ms-2"></i></a>
            </div>
        </div>
    </div>
</section>
--}}
<!--==============================
	Team Area  
	==============================-->
<div class="team-area overflow-hidden space" id="team-sec">
    {{--
    <div class="shape-mockup team-bg-shape1 jump-reverse d-xxl-block d-none" data-left="-2%" data-top="0">
        <img src="{{asset('common/assets/img/team/team-shape_1_1.png')}}" alt="img">
    </div>

    <div class="shape-mockup team-bg-shape2 jump d-xxl-block d-none" data-left="40%" data-top="20%">
        <img src="{{asset('common/assets/img/team/team-shape_1_2.png')}}" alt="img">
    </div>

    <div class="shape-mockup team-bg-shape3 jump" data-left="5%" data-bottom="9%">
        <img src="{{asset('common/assets/img/team/team-shape_1_3.png')}}" alt="img">
    </div>

    <div class="shape-mockup team-bg-shape4 spin" data-left="40%" data-bottom="20%">
        <img src="{{asset('common/assets/img/team/team-shape_1_4.png')}}" alt="img">
    </div>

    <div class="shape-mockup team-bg-shape5 jump d-lg-block d-none" data-right="-7%" data-top="10%">
        <img src="{{asset('common/assets/img/team/team-shape_1_5.png')}}" alt="img">
    </div>
    --}}
    <div class="container">
        <div class="row align-items-center">
            <div class="col-xl-6 mb-40 mb-xl-0">
                <div class="title-area mb-30">
                    <span class="sub-title"><i class="fal fa-book me-2"></i> Our Instructor</span>
                    <h2 class="sec-title">Meet Our Expert Instructor</h2>
                    <p class="sec-text mt-20">
                        At Code-Cruise, we pride ourselves on providing top-notch education led by industry expert
                        trainers who are dedicated to helping you achieve your goals. Our team of experienced
                        professionals brings real-world knowledge and practical insights to the classroom, ensuring that
                        you receive the highest quality training available. Whether you're looking to enhance your
                        skills, advance your career, or embark on a new learning journey, our expert trainers are here
                        to guide and support you every step of the way. With their extensive expertise and commitment to
                        excellence, you can trust that you're receiving the best education possible, tailored to meet
                        your specific needs and aspirations. Join us today and experience the difference that our
                        industry expert trainers can make in your educational journey!
                    </p>
                </div>
                <div class="btn-group mt-30">
                    <a href="{{route('course-catalog')}}" class="th-btn">Explore Courses<i
                            class="fas fa-arrow-right ms-2"></i></a>
                    <a href="{{route('contact')}}" class="th-btn style7">Contact Us<i
                            class="fas fa-arrow-right ms-2"></i></a>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="team-card team-card-1-1 team-card-1-1-active mt-0">
                    <div class="team-img-wrap">
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/m.jfif')}}" alt="Team">
                        </div>
                    </div>
                    <div class="team-hover-wrap">
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <!-- <div class="th-social">
                                <a target="_blank" href="https://vimeo.com/"><i class="fab fa-vimeo-v"></i></a>
                                <a target="_blank" href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                            </div> -->
                        </div>
                        <div class="team-content">
                            <h3 class="team-title"><a href="team-details.html">Mr. Aamer</a></h3>
                            <span class="team-desig">Data Scientist & Trainer</span>
                        </div>
                        <div class="team-info">
                            <span><i class="fal fa-file-check"></i>2 Courses</span>
                            <span><i class="fa-light fa-users"></i>Students 1K+</span>
                        </div>
                    </div>
                </div>
                <div class="team-card team-card-1-1">
                    <div class="team-img-wrap">
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/m.jfif')}}" alt="Team">
                        </div>
                    </div>
                    <div class="team-hover-wrap">
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <!-- <div class="th-social">
                                <a target="_blank" href="https://vimeo.com/"><i class="fab fa-vimeo-v"></i></a>
                                <a target="_blank" href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                            </div> -->
                        </div>
                        <div class="team-content">
                            <h3 class="team-title"><a href="team-details.html">Mr. Sanjay</a></h3>
                            <span class="team-desig">Sr. Developer & Trainer</span>
                        </div>
                        <div class="team-info">
                            <span><i class="fal fa-file-check"></i>4 Courses</span>
                            <span><i class="fa-light fa-users"></i>Students 5K+</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-3 col-md-6">
                <div class="team-card team-card-1-2 mt-md-0">
                    <div class="team-img-wrap">
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/m.jfif')}}" alt="Team">
                        </div>
                    </div>
                    <div class="team-hover-wrap">
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <!-- <div class="th-social">
                                <a target="_blank" href="https://vimeo.com/"><i class="fab fa-vimeo-v"></i></a>
                                <a target="_blank" href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                            </div> -->
                        </div>
                        <div class="team-content">
                            <h3 class="team-title"><a href="team-details.html">Mr. Rakesh</a></h3>
                            <span class="team-desig">Sr. Solution Architect & Trainer</span>
                        </div>
                        <div class="team-info">
                            <span><i class="fal fa-file-check"></i>6 Courses</span>
                            <span><i class="fa-light fa-users"></i>Students 1K+</span>
                        </div>
                    </div>
                </div>
                <div class="team-card team-card-1-2 team-card-1-2-active">
                    <div class="team-img-wrap">
                        <div class="team-img">
                            <img src="{{asset('common/assets/img/team/m.jfif')}}" alt="Team">
                        </div>
                    </div>
                    <div class="team-hover-wrap">
                        <div class="team-social">
                            <a href="#" class="icon-btn">
                                <i class="far fa-plus"></i>
                            </a>
                            <!-- <div class="th-social">
                                <a target="_blank" href="https://vimeo.com/"><i class="fab fa-vimeo-v"></i></a>
                                <a target="_blank" href="https://linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                                <a target="_blank" href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                                <a target="_blank" href="https://facebook.com/"><i class="fab fa-facebook-f"></i></a>
                            </div> -->
                        </div>
                        <div class="team-content">
                            <h3 class="team-title"><a href="team-details.html">Mr. Sunil</a></h3>
                            <span class="team-desig">Sr. DevOps Engineer & Trainer</span>
                        </div>
                        <div class="team-info">
                            <span><i class="fal fa-file-check"></i>4 Courses</span>
                            <span><i class="fa-light fa-users"></i>Students 1K+</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
{{--
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
        <div class="row slider-shadow event-slider-1 th-carousel gx-70" data-slide-show="3" data-lg-slide-show="3"
            data-md-slide-show="1" data-sm-slide-show="1" data-xs-slide-show="1" data-arrows="true">
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-1.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author1.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">David Smith</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>259, NewYork,</p>
                            <p><i class="fal fa-clock"></i>08:00 am - 10:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">What Soul Can Tech Us About Web
                                Design</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-2.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author2.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Adam Jhon</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Hilton, NewYork,</p>
                            <p><i class="fal fa-clock"></i>10:00 am - 11:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Embrace the world of online
                                education</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-3.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author3.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Michael Rich</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>147, Green Road</p>
                            <p><i class="fal fa-clock"></i>11:00 am - 12:00 pm</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Gain insights into how parents can
                                support</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-4.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author4.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Anadi Juila</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Kipling, London,</p>
                            <p><i class="fal fa-clock"></i>08:00 am - 10:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Exploring New Frontiers in
                                Education</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-5.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author1.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">David Smith</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Paris, France,</p>
                            <p><i class="fal fa-clock"></i>10:00 am - 11:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">A Journey of Educational
                                Excellence</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-6.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author2.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Adam Jhon</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Broly, NewYork,</p>
                            <p><i class="fal fa-clock"></i>11:00 am - 12:00 pm</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Unleashing the Potential of
                                Education</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-7.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author3.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Michael Rich</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Easton, USA,</p>
                            <p><i class="fal fa-clock"></i>08:00 am - 10:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Preparing Students for Tomorrow,s
                                Challenges</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-8.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author4.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">Anadi Juila</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Sharjah, UAE,</p>
                            <p><i class="fal fa-clock"></i>10:00 am - 11:00 am</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Embracing Technology in
                                Education</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-xl-4">
                <div class="event-card">
                    <div class="event-card_img"
                        data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                        <img src="{{asset('common/assets/img/event/event_img-9.png')}}" alt="event">
                    </div>
                    <div class="event-card_content">
                        <div class="event-author">
                            <div class="avater">
                                <img src="{{asset('common/assets/img/event/event-author1.png')}}" alt="avater">
                            </div>
                            <div class="details">
                                <span class="author-name">David Smith</span>
                                <p class="author-desig">Chief - Executive</p>
                            </div>
                        </div>
                        <div class="event-meta">
                            <p><i class="fal fa-location-dot"></i>Al Road, Dubai,</p>
                            <p><i class="fal fa-clock"></i>11:00 am - 12:00 pm</p>
                        </div>
                        <h3 class="event-card_title"><a href="event-details.html">Redefining Learning for the 21st
                                Century</a></h3>
                        <div class="event-card_bottom">
                            <a href="event-details.html" class="th-btn">View Event <i
                                    class="far fa-arrow-right ms-1"></i></a>
                        </div>
                        <div class="event-card-shape jump">
                            <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==============================
	Contact Area  
	==============================-->
<div class="space-top">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-lg-6">
                <div class="title-area mb-lg-0 text-lg-start text-center">
                    <span class="sub-title"><i class="fal fa-book me-2"></i> Our Trusted Partners</span>
                    <h2 class="sec-title mb-0">We Have More Than <span class="text-theme"><span
                                class="counter-number">4263</span>+</span> Global Partners</h2>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="client-wrap text-lg-end text-center">
                    <div class="row gy-40">
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_1.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_2.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_3.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_4.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_5.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_6.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_7.png')}}" alt="img">
                            </a>
                        </div>
                        <div class="col-3">
                            <a href="blog.html" class="client-thumb">
                                <img src="{{asset('common/assets/img/client/cilent_1_8.png')}}" alt="img">
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<section class="cta-area-3 space-top">
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
=============================
Testimonial Area
==============================-->
<section class="testi-area-1 overflow-hidden space-bottom"
    data-bg-src="{{asset('common/assets/img/bg/testi_bg_1.png')}}">
    <div class="shape-mockup testi-bg-shape1 jump" data-right="0" data-top="50%">
        <img src="{{asset('common/assets/img/testimonial/testi-bg-shape_1_1.png')}}" alt="img">
    </div>
    <div class="shape-mockup testi-bg-shape2 spin" data-left="0" data-top="15%">
        <img src="{{asset('common/assets/img/testimonial/testi-bg-shape_1_2.png')}}" alt="img">
    </div>
    <div class="container">
        <div class="title-area text-center mb-50">
            <span class="sub-title"><i class="fal fa-book me-2"></i> Our Students Testimonials</span>
            <h2 class="sec-title">Students Say’s About Our University</h2>
        </div>
        <div class="row">
            <div class="col-xl-12">
                <div class="th-carousel testi-slider1 dot-style2 row" id="testimonial-slider1" data-slide-show="2"
                    data-ml-slide-show="2" data-lg-slide-show="1" data-md-slide-show="1" data-dots="true"
                    data-arrows="false">
                    <div class="col-lg-6">
                        <div class="testi-box">
                            <div class="testi-box-bg-shape">
                                <svg width="150" height="137" viewBox="0 0 150 137" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M0 9.99951C0 4.47666 4.47715 -0.000488281 10 -0.000488281H140C145.523 -0.000488281 150 4.47666 150 9.99951V10.5803C150 13.3951 148.814 16.0796 146.732 17.9747L18.8619 134.394C17.0205 136.07 14.6199 137 12.1297 137H10C4.47715 137 0 132.522 0 127V9.99951Z"
                                        fill="#0D5EF4" />
                                </svg>
                            </div>
                            <div class="testi-box_content">
                                <div class="testi-box_img">
                                    <img src="{{asset('common/assets/img/testimonial/testi_1_1.jpg')}}" alt="Avater">
                                </div>
                                <p class="testi-box_text">“Quickly maximize visionary solutions after mission
                                    critical action items productivate premium portals for impactful -services
                                    stinctively negotiate enabled niche markets via growth strategies”</p>
                            </div>
                            <div class="testi-box_bottom">
                                <div>
                                    <h3 class="testi-box_name">David H. Smith</h3>
                                    <span class="testi-box_desig">IT Student</span>
                                </div>
                                <div class="testi-box_review">
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    (4.7)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testi-box">
                            <div class="testi-box-bg-shape">
                                <svg width="150" height="137" viewBox="0 0 150 137" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M0 9.99951C0 4.47666 4.47715 -0.000488281 10 -0.000488281H140C145.523 -0.000488281 150 4.47666 150 9.99951V10.5803C150 13.3951 148.814 16.0796 146.732 17.9747L18.8619 134.394C17.0205 136.07 14.6199 137 12.1297 137H10C4.47715 137 0 132.522 0 127V9.99951Z"
                                        fill="#0D5EF4" />
                                </svg>
                            </div>
                            <div class="testi-box_content">
                                <div class="testi-box_img">
                                    <img src="{{asset('common/assets/img/testimonial/testi_1_2.jpg')}}" alt="Avater">
                                </div>
                                <p class="testi-box_text">“Quickly maximize visionary solutions after mission
                                    critical action items productivate premium portals for impactful -services
                                    stinctively negotiate enabled niche markets via growth strategies”</p>
                            </div>
                            <div class="testi-box_bottom">
                                <div>
                                    <h3 class="testi-box_name">Zara Head Milan</h3>
                                    <span class="testi-box_desig">Regular Student</span>
                                </div>
                                <div class="testi-box_review">
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    (4.7)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testi-box">
                            <div class="testi-box-bg-shape">
                                <svg width="150" height="137" viewBox="0 0 150 137" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M0 9.99951C0 4.47666 4.47715 -0.000488281 10 -0.000488281H140C145.523 -0.000488281 150 4.47666 150 9.99951V10.5803C150 13.3951 148.814 16.0796 146.732 17.9747L18.8619 134.394C17.0205 136.07 14.6199 137 12.1297 137H10C4.47715 137 0 132.522 0 127V9.99951Z"
                                        fill="#0D5EF4" />
                                </svg>
                            </div>
                            <div class="testi-box_content">
                                <div class="testi-box_img">
                                    <img src="{{asset('common/assets/img/testimonial/testi_1_1.jpg')}}" alt="Avater">
                                </div>
                                <p class="testi-box_text">“Quickly maximize visionary solutions after mission
                                    critical action items productivate premium portals for impactful -services
                                    stinctively negotiate enabled niche markets via growth strategies”</p>
                            </div>
                            <div class="testi-box_bottom">
                                <div>
                                    <h3 class="testi-box_name">David H. Smith</h3>
                                    <span class="testi-box_desig">IT Student</span>
                                </div>
                                <div class="testi-box_review">
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    (4.7)
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="testi-box">
                            <div class="testi-box-bg-shape">
                                <svg width="150" height="137" viewBox="0 0 150 137" fill="none"
                                    xmlns="http://www.w3.org/2000/svg">
                                    <path
                                        d="M0 9.99951C0 4.47666 4.47715 -0.000488281 10 -0.000488281H140C145.523 -0.000488281 150 4.47666 150 9.99951V10.5803C150 13.3951 148.814 16.0796 146.732 17.9747L18.8619 134.394C17.0205 136.07 14.6199 137 12.1297 137H10C4.47715 137 0 132.522 0 127V9.99951Z"
                                        fill="#0D5EF4" />
                                </svg>
                            </div>
                            <div class="testi-box_content">
                                <div class="testi-box_img">
                                    <img src="{{asset('common/assets/img/testimonial/testi_1_2.jpg')}}" alt="Avater">
                                </div>
                                <p class="testi-box_text">“Quickly maximize visionary solutions after mission
                                    critical action items productivate premium portals for impactful -services
                                    stinctively negotiate enabled niche markets via growth strategies”</p>
                            </div>
                            <div class="testi-box_bottom">
                                <div>
                                    <h3 class="testi-box_name">Zara Head Milan</h3>
                                    <span class="testi-box_desig">Regular Student</span>
                                </div>
                                <div class="testi-box_review">
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    <i class="fa-solid fa-star-sharp"></i>
                                    (4.7)
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--==============================
	Blog Area  
	==============================-->
<section class="overflow-hidden space" id="blog-sec">
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
                        <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the
                                Power of Learning!</a>
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
                        <h4 class="box-title"><a href="blog-details.html">Educate, Empower, Excel: Discover the
                                Power of Learning!</a>
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