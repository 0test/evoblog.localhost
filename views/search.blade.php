@extends('layouts.app')

@section('content')
	<article class="post">
		<header>
			<div class="title">
				<h1>Поиск по сайту</h1>
			</div>
		</header>
	</article>
	@foreach ($search_result as $result)
		<article class="post">
			<header>
				<div class="title">
					<h3><a href="{{ urlProcessor::makeUrl($result->id ) }}">{!! $result->pagetitle !!}</a></h3>
					<div class="featured image">
						<img src="{{ $result->post_mainphoto}}" alt="">
					</div>
				</div>
			</header>
			<p>{!! $result->extract !!}</p>
		</article>
	@endforeach
@endsection