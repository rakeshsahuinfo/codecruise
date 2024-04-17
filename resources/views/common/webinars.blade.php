@extends('layouts.common.master')
@section('title','Webinars')
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
    <!--==============================
Project Area  
==============================-->


    <!--==============================
Event Area  
==============================-->
<section class="space-top space-extra-bottom">
        <div class="container">
            <div class="row gy-40 gx-70">
            <h3>Upcoming Webinars</h3>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="{{asset('common/assets/img/event/event_img-shape.png')}}">
                            <img src="{{asset('common/assets/img/event/event-1.jpg')}}" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <!-- <div class="avater">
                                    <img src="{{asset('common/assets/img/event/event-author1.png')}}" alt="avater">
                                </div> -->
                                <div class="details">
                                    <span class="author-name">Aamer Syed</span>
                                    <p class="author-desig">Data Scientist</p>
                                </div>
                            </div>
                            <div class="event-meta">
                                <p><i class="fal fa-location-dot"></i>Online</p>
                                <p><i class="fal fa-clock"></i>07:00 PM - 08:00 PM</p>
                            </div>
                            <h3 class="event-card_title"><a href="#">Data Science for Mumbai University Graduates</a></h3>
                            <div class="event-card_bottom">
                                <a href="#" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="{{asset('common/assets/img/event/event-box-shape1.png')}}" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-2.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author2.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Embrace the world of online education</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-3.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author3.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Gain insights into how parents can support</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-4.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author4.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Exploring New Frontiers in Education</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-5.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author1.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">A Journey of Educational Excellence</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-6.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author2.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Unleashing the Potential of Education</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-7.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author3.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Preparing Students for Tomorrow,s Challenges</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-8.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author4.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Embracing Technology in Education</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-xl-4">
                    <div class="event-card">
                        <div class="event-card_img" data-mask-src="assets/img/event/event_img-shape.png">
                            <img src="assets/img/event/event_img-9.png" alt="event">
                        </div>
                        <div class="event-card_content">
                            <div class="event-author">
                                <div class="avater">
                                    <img src="assets/img/event/event-author1.png" alt="avater">
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
                            <h3 class="event-card_title"><a href="event-details.html">Redefining Learning for the 21st Century</a></h3>
                            <div class="event-card_bottom">
                                <a href="event-details.html" class="th-btn">View Event <i class="far fa-arrow-right ms-1"></i></a>
                            </div>
                            <div class="event-card-shape jump">
                                <img src="assets/img/event/event-box-shape1.png" alt="img">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 text-center">
                    <div class="th-pagination ">
                        <ul>
                            <li><a href="blog.html">01</a></li>
                            <li><a href="blog.html">02</a></li>
                            <li><a href="blog.html">03</a></li>
                            <li><a href="blog.html"><i class="far fa-arrow-right"></i></a></li>
                        </ul>
                    </div>
                </div> -->
            </div>
        </div>
    </section>
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