@extends('layouts.app')

@section('content')
            <h2 class="h2 text-dark">My News</h2>

                <h4>City: {{$cities->city}}</h4>
          
                @foreach($city_news as $onenews)

                <li class="list-group-item one_news"><a href="">{{$onenews->name}}</a>  <button class='btn btn-primary ml-3'>Add to Favorite</button></li>

                @endforeach

@endsection