<header id="header" class="alt {{$extra_header_class}}">

	<h1 id="logo"><a href="{{ url('/') }}">CAR<span> is your life</span></a></h1>
	<nav id="nav">
	
	
		<ul>
		
			@section('menu')
			<li class="submenu dropdown">
			
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">ВАШ ВЫБОР</a>
				
				<ul class="dropdown-menu" role="menu">
					<form>
					@if (Auth::guest())
						@foreach($catalogs as $one)
							<a href="{{asset('catalog/'.$one->id)}}">{{$one->name}}</a>
						@endforeach
					</form>

					@else
						<form method="post" action="subscribe">
							{!!csrf_field()!!}
								@foreach($catalogs as $one)
									<li>
										<input type="checkbox" name="{{$one->id}}" value="{{$one->id}}">
										<a href="{{asset('catalog/'.$one->id)}}">{{$one->name}}</a>
									</li>
								@endforeach
							<input type="submit" name="send" value="Подписаться">
						</form>	
					@endif
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
                        <a href="{{ url('/home') }}">Home</a>
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
