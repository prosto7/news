@extends('layouts.app')

@section('content')
            <h2 class="h2 text-dark">My News</h2>

                <h4>User: {{$users->login}}</h4>
             
                @foreach($users->news as $onenews)
                <li class="list-group-item one_news"><a href="{{route('news.show', $onenews)}}">{{$onenews->name}}</a>  <button class='btn btn-primary ml-3'>Add to Favorite</button></li>
                @endforeach

@endsection