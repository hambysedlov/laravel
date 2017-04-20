<!DOCTYPE HTML>
<!--
	Twenty by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>CAR is your road</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="{{asset('bootstrap/css/bootstrap.min.css')}}" />
		<link rel="stylesheet" href="{{asset('css/main.css')}}" />
		<script type="text/javascript" src="{{asset('js/jquery.min.js')}}"></script>
		<script type="text/javascript" src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
    	<script type="text/javascript" src="{{asset('js/jquery.mask.min.js')}}"></script>
		
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="index">
		<div id="page-wrapper">

		<!-- Header -->

			@include(
				'common_header', 
				array('extra_header_class' => (isset($extra_header_class) ? $extra_header_class : null))
			)
		
			@yield('content')

			<!-- Footer -->

			<section id="banner-bottom">
				<footer id="footer">


					<ul class="icons">
						<li><a href="https://twitter.com/" target="_blank" class="icon circle fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="https://facebook.com/" target="_blank" class="icon circle fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="https://plus.google.com/" target="_blank" class="icon circle fa-google-plus"><span class="label">Google+</span></a></li>
						<li><a href="https://github.com/" target="_blank" class="icon circle fa-github"><span class="label">Github</span></a></li>
						<li><a href="https://vk.com/" target="_blank" class="icon circle fa-vk"><span class="label">Vk</span></a></li>
					</ul>

					<ul class="copyright">
						<li>&copy; BSUIR 2017</li><li>Design: <a href="#">MyDesign</a></li>
					</ul>

				
				</footer>
			</section>
		</div>

		<!-- Scripts -->
			
		<script src="{{asset('js/jquery.dropotron.min.js')}}"></script>
		<script src="{{asset('js/jquery.scrolly.min.js')}}"></script>
		<script src="{{asset('js/jquery.scrollgress.min.js')}}"></script>
		<script src="{{asset('js/skel.min.js')}}"></script>
		<script src="{{asset('js/util.js')}}"></script>

		<script src="{{asset('js/main.js')}}"></script>

	</body>
</html>