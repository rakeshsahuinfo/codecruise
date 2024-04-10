<!-- Edura Master -->
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>@yield('title')</title>
	<meta name="author" content="themeholy">
	<meta name="description" content="Edura - Online Courses & Education HTML Template">
	<meta name="keywords" content="Edura - Online Courses & Education HTML Template">
	<meta name="robots" content="INDEX,FOLLOW">
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Favicons - Place favicon.ico in the root directory -->
	<link rel="apple-touch-icon" sizes="57x57" href="{{asset('common/assets/img/favicons/apple-icon-57x57.png')}}">
	<link rel="apple-touch-icon" sizes="60x60" href="{{asset('common/assets/img/favicons/apple-icon-60x60.png')}}">
	<link rel="apple-touch-icon" sizes="72x72" href="{{asset('common/assets/img/favicons/apple-icon-72x72.png')}}">
	<link rel="apple-touch-icon" sizes="76x76" href="{{asset('common/assets/img/favicons/apple-icon-76x76.png')}}">
	<link rel="apple-touch-icon" sizes="114x114" href="{{asset('common/assets/img/favicons/apple-icon-114x114.png')}}">
	<link rel="apple-touch-icon" sizes="120x120" href="{{asset('common/assets/img/favicons/apple-icon-120x120.png')}}">
	<link rel="apple-touch-icon" sizes="144x144" href="{{asset('common/assets/img/favicons/apple-icon-144x144.png')}}">
	<link rel="apple-touch-icon" sizes="152x152" href="{{asset('common/assets/img/favicons/apple-icon-152x152.png')}}">
	<link rel="apple-touch-icon" sizes="180x180" href="{{asset('common/assets/img/favicons/apple-icon-180x180.png')}}">
	<link rel="icon" type="image/png" sizes="192x192" href="{{asset('common/assets/img/favicons/android-icon-192x192.png')}}">
	<link rel="icon" type="image/png" sizes="32x32" href="{{asset('common/assets/img/favicons/favicon-32x32.png')}}">
	<link rel="icon" type="image/png" sizes="96x96" href="{{asset('common/assets/img/favicons/favicon-96x96.png')}}">
	<link rel="icon" type="image/png" sizes="16x16" href="{{asset('common/assets/img/favicons/favicon-16x16.png')}}">
	<link rel="manifest" href="{{asset('common/assets/img/favicons/manifest.json')}}">
	<meta name="msapplication-TileColor" content="#ffffff">
	<meta name="msapplication-TileImage" content="assets/img/favicons/ms-icon-144x144.png">
	<meta name="theme-color" content="#ffffff">

	<!--==============================
	  Google Fonts
	============================== -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Baloo+2:wght@400;500;600;700;800&family=Jost:wght@300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700&display=swap"
		rel="stylesheet">


	<!--==============================
	    All CSS File
	============================== -->
	<!-- Bootstrap -->
	<link rel="stylesheet" href="{{asset('common/assets/css/bootstrap.min.css')}}">
	<!-- Fontawesome Icon -->
	<link rel="stylesheet" href="{{asset('common/assets/css/fontawesome.min.css')}}">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="{{asset('common/assets/css/magnific-popup.min.css')}}">
	<!-- Slick Slider -->
	<link rel="stylesheet" href="{{asset('common/assets/css/slick.min.css')}}">
	<!-- Nice Select -->
	<link rel="stylesheet" href="{{asset('common/assets/css/nice-select.min.css')}}">
	<!-- Theme Custom CSS -->
	<link rel="stylesheet" href="{{asset('common/assets/css/style.css')}}">

	@yield('headasset')
	
</head>
<body>

	@yield('content')
	
	<!--==============================
    All Js File
	============================== -->
	<!-- Jquery -->
	<script src="{{asset('common/assets/js/vendor/jquery-3.6.0.min.js')}}"></script>
	<!-- Slick Slider -->
	<script src="{{asset('common/assets/js/slick.min.js')}}"></script>
	<!-- Bootstrap -->
	<script src="{{asset('common/assets/js/bootstrap.min.js')}}"></script>
	<!-- Magnific Popup -->
	<script src="{{asset('common/assets/js/jquery.magnific-popup.min.js')}}"></script>
	<!-- Counter Up -->
	<script src="{{asset('common/assets/js/jquery.counterup.min.js')}}"></script>
	<!-- Circle Progress -->
	<script src="{{asset('common/assets/js/circle-progress.js')}}"></script>
	<!-- Range Slider -->
	<script src="{{asset('common/assets/js/jquery-ui.min.js')}}"></script>
	<!-- Isotope Filter -->
	<script src="{{asset('common/assets/js/imagesloaded.pkgd.min.js')}}"></script>
	<script src="{{asset('common/assets/js/isotope.pkgd.min.js')}}"></script>
	<!-- Tilt JS -->
	<script src="{{asset('common/assets/js/tilt.jquery.min.js')}}"></script>
	<!-- Tweenmax JS -->
	<script src="{{asset('common/assets/js/tweenmax.min.js')}}"></script>
	<!-- Nice Select JS -->
	<script src="{{asset('common/assets/js/nice-select.min.js')}}"></script>

	<!-- Main Js File -->
	<script src="{{asset('common/assets/js/main.js')}}"></script>
	@yield('jsscript')
</body>

</html>