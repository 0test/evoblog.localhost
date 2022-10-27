@extends('layouts.app')

@section('content')
    @foreach ($posts as $post)
    <article class="post">
        <header>
            <div class="title">
                <h2><a href="{{ urlProcessor::makeUrl($post['id'] ) }}">{{ $post['pagetitle'] }}</a></h2>
                <a href="{{ urlProcessor::makeUrl($post['id'] ) }}" class="image featured">
                    <img src=" {{ $post['post_mainphoto'] }}" alt="" />
                </a>
            </div>
        </header>
        {{ $post['introtext'] }}
        <footer>
            <ul class="stats">
                <li><a href="/tags/afrika" class="icon solid fa-tag">Африка</a></li>
                <li><a href="#" class="icon solid fa-heart">28</a></li>
                <li><a href="#" class="icon solid fa-comment">128</a></li>
            </ul>
        </footer>
    </article>
    @endforeach

@endsection
