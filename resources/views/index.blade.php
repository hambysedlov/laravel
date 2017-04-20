@extends('layouts.base')
@section('menu')
@parent

@stop
@section('content')

<!-- Banner -->
<section id="banner">

	<!--
		".inner" is set up as an inline-block so it automatically expands
		in both directions to fit whatever's inside it. This means it won't
		automatically wrap lines, so be sure to use line breaks where
		appropriate (<br />).
	-->
	<div class="inner">
		<header>
			<h2>CARS for You</h2>
		</header>

		<div class="instructions">
			<h3>Как взять авто в аренду?</h3>
			<ul>
				<li><i class="fa fa-phone"></i> <span><a href="javascript:void(0);"  id="call">Звонок</a> и/или встреча в офисе</span></li>
				<li><i class="fa fa-desktop"></i> <span>Выбор авто по каталогу, осмотр на стоянке</span></li>
				<li><i class="fa fa-file-text-o"></i> <span>Заключение договора аренды и передача автомобиля клиенту</span></li>
			</ul>
		</div>
		
		<footer>
			<ul class="buttons vertical">
				<li><a href="#main" class="button fit scrolly">Выбрать автомобиль</a></li>
			</ul>
		</footer>
	</div>
</section>

<!-- Main -->

<section id="advantages" class="wrapper style3 container special">
	<header class="major">
		<h2><strong>Преимущества </strong>работы с нами</h2>
	</header>

	<div class="row special-row">
		<div class="col-xs-6 col-md-4">
			<i class="fa fa-clock-o fa-8x" aria-hidden="true"></i>
		</div>
		<div class="col-xs-12 col-md-8">
			<section>
				<header>
					<h3>Комфорт и оперативность</h3>
				</header>
				<p>Нужно встретить родственников и друзей в аэропорту? Ожидаете прибытия важных партнеров или потенциальных клиентов? Важно не терять мобильности, даже не имея возможности пользоваться собственным транспортом? Встретим, доставим и разместим любое количество пассажиров — прокат машин в Минске для путешествий с максимальным комфортом</p>
			</section>
		</div>
	</div>

	<div class="row special-row">
		<div class="col-xs-12 col-md-8">
			<section>
				<header>
					<h3>Лучшие цены</h3>
				</header>
				<p>Аренда машин становится доступнее — мы подберем подходящий автомобиль, вне зависимости от сложности поставленной задачи. Доступны и недорогие, и роскошные модели — каждый клиент сам выбирает то, что ему предпочтительнее</p>
			</section>
		</div>
		<div class="col-xs-6 col-md-4">
			<i class="fa fa-money fa-8x" aria-hidden="true"></i>
		</div>
	</div>
	
	<div class="row special-row">
		<div class="col-xs-6 col-md-4">
			<i class="fa fa-wrench fa-8x"></i>
		</div>
		<div class="col-xs-12 col-md-8">
			<section>
				<header>
					<h3>Полный технический контроль</h3>
				</header>
				<p>Благодаря наличию собственного автопарка, мы можем гарантировать исправность каждого представленного транспортного средства. Благодаря этому прокат машин действительно выгоден — можно забронировать понравившееся авто на нужный срок, не сомневаясь в его отличном техническом состоянии. Наши клиенты наслаждаются безупречной ездой, а все остальное — наши хлопоты</p>
			</section>
		</div>
	</div>

	<div class="row special-row">
		<div class="col-xs-12 col-md-8">
			<section>
				<header>
					<h3>Помощь в выборе</h3>
				</header>
				<p>Наши консультанты тщательно подбирают каждый автомобиль, в зависимости от выдвинутых клиентом критериев. Организуем кортеж из элитных моделей бизнес-класса или же поможем выбрать быстрое и маневренное авто. Машина напрокат — это удобно, мы готовы предложить лучшие условия</p>
			</section>
		</div>
		<div class="col-xs-6 col-md-4">
			<i class="fa fa-info-circle fa-8x"></i>
		</div>
	</div>

	<footer class="major">
		<ul class="buttons">
			<li><a href="#" class="button"><div class="text">Узнать больше</div></a></li>
		</ul>
	</footer>
</section>

<div class="pop-up"> 
	<span>Закажите звонок</span>

	<p><input type="text" name="phone" class="phone-mask" placeholder="+37544" /></p>
	<p><input type="submit"  value="Отправить" style="margin: 0 auto; display: block;" /></p>
	
	<div class="close-pop-up">&times;</div>
</div>

<div class="pop-up-container"></div>

@endsection