@extends('layouts.app')

@section('content')
<h2 class="h2 text-dark">My News</h2>

<h4>User: {{$users->login}}</h4>
<a type="button" class="btn btn-info mb-3" href="{{ route('news.index')}}">Back to list of news</a>
    @foreach($users->news as $onenews)
        <li class="list-group-item one_news"><a href="{{route('news.show', $onenews)}}">{{$onenews->name}}</a> <button class='btn btn-danger ml-3'>Delete from Favorite</button></li>
    @endforeach

@endsection