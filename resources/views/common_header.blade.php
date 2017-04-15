<header id="header" class="alt {{$extra_header_class}}">

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
