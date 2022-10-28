@extends('layouts.app')
@section('content')
    @foreach ($tags as $tag)
    <article class="tag">
        <header>
            <div class="title">
                <h2><a href="{{ urlProcessor::makeUrl($tag['id'] ) }}">{{ $tag['pagetitle'] }}</a></h2>
            </div>
        </header>
        {{ $tag['introtext'] }}
    </article>  
    @endforeach
    {!! $modx->getPlaceholder('pages') !!}
@endsection