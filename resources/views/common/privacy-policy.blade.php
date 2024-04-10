@extends('layouts.common.master')
@section('title','Privacy Policy')
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
<div class="space" id="contact-sec" style="width: 80%;margin: 0px auto;">
    <div class="container" style="text-align: justify;">
        <h4 class="text-uppercase">Privacy Policy</h4>
        <b>Privacy Policy of Code Cruise</b><br>

        At Code Cruise, we are committed to protecting the privacy of our users. This Privacy Policy
        outlines how we collect, use, and safeguard your personal information when you visit our
        website or use our services.

        <br><br><b>Collection of Personal Information:</b><br>

        When you visit our website, we may collect certain personal information, such as your name,
        email address, and contact details, when you voluntarily provide them to us through forms or
        inquiries. Additionally, we may collect non-personal information, such as your IP address,
        browser type, and device information, for analytical purposes.

        <br><br><b>Use of Personal Information:</b><br>

        We use the personal information we collect to provide and improve our services, respond to
        inquiries, and communicate with you about our products, services, and promotions. We may
        also use your information to personalize your experience, analyze trends, and ensure the
        security of our website.

        <br><br><b>Disclosure of Personal Information:</b><br>

        We may share your personal information with third-party service providers who assist us in
        operating our website, conducting our business, or servicing you. We may also disclose your
        information when required by law or to protect our rights, property, or safety, or that of
        others.

        <br><br><b>Data Retention:</b><br>

        We will retain your personal information for as long as necessary to fulfill the purposes
        outlined in this Privacy Policy unless a longer retention period is required or permitted by
        law.

        <br><br><b>Security:</b><br>

        We take reasonable measures to protect the security of your personal information and
        implement appropriate technical and organizational safeguards to prevent unauthorized
        access, disclosure, alteration, or destruction.

        <br><br><b>Your Rights:</b><br>

        You have the right to access, update, or delete your personal information at any time. You
        may also opt-out of receiving marketing communications from us by following the instructions
        provided in such communications.

        <br><br><b>Children’s Privacy:</b><br>

        Our website and services are not intended for children under the age of 13, and we do not
        knowingly collect personal information from children under the age of 13. If you are a
        parent or guardian and believe that your child has provided us with personal information,
        please contact us, and we will take appropriate steps to remove such information from our
        records.

        <br><br><b>Changes to this Privacy Policy:</b><br>

        We reserve the right to update or change this Privacy Policy at any time. Any changes will
        be effective immediately upon posting the revised Privacy Policy on this page.

        <br><br><b>Contact Us:</b><br>

        If you have any questions about this Privacy Policy or our privacy practices, please contact
        us at help@codecruise.in.

        By using our website or services, you consent to the terms of this Privacy Policy.

        Last Updated: [13-03-2024]

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