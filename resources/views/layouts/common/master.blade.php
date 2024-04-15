<!-- Code Cruise Master -->
<!doctype html>
<html class="no-js" lang="zxx">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Codecruise | @yield('title')</title>
	<meta name="author" content="themeholy">
	<meta name="description" content="Code-Cruise - Dynamic Tech Education Platform ">
	<meta name="keywords" content="Code-Cruise - Online Courses & Education">
	<meta name="robots" content="INDEX,FOLLOW">
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!-- Favicons - Place favicon.ico in the root directory -->
	<link rel="shortcut icon" href="{{asset('common/assets/img/favicon.png')}}" type="image/x-icon">
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
	@if(session('msg'))
	<div class="position-fixed top-50 start-50 translate-middle" style="width: 50%; height: 8%;z-index:9999;">
		<div class="alert alert-{{ session('status') }} alert-dismissible fade show text-center" role="alert"
			style="height: 100%;padding:2%;font-size: 30px;background-color: azure;">
			{{ session('msg') }}
			<button style="color: black;font-weight: bold;" type="button" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close">X</button>
		</div>
	</div>
	@endif

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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	@yield('jsscript')
	<script>
		$(document).ready(function () {
			$('.searchIP').on('keyup', function () {
				var query = $(this).val();
				if (query.length >= 1) {
					$.ajax({
						url: "{{ route('search-course') }}",
						type: 'GET',
						data: {
							query: query
						},
						success: function (data) {
							var html = ``;
							if (data.length > 0) {
								$.each(data, function (index, item) {
									html += `<div class="searchDiv"><a href="${item.url}" class="searchDivLink">${item.name}</a></div>`;
								});
							} else {
								html += `<div class="searchDiv">No results found</div>`;
							}
							$('#searchResults').html(html);
						}
					});
				} else {
					$('#searchResults').empty();
				}
			});
		});

	</script>
</body>

</html>