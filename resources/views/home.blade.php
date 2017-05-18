@extends('layouts.base')
@section('menu')
@parent

@stop
@section('content')

<!-- Banner -->

<section id="banner" class="catalog"></section>

<!-- Main -->


<section id="homepage" class="wrapper style3 container special">
	<div class="row">
		<div class="col-sm-12">
			<h3>Добро пожаловать в кабинет, <span>{{ Auth::user()->name }}</span>!</h3>
		</div>
	</div>

	<ul class="nav nav-tabs">
 		<li class="active"><a data-toggle="tab" href="#user">Информация о пользователе</a></li>
		<li><a data-toggle="tab" href="#subscribes">Подписки</a></li>
	</ul>

	<div class="tab-content">
		<div id="user" class="tab-pane fade in active">       
			<table class="table table-striped">
				<tbody>
				  <tr>
				    <td>Имя пользователя:</td>
				    <td>{{ Auth::user()->name }}</td>
				  </tr>
				  <tr>
				    <td>e-mail</td>
				    <td>{{ Auth::user()->email }}</td>
				  </tr>
				  <tr>
				    <td>Зарегестрирован:</td>
				    <td>{{ Auth::user()->created_at }}</td>
				  </tr>
				</tbody>
			</table>
		</div>
		<div id="subscribes" class="tab-pane fade">
			<table class="table table-striped">
				<tbody>
				  <tr>
				    <td>Вы подписаны на: </td>
				    <td></td>
				  </tr>
				</tbody>
			</table>
		</div>
	</div>

</section>


@endsection