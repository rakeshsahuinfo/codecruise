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
            <h1 class="breadcumb-title">Courses Details</h1>
            <ul class="breadcumb-menu">
                <li><a href="{{route('landing-page')}}">Home</a></li>
                <li>{{$courseinfo->name}}</li>
            </ul>
        </div>
    </div>
</div>
<!--==============================
Project Area  
==============================-->
<!--==============================
Event Area  
==============================-->
<section class="space-top space-extra2-bottom">
    <div class="container">
        <div class="row">
            <div class="col-xxl-9 col-lg-8">
                <div class="course-single">
                    <div class="course-single-top">
                        <div class="course-img">
                            <img src="{{asset('common/assets/img/course/course-details.png')}}" alt="Course Image">
                            <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                            <span class="tag bg-theme">BEST SELLER</span>
                        </div>
                        <div class="course-meta style2">
                            <span><i class="fal fa-file"></i>Lesson 8</span>
                            <span><i class="fal fa-user"></i>Students 60+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <h2 class="course-title">Education Software and PHP and JS System Script</h2>
                        <ul class="course-single-meta">
                            <li class="course-single-meta-author">
                                <img src="{{asset('common/assets/img/course/author2.png')}}" alt="author">
                                <span>
                                    <span class="meta-title">Instructor: </span>
                                    <a href="course.html">Max Alexix</a>
                                </span>
                            </li>
                            <li>
                                <span class="meta-title">Category: </span>
                                <a href="course.html">Web Development</a>
                            </li>
                            <li>
                                <span class="meta-title">Last Update: </span>
                                <a href="course.html">20 Jun, 2023</a>
                            </li>
                            <li>
                                <span class="meta-title">Review: </span>
                                <div class="course-rating">
                                    <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                        <span style="width:80%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                    </div>
                                    (4.00)
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="course-single-bottom">
                        <ul class="nav course-tab" id="courseTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#Coursedescription" role="tab" aria-controls="Coursedescription" aria-selected="true"><i class="fa-regular fa-bookmark"></i>Overview</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="curriculam-tab" data-bs-toggle="tab" href="#curriculam" role="tab" aria-controls="curriculam" aria-selected="false"><i class="fa-regular fa-book"></i>Curriculam</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="instructor-tab" data-bs-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false"><i class="fa-regular fa-user"></i>Instructor</a>
                            </li>
                            <li class="nav-item" role="presentation">
                                <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false"><i class="fa-regular fa-star-sharp"></i>Reviews</a>
                            </li>
                        </ul>
                        <div class="tab-content" id="productTabContent">
                            <div class="tab-pane fade show active" id="Coursedescription" role="tabpanel" aria-labelledby="description-tab">
                                <div class="course-description">
                                    <h5 class="h5">Description</h5>
                                    <p>Rapidiously develop parallel e-markets via worldwide paradigms. Quickly synergize cutting-edge scenarios and professional results. Assertively deliver cross-media results before client-centric results. Uniquely initiate intuitive communities through process-centric internal or "organic" sources. Energistically reinvent distinctive value via parallel services. Phosfluorescently deploy extensive paradigms vis-a-vis cross-unit manufactured products. Uniquely coordinate impactful services whereas team building e-services. Globally grow multimedia based benefits vis-a-vis client-based niches.</p>
                                    <p>Professionally expedite synergistic technology without out-of-the-box human capital. Enthusiastically coordinate state of the art leadership after professional manufactured products. Distinctively enhance future-proof e-services whereas functionalized partnerships. Quickly streamline focused paradigms via orthogonal "outside the box" thinking. Rapidiously administrate 2.0 total linkage for cross-platform channels.</p>
                                    <h5 class="h5 mt-40">What Will You Learn?</h5>
                                    <p>Quickly synergize cutting-edge scenarios and professional results. Assertively deliver cross-media results before client-centric results. Uniquely initiate intuitive communities through process-centric internal or "organic" sources. Energistically reinvent distinctive value via parallel services extensive paradigms cross-unit manufactured products.</p>
                                    <div class="row mt-25">
                                        <div class="col-lg-6">
                                            <div class="checklist mb-4">
                                                <ul>
                                                    <li>Learn Figma Basic to Advanced Design</li>
                                                    <li>Justo non mauris pretium at tempor justo.</li>
                                                    <li>Phasellus enim magna, varius et comm.</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="checklist">
                                                <ul>
                                                    <li>Ut nullar Tellus, leafed eulimid pellet</li>
                                                    <li>Phaseolus denim magna various.</li>
                                                    <li>Sed consequent just non mauri's.</li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <h5 class="h5 mt-40">Certification</h5>
                                    <p>It is designed to validate the knowledge, skills, and competencies of individuals in a specific area of study or professional field. The certification program is meticulously designed to ensure that candidates have acquired a comprehensive understanding of the subject matter. It encompasses both theoretical knowledge and practical application, allowing candidates to demonstrate their expertise in real-world scenarios.</p>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="curriculam" role="tabpanel" aria-labelledby="curriculam-tab">
                                <div class="course-curriculam">
                                    <h5 class="h5">The Course Curriculam</h5>
                                    <p class="mb-30">Grursus mal suada faci lisis Lorem ipsum dolarorit more ametion consectetur elit. Vesti at bulum nec odio aea the dumm ipsumm ipsum that dolocons rsus mal suada and fadolorit to the consectetur elit. All the Lorem Ipsum generators on the Internet tend to repeat that predefined chunks as necessary, making this the first true dummy generator on the Internet.</p>
                                    <div class="checklist mb-1">
                                        <ul>
                                            <li>How to use social media to reach local, national and international audiences</li>
                                            <li>How to set up and market events, using online tools, so you no longer depend</li>
                                            <li>How to create and run online shows, adapt your performance techniques and</li>
                                            <li>Mentoring and troubleshooting and post-training support from Jason</li>
                                            <li>How to use social media to reach local, national and international audiences</li>
                                            <li>How to set up and market events, using online tools</li>
                                            <li>Adapt your performance techniques and manage your audience throughout</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="instructor" role="tabpanel" aria-labelledby="instructor-tab">
                                <div class="course-instructor">
                                    <div class="course-author-box">
                                        <div class="auhtor-img">
                                            <img src="{{asset('common/assets/img/team/team_2_1.jpg')}}" alt="Author Image">
                                        </div>
                                        <div class="media-body">
                                            <h3 class="author-name"><a class="text-inherit" href="team-details.html">Kevin Perry</a></h3>
                                            <p class="author-text">Optimize resource eveling innoation whereas visionary value. Compellingly engage extensible process with business process improvements.</p>
                                            <div class="author-meta">
                                                <a href="course.html"><i class="fal fa-file-video"></i>4 Courses</a>
                                                <span><i class="fal fa-users"></i>2500 Students</span>
                                            </div>
                                            <div class="th-social">
                                                <a href="https://facebook.com/" target="_blank"><i class="fab fa-facebook-f"></i></a>
                                                <a href="https://twitter.com/" target="_blank"><i class="fab fa-twitter"></i></a>
                                                <a href="https://linkedin.com/" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                                                <a href="https://instagram.com/" target="_blank"><i class="fab fa-instagram"></i></a>
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
                                                        <img src="{{asset('common/assets/img/blog/comment-author-3.jpg')}}" alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Mark Jack</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>22 April, 2022</span>
                                                        <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="review th-comment-item">
                                                <div class="th-post-comment">
                                                    <div class="comment-avater">
                                                        <img src="{{asset('common/assets/img/blog/comment-author-2.jpg')}}" alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Alexa Deo</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>26 April, 2022</span>
                                                        <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">The purpose of lorem ipsum is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn't distract from the layout. A practice not without controversy, laying out pages.</p>
                                                    </div>
                                                </div>
                                            </li>
                                            <li class="review th-comment-item">
                                                <div class="th-post-comment">
                                                    <div class="comment-avater">
                                                        <img src="{{asset('common/assets/img/blog/comment-author-1.jpg')}}" alt="Comment Author">
                                                    </div>
                                                    <div class="comment-content">
                                                        <h4 class="name">Tara sing</h4>
                                                        <span class="commented-on"><i class="fal fa-calendar-alt"></i>26 April, 2022</span>
                                                        <div class="star-rating" role="img" aria-label="Rated 5.00 out of 5">
                                                            <span style="width:100%">Rated <strong class="rating">5.00</strong> out of 5 based on <span class="rating">1</span> customer rating</span>
                                                        </div>
                                                        <p class="text">The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software.</p>
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
                                                <label for="reviewcheck">Save my name, email, and website in this browser for the next time I comment.<span class="checkmark"></span></label>
                                            </div>
                                            <div class="col-12 form-group mb-0">
                                                <button class="th-btn">Post Review <i class="far fa-arrow-right ms-1"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xxl-3 col-lg-4">
                <aside class="sidebar-area">
                    <div class="widget widget_info  ">
                        <div class="th-video">
                            <img src="{{asset('common/assets/img/widget/video_1.jpg')}}" alt="video">
                            <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn popup-video"><i class="fas fa-play"></i></a>
                        </div>
                        <span class="h4 course-price">$90.00 <span class="tag">25% Off</span></span>
                        <a href="cart.html" class="th-btn">Add To Cart</a>
                        <a href="cart.html" class="th-btn style4">Buy Now</a>
                        <h3 class="widget_title">Course Information</h3>
                        <div class="info-list">
                            <ul>
                                <li>
                                    <i class="fa-light fa-user"></i>
                                    <strong>Instructor: </strong>
                                    <span>Kevin Perry</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-file"></i>
                                    <strong>Lessons: </strong>
                                    <span>8</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-clock"></i>
                                    <strong>Duration: </strong>
                                    <span>15h 30m 36s</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-tag"></i>
                                    <strong>Course level: </strong>
                                    <span>Beginners</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-globe"></i>
                                    <strong>Language: </strong>
                                    <span>English</span>
                                </li>
                                <li>
                                    <i class="fa-light fa-puzzle-piece"></i>
                                    <strong>Quizzes: </strong>
                                    <span>04</span>
                                </li>
                            </ul>
                        </div>
                        <a href="https://www.linkedin.com/" class="th-btn style6 mt-35 mb-0"><i class="far fa-share-nodes me-2"></i>Share This Course</a>
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
            <span class="sub-title"><i class="fal fa-book me-2"></i> Related Courses</span>
            <h2 class="sec-title">Courses You May Like</h2>
        </div>
        <div class="row slider-shadow th-carousel course-slider-1" data-slide-show="4" data-ml-slide-show="3" data-lg-slide-show="3" data-md-slide-show="2" data-sm-slide-show="1" data-arrows="true">
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_1.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Education Software and PHP
                                and JS System Script</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 8</span>
                            <span><i class="fal fa-user"></i>Students 60+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_2.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Learn Figma – UI/UX Design
                                Essential Training</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 9</span>
                            <span><i class="fal fa-user"></i>Students 50+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_3.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Advanced Android 12 & Kotlin
                                Development Course</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 7</span>
                            <span><i class="fal fa-user"></i>Students 30+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_4.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">IT Statistics Data Science and
                                Business Analysis</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 10</span>
                            <span><i class="fal fa-user"></i>Students 20+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_5.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">The Complete HTML & CSS
                                Bootcamp 2023 Edition</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 8</span>
                            <span><i class="fal fa-user"></i>Students 60+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_6.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Great Graphical Design That
                                Catches Eyes</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 9</span>
                            <span><i class="fal fa-user"></i>Students 50+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_7.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Marketing 2023: Complete
                                Guide To Social Growth</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 7</span>
                            <span><i class="fal fa-user"></i>Students 30+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_8.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">The complete business plan
                                course includes 20+ template</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 10</span>
                            <span><i class="fal fa-user"></i>Students 20+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_9.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Fashion Photography From To
                                Professional Courses</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 8</span>
                            <span><i class="fal fa-user"></i>Students 60+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_10.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Fashion and Luxury Fashion In
                                A Changing</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 9</span>
                            <span><i class="fal fa-user"></i>Students 50+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_11.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 04 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Best Statistics Data Science &
                                Business Analysis</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 7</span>
                            <span><i class="fal fa-user"></i>Students 30+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Max Alexix</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 col-xl-4">
                <div class="course-box style2">
                    <div class="course-img">
                        <img src="{{asset('common/assets/img/course/course_1_12.png')}}" alt="img">
                        <span class="tag"><i class="fas fa-clock"></i> 02 WEEKS</span>
                    </div>
                    <div class="course-content">
                        <div class="course-rating">
                            <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                <span style="width:79%">Rated <strong class="rating">4.00</strong> out of 5</span>
                            </div>(4.7)
                        </div>
                        <h3 class="course-title"><a href="course-details.html">Angular with Nodejs Fullstack
                                Development</a></h3>
                        <div class="course-meta">
                            <span><i class="fal fa-file"></i>Lesson 10</span>
                            <span><i class="fal fa-user"></i>Students 20+</span>
                            <span><i class="fal fa-chart-simple"></i>Beginner</span>
                        </div>
                        <div class="course-author">
                            <div class="author-info">
                                <img src="{{asset('common/assets/img/course/author.png')}}" alt="author">
                                <a href="course.html" class="author-name">Kevin Perry</a>
                            </div>
                            <div class="offer-tag">Free</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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