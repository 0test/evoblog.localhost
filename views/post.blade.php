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
                <li><a href="/tags/afrika" class="icon solid fa-tag">Африка</a></li>
                <li><a href="/tags/afrika" class="icon solid fa-tag">Африка</a></li>

                <li><a href="#" class="icon solid fa-heart">28</a></li>
                <li><a href="#" class="icon solid fa-comment">128</a></li>
            </ul>
        </footer>
    </article>
@endsection
