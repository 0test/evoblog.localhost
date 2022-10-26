@extends('layouts.app')

@section('content')
    <article class="post">
        <header>
            <div class="title">
                <h1>{{ $documentObject['pagetitle']}}</h1>
            </div>
        </header>
        <section>
            {!! $documentObject['content'] !!}
        </section>
    </article>
@endsection
