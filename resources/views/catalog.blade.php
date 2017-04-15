@extends('layouts.base')
@section('menu')
@parent

@stop
@section('content')

			<!-- Banner -->

			<section id="banner" class="catalog">

			</section>
			
			<!-- Main -->
										
					<section id="catalog" class="wrapper style3 container special">
						<header class="major">						

						<h2>{{$catalog->name}}</h2>
						<i class="fa fa-car 8x"></i>
						<p>{!!$catalog->description!!}</p>
						</header>

							<div class="row sheet">
							@foreach($products as $one)
								<div class="col-md-4">
								<div class="element">
									<span>
										<img src="{{asset('uploads/'.$one->image)}}" style="">
									</span>
									<header>
										<h3>{{$one->name}}</h3>
									</header>
									<span class="price"><p>{{$one->price}}</p></span>

										<table class="table">
											<tbody>
												<tr>
													<td>Год выпуска</td>
													<td>{{$one->year_of_issue}}</td>
												</tr>
												<tr>
													<td>Тип топлива</td>
													<td>{{$one->fuel_type}}</td>
												</tr>
												<tr>
													<td>Объём двигателя</td>
													<td>{{$one->engine_capacity}}</td>
												</tr>
												<tr>
													<td>Цвет</td>
													<td>{{$one->color}}</td>
												</tr>
												<tr>
													<td>Трансмиссия</td>
													<td>{{$one->transmission}}</td>
												</tr>
												<tr>
													<td>Тип кузова</td>
													<td>{{$one->body_type}}</td>
												</tr>
												<tr>
													<td>Расход топлива</td>
													<td>{{$one->fuel_consumption}}</td>
												</tr>
												<tr>
													<td>Марка</td> 
													<td>{{$one->brand}}</td>
												</tr>
												<tr>
													<td>Опции</td>
													<td>{{$one->options}}</td>
												</tr>
											</tbody>
										</table>
												<ul class="buttons">
													<li><a href="#" class="button rent"><div class="text">Арендовать</div></a></li>
												</ul>
										</div>

								</div>

								@endforeach
							</div>							
					</section>					
						
				
@endsection