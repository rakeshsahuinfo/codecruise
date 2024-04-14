@extends('layouts.master2')
@section('title','CodeCruise | Course')
@section('headasset')
@stop
@section('content')
<!-- ======= Top Bar ======= -->
@include('top-bar')
<!-- ======= Header ======= -->
@include('header')
<!-- End Header -->
<main id="main">
       <!--==============================
Event Area  
==============================-->
<section class="space-top space-extra2-bottom">
        <div class="container">
            <div class="row">
                <div class="col-xxl-9 col-lg-8">
                    <div class="course-single">
                        <div class="course-single-top">
                            <!-- <div class="course-img">
                                <img src="assets/img/course/course-details.png" alt="Course Image">
                                <span class="tag"><i class="fas fa-clock"></i> 03 WEEKS</span>
                                <span class="tag bg-theme">BEST SELLER</span>
                            </div> -->
                            <!-- <div class="course-meta style2">
                                <span><i class="fal fa-file"></i>Lesson 8</span>
                                <span><i class="fal fa-user"></i>Students 60+</span>
                                <span><i class="fal fa-chart-simple"></i>Beginner</span>
                            </div> -->
                            <h2 class="course-title"> {{$courseinfo->name}}</h2>
                            <ul class="course-single-meta">
                                <!-- <li class="course-single-meta-author">
                                    <img src="assets/img/course/author2.png" alt="author">
                                    <span>
                                        <span class="meta-title">Instructor: </span>
                                        <a href="course.html">Max Alexix</a>
                                    </span>
                                </li> -->
                                <li>
                                    <span class="meta-title">Category: </span>
                                    <a href="course.html">Web Development</a>
                                </li>
                                <li>
                                    <span class="meta-title">Last Update: </span>
                                    <a href="course.html">20 Jun, 2023</a>
                                </li>
                                <!-- <li>
                                    <span class="meta-title">Review: </span>
                                    <div class="course-rating">
                                        <div class="star-rating" role="img" aria-label="Rated 4.00 out of 5">
                                            <span style="width:80%">Rated <strong class="rating">4.00</strong> out of 5</span>
                                        </div>
                                        (4.00)
                                    </div>
                                </li> -->
                            </ul>
                        </div>
                        <div class="course-single-bottom">
                            <ul class="nav course-tab" id="courseTab" role="tablist">
                                <li class="nav-item" role="presentation">
                                    <!-- <a class="nav-link active" id="description-tab" data-bs-toggle="tab" href="#Coursedescription" role="tab" aria-controls="Coursedescription" aria-selected="true"><i class="fa-regular fa-bookmark"></i>Overview</a> -->
                                </li>
                                <li class="nav-item" role="presentation">
                                    <!-- <a class="nav-link" id="curriculam-tab" data-bs-toggle="tab" href="#curriculam" role="tab" aria-controls="curriculam" aria-selected="false"><i class="fa-regular fa-book"></i>Curriculam</a> -->
                                </li>
                                <li class="nav-item" role="presentation">
                                    <!-- <a class="nav-link" id="instructor-tab" data-bs-toggle="tab" href="#instructor" role="tab" aria-controls="instructor" aria-selected="false"><i class="fa-regular fa-user"></i>Instructor</a> -->
                                </li>
                                <li class="nav-item" role="presentation">
                                    <!-- <a class="nav-link" id="reviews-tab" data-bs-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false"><i class="fa-regular fa-star-sharp"></i>Reviews</a> -->
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
                                <!-- <div class="tab-pane fade" id="curriculam" role="tabpanel" aria-labelledby="curriculam-tab">
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
                                                <img src="assets/img/team/team_2_1.jpg" alt="Author Image">
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
                                                            <img src="assets/img/blog/comment-author-3.jpg" alt="Comment Author">
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
                                                            <img src="assets/img/blog/comment-author-2.jpg" alt="Comment Author">
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
                                                            <img src="assets/img/blog/comment-author-1.jpg" alt="Comment Author">
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
                                        </div> -->
                                        <!-- Comment Form -->
                                        <!--
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
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xxl-3 col-lg-4">
                    <aside class="sidebar-area">
                        <div class="widget widget_info  ">
                            <div class="th-video">
                            <img src="{{ asset('storage/course_banner/' . $courseinfo->course_banner) }}" alt="" >
                            <!-- <img src="assets/img/widget/video_1.jpg" alt="video">
                                <a href="https://www.youtube.com/watch?v=_sI_Ps7JSEk" class="play-btn popup-video"><i class="fas fa-play"></i></a> -->
                            </div>
                            <span class="h4 course-price">{{$courseinfo->course_fee}} <span class="tag">25% Off</span></span>
                            <a href="{{route('enroll-course',encrypt($courseinfo->id))}}" class="th-btn">Enroll Now</a>
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
    <section class="inner-page" style="height: 10%;">
        <div class="container my-3">
            <div class="row">
                <div class="col-12 col-md-6 col-lg-7">
                    <div class="card car" data-aos="zoom-in">
                        <img src="{{ asset('course_banner/' . $courseinfo->course_banner) }}" alt=""
                            class="p-3">
                    </div>
                    <div class="container">
                        <div class="custom-container" data-aos="zoom-out-down">
                            <div class="custom-div bg-success text-center">
                                <a href="{{route('enroll-course',encrypt($courseinfo->id))}}" class="text-white"
                                    target="_new">Enroll</a>
                            </div>
                            <div class="custom-div bg-primary text-white text-center">Course
                                Fee<br>{{$courseinfo->course_fee}}</div>
                            @if($courseinfo->apply_discount==1)
                            <div class="custom-div  bg-warning text-white text-center">
                                Discount<br>{{$courseinfo->current_discount}}</div>
                            @endif
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6 col-lg-5">
                    <div class="card dis">
                        <h4 class="p p-4 text-uppercase">
                            {{$courseinfo->name}}
                        </h4>
                        <div class="card-body">
                            {!! $courseinfo->description !!}
                            {{--
                            <a href="#" class="btn btn-md btn-outline-info COLOR" id="buy1" onclick="disablebtn()"
                                data-bs-toggle="modal" data-bs-target="#staticBackdrop">QUERY</a>
                            @include('query')
                            --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container my-3" data-aos="zoom-out-down">
            <div class="card shadow" id="schedule">
                <div class="card-body">
                    <div class="row text-center">
                        <div class="col-12 col-sm-3 col-md-3">
                            <p class="p" style="cursor: pointer;">Program Duration</p>
                            <h4 class="sp">{{$courseinfo->course_duration}}</h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">C{{$courseinfo->class_schedule}}lass Schedule</p>
                            <h4 class="sp"></h4>
                        </div>
                        <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">Delivery Mode</p>
                            <h4 class="sp">{{$courseinfo->delivery_mode}}</h4>
                        </div>
                        <!-- <div class="col-12 col-sm-3 col-md-4">
                            <p class="p" style="cursor: pointer;">Program Fees</p>
                            <h4>{{$courseinfo->course_fee}}</h4>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
        <div class="container card shadow py-4">
            <div class="container mt-4 syllabus">
                <h2 class="text-center p" id="syllabus">Syllabus and Schedule</h2>
                <p class="text-center sp">{{$coursemodule->name}}</p>
                <p>
                    <a href="{{route('download-course-info',encrypt($courseinfo->id))}}" class="float-end"
                        target="_new"><img src="{{asset('assets/img/download.png')}}"
                            title="Download {{$courseinfo->name}} Info"></a>
                </p>
                <div class="row mt-2">
                    <div class="col-12 col-md-12 col-lg-12 mt-4 mx-2"  style="width: 90%;">
                        {!!$coursemodule->description!!}
                    </div>
                </div>

            </div>
        </div>
        <div class="container">
            <div class="container mt-5">
                <h2 class="text-center p" id="syllabus">Tech Stack To Be Covered</h2>
                <p class="text-center"></p>
                <div class="row justify-content-center">
                    @if($coursetechstack)
                    @foreach($coursetechstack as $ts)
                    <div class="col-12 col-sm-6 col-md-4 col-lg-3 my-2 d-flex">
                        <div class="card shadow flex-fill" data-aos="zoom-in-up" style="height: 100%;">
                            <img src="{{ asset('tech_stack/' . $ts->tech_stack_logo) }}" style="width: 120px;height:120px;margin: 5px auto;border-radius: 5px;" class="p-3">
                            <div class="card-tittle px-4 text-center">{{$ts->name}}</div>
                            <div class="card-body"></div>
                        </div>
                    </div>
                    @endforeach
                    @endif
                </div>
            </div>
        </div>
        <!-- @include('catalog')
        @include('team')
        <div class="container my-5">
            <div class="row">
                <h2 class="text-center p" id="contact">Contact us</h2>
                <div class="col-12 col-lg-4">
                    @include('address')
                </div>
                <div class="col-12 col-lg-8 p-4 forms">
                    <div class="card shadow ">
                        <div class="card-body">
                            @include('contact-form')
                        </div>
                    </div>
                </div>
            </div>
        </div> -->
    </section>
</main>
<!-- End #main -->
<!-- ======= Footer ======= -->
@include('footer')
<!-- End Footer -->
@stop
@section('jsscript')
@include('layouts.jsscript')
@stop