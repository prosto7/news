@extends('layouts.app')

@section('title', 'News'.$news->name)

@section('content')


<a type="button" class="btn btn-info mb-3" href="{{ route('news.index')}}">Back to news list</a>

<div class="container p-2">
    <div class="row  block_onenews">
        <div class="col mt-5">
         
            <img src="{{$news->image}}" alt="">
        </div>
        <div class="col">
        <h2>{{$news->name}}</h2>

            <p class="mt-5">{{$news->text}}</p>
        </div>
</div>
<div class="row mt-5">
    <div class="col related_news_col">Hi</div>
    <div class="col related_news_col">Hi</div>
    <div class="col related_news_col">Hi</div>


</div>


</div>     

@endsection