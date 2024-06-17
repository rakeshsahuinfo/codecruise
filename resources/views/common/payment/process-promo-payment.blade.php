@extends('layouts.common.master')
@section('title','Prosessing Payment')
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
            <h1 class="breadcumb-title">Promo Session</h1>
            <ul class="breadcumb-menu">
                <li><a href="{{route('landing-page')}}">Home</a></li>
                <li>Processing Payment</li>
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
            <div class="col-xl-7 mb-10 mb-xl-0" style="margin-top: -120px;">
                <div class="me-xxl-5 mt-5">
                    {{-- <div class="title-area mb-10">
                        <h2 class="border-title h3">{{$proses->name}}</h2>
                    </div> --}}

                    <div class="card" data-aos="zoom-in">
                        <img src="{{ asset('promo_banner/' . $proses->promo_banner) }}" alt="" class="p-3">
                    </div>

                </div>
            </div>
            <div class="col-xl-5">
                <div class="contact-form-wrap" data-bg-src="assets/img/bg/contact_bg_1.png">
                    <span class="sub-title">Payment for the {{$proses->promo_type}}</span>
                    <form id="payment-form" method="post" action="{{route('process-promo-payment')}}"
                        class="contact-form">
                        @csrf
                        <div class="row">

                            <div class="col-12 col-md-12 mt-2">
                                <div class="form-group">
                                    <input type="text" name="mysession" class="form-control style-white" id="mysession"
                                        value="{{$proses->name}}" readonly>
                                    <input type="hidden" name="promo_session_id" value="{{$proses->id}}">
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control style-white" name="name" id="name"
                                        placeholder="Your Name*" value="{{$prosesr->name}}">
                                    <i class="fal fa-user"></i>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="email" class="form-control style-white" name="email" id="email"
                                        placeholder="Email Address*" value="{{$prosesr->email}}">
                                    <i class="fal fa-envelope"></i>
                                </div>
                            </div>

                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="tel" class="form-control style-white" name="contact" id="contact"
                                        placeholder="Phone Number*" value="{{$prosesr->contact}}">
                                    <i class="fal fa-phone"></i>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control style-white" name="amount" id="amount"
                                        placeholder="0.00" value="{{$proses->fees}}" readonly>
                                    <i class="fal fa-inr"></i>
                                </div>
                            </div>
                            <input type="hidden" name="order_id" value="{{$prosesr->reg_code}}">
                            <input type="hidden" name="reg_code" value="{{$prosesr->reg_code}}">
                            <div class="form-btn col-12 mt-10">
                                <button type="submit" class="th-btn">Pay Now<i
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
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
    var options = {
        "key": "{{ $razorpay_key }}",
        "amount": "{{ $amount * 100 }}", // amount in paise
        "currency": "INR",
        "name": "{{ $name }}",
        "description": "Test Transaction",
        "image": "{{asset('common/assets/img/logo-white.png')}}",
        "order_id": "{{ $order_id }}",
        "handler": function (response) {
            // Send the response to the server to verify payment and update order status
            var paymentData = {
                razorpay_payment_id: response.razorpay_payment_id,
                razorpay_order_id: response.razorpay_order_id,
                razorpay_signature: response.razorpay_signature,
                promo_session_id:'{{$proses->id}}',
                promo_session_reg_id: '{{$prosesr->id}}',
                payment_amount:'{{$proses->fees}}'
            };

            fetch("{{route('promo-payment-success')}}", {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}'
                },
                body: JSON.stringify(paymentData)
            })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        // Payment was successful
                        alert('Payment successful! Payment ID: ' + response.razorpay_payment_id);
                        window.location.href = "{{route('promo-payment-success-message')}}";
                    } else {
                        // Payment verification failed
                        alert('Payment verification failed! Please contact support.');
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('An error occurred. Please try again.');
                });
        },
        "prefill": {
            "name": "{{ $name }}",
            "email": "{{ $email }}",
            "contact": "{{ $contact }}"
        },
        "theme": {
            "color": "#007072"
        },
        config: {
            display: {
                blocks: {
                    banks: {
                        name: 'All payment methods',
                        instruments: [
                            {
                                method: 'upi'
                            },
                            {
                                method: 'card'
                            },
                            {
                                method: 'wallet'
                            },
                            {
                                method: 'netbanking'
                            }
                        ],
                    },
                },
                sequence: ['block.banks'],
                preferences: {
                    show_default_blocks: false,
                },
            },
        }
    };
    var rzp1 = new Razorpay(options);
    rzp1.open();
</script>
@stop