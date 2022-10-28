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
        @include('parts.post', $post)
    @endforeach

    {!! $modx->getPlaceholder('pages') !!}
@endsection
