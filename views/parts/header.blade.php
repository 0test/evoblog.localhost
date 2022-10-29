<header id="header">
	<div class="site-name"><a href="/">Блог о всяком</a></div>
	<nav class="links">
		<ul>
			@foreach ($menu[1] as $item)
				<li><a href="{{ urlProcessor::makeUrl($item['id']) }}">{{$item['pagetitle']}}</a></li>
			@endforeach
		</ul>
	</nav>
	<nav class="main">
		<ul>
			<li class="search">
				<a class="fa-search" href="#search">Поиск</a>
				<form id="search" method="get" action="{{urlProcessor::makeUrl(26)}}">
					<input type="text" name="search" placeholder="Найти" />
				</form>
			</li>
			<li class="menu">
				<a class="fa-bars" href="#menu">Menu</a>
			</li>
		</ul>
	</nav>
</header>