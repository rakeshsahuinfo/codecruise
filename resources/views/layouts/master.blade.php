<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">
	<title>@yield('title')</title>
	<meta content="" name="description">
	<meta content="" name="keywords">
	<!-- Favicons -->
	<!-- Google Fonts -->
	<link
		href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,600,600i,700,700i,900"
		rel="stylesheet">
	<!-- Vendor CSS Files -->
	<link href="{{asset('assets/vendor/bootstrap/css/bootstrap.min.css')}}" rel="stylesheet">
	<link href="{{asset('assets/vendor/bootstrap-icons/bootstrap-icons.css')}}" rel="stylesheet">
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
	<!-- Template Main CSS File -->
	<link rel="shortcut icon" href="{{asset('assets/img/logo/favicon.png')}}" type="image/x-icon">
	<link href="{{asset('assets/css/style.css')}}" rel="stylesheet">

	@yield('headasset')
</head>

<body>
	@if(session('msg'))
	<div class="position-fixed top-50 start-50 translate-middle" style="width: 50%; height: 5%;z-index:9999">
		<div class="alert alert-{{ session('status') }} alert-dismissible fade show text-center" role="alert" style="height: 100%;padding:5%">
			{{ session('msg') }}
			<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
		</div>
	</div>
	@endif

	@yield('content')

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
			class="bi bi-arrow-up-short"></i></a>
	<script src="{{asset('assets/js/index.js')}}"></script>
	<script src="{{asset('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
	<script src="{{asset('assets/js/main.js')}}"></script>
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
	<script>
		AOS.init();
	</script>
	@yield('jsscript')
</body>

</html>