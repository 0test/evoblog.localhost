@extends('layouts.app')

@section('content')
    @foreach ($posts as $post)
        @include('parts.post',$post)
    @endforeach
@endsection
