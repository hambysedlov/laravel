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
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="{{asset('bootstrap/js/bootstrap.min.js')}}"></script>
		
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body class="index">
		<div id="page-wrapper">

			<!-- Header -->
				<header id="header" class="alt">
				
					<h1 id="logo"><a href="{{ url('/') }}">CAR<span> is your life</span></a></h1>
					<nav id="nav">
					
					
						<ul>
							@section('menu')
							<li class="submenu">
								<a href="#">ВАШ ВЫБОР</a>
								<ul>
								@foreach($catalogs as $one)
									<li><a href="{{asset('catalog/'.$one->id)}}">{{$one->name}}</a></li>
									@endforeach
								</ul>
							</li>
							@show
							
						
                        <!-- Authentication Links -->
                        @if (Auth::guest())
                            <li><a href="{{ url('/login') }}">Login</a></li>
                            <li><a href="{{ url('/register') }}">Register</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu" role="menu">
                                    
									<li>
                                        <a href="{{ url('/home') }}"
                                          >
                                            Home
                                        </a>

                                    
                                    </li>
									<li>
                                        <a href="{{ url('/logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ url('/logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endif
                    </ul>
						
					</nav>
					
				</header>
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
			
			<script src="js/jquery.dropotron.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/jquery.scrollgress.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="js/main.js"></script>

	</body>
</html>