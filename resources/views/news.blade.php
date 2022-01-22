@extends('layouts.app')

@section('content')

    
        <ul class="list-group main_list">
        
        @foreach($news as $onenews)
            <li class="list-group-item one_news"><a href="{{route('news.show', $onenews)}}">{{$onenews->name}}</a>  <button class='btn btn-primary ml-3'>Add to Favorite</button></li>
            @endforeach
           
     
        </ul>




@endsection