@extends('layouts.app')

@section('content')
    <article class="post">
        <header>
            <div class="title">
                <h1>{{ $documentObject['pagetitle']}}</h1>
                <div class="image featured">
                    <img src="{{ $documentObject['post_mainphoto'] }}" alt="">
                </div>
            </div>
        </header>
        <section>
            {!! $documentObject['content'] !!}
        </section>
        <footer>
            <ul class="stats">
                @foreach ($tags as $tag)
                    <li><a href="{{ urlProcessor::makeUrl($tag['id'] ) }}" class="icon solid fa-tag">{{ $tag['pagetitle']}}</a></li>    
                @endforeach
            </ul>
        </footer>
    </article>
@endsection
