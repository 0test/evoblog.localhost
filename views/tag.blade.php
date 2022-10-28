@extends('layouts.app')

@section('content')
    <article class="post">
        <header>
            <div class="title">
				Посты по тегу
                <h1>{{ $documentObject['pagetitle']}}</h1>
            </div>
        </header>
        <section>
            {!! $documentObject['introtext'] !!}
        </section>
    </article>

    @foreach ($posts as $post)
		<article class="post">
			<header>
				<div class="title">
					<h2><a href="{{ urlProcessor::makeUrl($post['id'] ) }}">{{ $post['pagetitle'] }}</a></h2>
					<a href="{{ urlProcessor::makeUrl($post['id'] ) }}" class="image featured"><img src="{{ $post['post_mainphoto'] }}" alt="" /></a>
				</div>
			</header>
			{{ $post['introtext'] }}
		</article>  
    @endforeach

    {!! $modx->getPlaceholder('pages') !!}
@endsection
