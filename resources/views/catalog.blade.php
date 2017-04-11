@extends('layouts.base')
@section('menu')
@parent

@stop
@section('content')

			<!-- Banner -->
			<header class="special container">
			</header>

			<!-- Main -->
			<div id="page-wrapper">
				<article id="main">
				<header class="special container">
						<span class="icon fa-bar-chart-o"></span>
						<h2>Лучшие наши<strong>машины</strong>, собраны тут для вас
						<br />
						</h2>
						<p>Откройте для себя <strong>наши машины</strong> лучшее в своем деле для вашего удобства
						<br />
					От вас ничего не требуется, вы выбираете ее, мы отдаем ее вам
						<br />
						
					</header>
					<header id="header" class="alt">
				<h1 id="logo"><a href="{{ url('/') }}">CAR<span> is your life</span></a></h1>
					<nav id="nav">
				</nav></header>
				@foreach($products as $one)
<section class="wrapper style1 container special">
							<div class="row">
								<div class="4u 12u(narrower)">
									<section>
										<span class=""><img src="{{asset('uploads/'.$one->image)}}" style="width:200px;"></span>
										<header>
											<h3>{{$one->name}}</h3>
										</header>
										<p style="">{{$one->price}}</p>
										<p>{!!$one->description!!}</p>
									</section>

								</div>
								</section>
																
							</div>
						</section>
						
					@endforeach
					</div>
					
				</article>
</div>
			<!-- CTA -->
				
				
@endsection