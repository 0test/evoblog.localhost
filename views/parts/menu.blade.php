<section id="menu">
	<!-- Search -->
	<section>
		<form class="search" method="get" action="#">
			<input type="text" name="query" placeholder="Search" />
		</form>
	</section>

	<!-- Links -->
	<section>
		<ul class="links">
			@foreach ($menu[1] as $item)
				<li><a href="{{ urlProcessor::makeUrl($item['id']) }}">{{$item['pagetitle']}}</a></li>
			@endforeach
		</ul>
	</section>
</section>