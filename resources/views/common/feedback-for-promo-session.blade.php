@extends('layouts.common.master')
@section('title','Feedback')
@section('headasset')
<style>
    .error {
        padding-left: 5px;
        padding-top: 5px;
        color: teal;
    }

    .rating {
        font-size: 20px;
        cursor: pointer;
        display: flex;
        align-items: center;
    }

    .rating i {
        font-size: 20px;
        color: #ddd;
        margin: 0 25px;
        /* Adjust spacing between stars */
        position: relative;
    }

    .rating i.active {
        font-size: 20px;
        color: orange;
    }

    .rating-labels {
        display: flex;
        justify-content: space-between;
        margin-top: 5px;
    }

    @media only screen and (max-width: 768px) {
        .feedback-section {
            margin-top: -100px;
        }

        .rating {
            font-size: 18px;
            cursor: pointer;
        }

        .rating i {
            font-size: 18px;
            color: #ddd;
            margin: 0 4px;
            /* Adjust spacing between stars */
            position: relative;
        }

        .rating i.active {
            font-size: 18px;
            color: orange;
        }
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
        <div class="row feedback-section">

            <div class="col-xl-8 offset-xl-2">
                <div class="contact-form-wrap" data-bg-src="assets/img/bg/contact_bg_1.png">
                    <span class="sub-title">Please Give Your Feedback!</span>
                    <h4>{{$ps->name}}</h4>
                    <p class="mt-n1 mb-30 sec-text"></p>
                    <form id="contact-form" method="post" action="{{ route('save-feedback') }}" class="contact-form">
                        @csrf
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control style-white" name="name" id="name"
                                        placeholder="Your Name*" value="{{ $name }}">
                                    <i class="fal fa-user"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control style-white" name="email" id="email"
                                        placeholder="Email ID*" value="{{ $email }}">
                                    <i class="fal fa-envelope"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control style-white" name="alternate_email"
                                        id="alternate_email" placeholder="Alternate Email ID">
                                    <i class="fal fa-building"></i>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="tel" class="form-control style-white" name="contact" id="contact"
                                        placeholder="Phone Number*" value="{{ $contact }}">
                                    <i class="fal fa-phone"></i>
                                </div>
                            </div>
                            {{--<div class="col-md-12">
                                <div class="form-group">
                                    <label for="session_rating">Overall, how would you rate the session? (1-10)</label>
                                    <input type="number" class="form-control style-white" name="session_rating"
                                        id="session_rating" min="1" max="10" required>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="presentation_rating">How engaging was the presentation by the speaker?
                                        (1-10)</label>
                                    <input type="number" class="form-control style-white" name="presentation_rating"
                                        id="presentation_rating" min="1" max="10" required>
                                </div>
                            </div> --}}
                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="session_rating">Overall, how would you rate the session? (1-10)</label>
                                    <input type="hidden" name="session_rating" id="session_rating" required>
                                    <div class="d-flex flex-column">
                                        <div class="rating text-center" id="session_rating_stars">
                                            <!-- Generate stars here using JavaScript -->
                                        </div>
                                        <div class="rating-labels">
                                            <div>Poor</div>
                                            <div>Excellent</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="presentation_rating">How engaging was the presentation by the speaker?
                                        (1-10)</label>
                                    <input type="hidden" name="presentation_rating" id="presentation_rating" required>
                                    <div class="d-flex flex-column">
                                        <div class="rating text-center" id="presentation_rating_stars">
                                            <!-- Generate stars here using JavaScript -->
                                        </div>
                                        <div class="rating-labels">
                                            <div>Boring</div>
                                            <div>Very Engaging</div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="favorite_part">What was your favorite part of the session?</label>
                                    <textarea class="form-control style-white" name="favorite_part" id="favorite_part"
                                        rows="2"></textarea>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recommended_topic">What topics would you recommend for future
                                        events?</label>
                                    <input type="text" class="form-control style-white" name="recommended_topic"
                                        id="recommended_topic">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="recommend_other">Would you recommend this session to a friend or
                                        colleague?</label>
                                    <select class="form-control style-white" name="recommend_other" id="recommend_other"
                                        required>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <label for="suggestion">Any additional comments or suggestions?</label>
                                    <textarea class="form-control style-white" name="suggestion" id="suggestion"
                                        rows="2"></textarea>
                                </div>
                            </div>
                            <input type="hidden" name="promo_session_id" value="{{ $ps->id }}">
                            <input type="hidden" name="user_type" value="{{ $user_type }}">
                            <div class="form-btn col-12 mt-10">
                                <button type="submit" class="th-btn">Submit<i
                                        class="fas fa-long-arrow-right ms-2"></i></button>
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
<script src="{{asset('common/assets/js/jquery.validate.min.js')}}"></script>
<script src="{{asset('common/assets/js/validate.js')}}"></script>
<script src="{{asset('common/assets/js/myscript.js')}}"></script>
<script>
    // Function to generate stars
    function generateStars(container, inputName) {
        for (let i = 1; i <= 10; i++) {
            $(container).append(`<i class="fas fa-star" data-value="${i}"></i>`);
        }
        $(container).on('click', 'i', function () {
            const value = $(this).data('value');
            // Toggle active class for clicked star and preceding stars
            $(this).addClass('active').prevAll('i').addClass('active');
            // Remove active class from succeeding stars
            $(this).nextAll('i').removeClass('active');
            $(`input[name="${inputName}"]`).val(value);
        });
    }

    // Call the function for session rating stars
    generateStars('#session_rating_stars', 'session_rating');

    // Call the function for presentation rating stars
    generateStars('#presentation_rating_stars', 'presentation_rating');
</script>
@stop