@extends('layouts.app')

@section('content')
 
    <h2 class="h2 text-dark">All News</h2>
        <div class="row">
            <a class="mr-5"href="{{ route('news.city',[1]) }}" ><h2>City one</h2></a>
            <a class="mr-5" href="{{ route('news.city',[2]) }}"><h2>City two</h2></a>
            <a class="mr-5" href="{{ route('news.index')}}"><h2>All News</h2></a>
            </div>
      
        <ul class="list-group main_list">
 
        @foreach($news as $onenews)
            <li class="list-group-item one_news"><a href="{{route('news.show', $onenews)}}">{{$onenews->name}}</a>  <button class='btn btn-primary ml-3'>Add to Favorite</button></li>
        @endforeach
           
        </ul>

@endsection