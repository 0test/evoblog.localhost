@extends('layouts.app')

@section('content')

    @foreach ($posts as $post)
    <article class="post">
        <header>
            <div class="title">
                <h2><a href="{{ urlProcessor::makeUrl($post['id'] ) }}">{{ $post['pagetitle'] }}</a></h2>
                <a href="{{ urlProcessor::makeUrl($post['id'] ) }}" class="image featured"><img src="{{ $post['post_mainphoto'] }}" alt="" /></a>
            </div>
        </header>
        {{ $post['introtext'] }}
        <footer>
            <ul class="stats">
                @foreach ($post['post_tags_custom'] as $post_tag)
                    <li><a href="{{ urlProcessor::makeUrl($post_tag['id'] ) }}" class="icon solid fa-tag">{{ $post_tag['pagetitle'] }}</a></li>
                @endforeach
            </ul>
        </footer>
    </article>  
    @endforeach

    {!! $modx->getPlaceholder('pages') !!}


@endsection
