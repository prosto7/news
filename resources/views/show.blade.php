@extends('layouts.app')

@section('title', 'News'.$news->name)

@section('content')



<a type="button" class="btn btn-info mb-3" href="{{ route('news.index')}}">Back to list of news</a>

<div class="container p-2">
    <div class="row  block_onenews">
        <div class="col mt-5 main_news_image">
         
            <img src="{{$news->image}}" alt="">
        </div>
        <div class="col">
        <h2>{{$news->name}}</h2>

            <p class="mt-5">{{$news->text}}</p>
            <span class="date_main_news">{{$news->date}}</span>
        </div>
</div>
<h4 class="m-5 tags">#{{$news->tags}}</h4>
<div class="row mt-5 block_related_news">
   
    @foreach($related_news as $related_onenews)
    <div class="out_related_block">
    <div class="related_onenews m-3">
    <div class="related_news_col"><h4>{{$related_onenews->name}}</h4></div>

    <div class="related_news_col">
        <span class="date_news">{{$related_onenews->date}}</span>
            <img src="{{$related_onenews->image}}" alt=""></div>
 
    </div>
    </div>
@endforeach

</div>


</div>     

@endsection