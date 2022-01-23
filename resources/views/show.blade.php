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

        @foreach($relatedNews as $relatedOneNews)
        <div class="out_related_block">
            <div class="related_onenews m-3">
                <div class="related_news_col"><a href="{{route('news.show', $relatedOneNews)}}">
                        <h4>{{$relatedOneNews->name}}</h4>
                    </a></div>

                <div class="related_news_col">
                    <span class="date_news">{{$relatedOneNews->date}}</span>
                    <img src="{{$relatedOneNews->image}}" alt="">
                </div>

            </div>
        </div>
        @endforeach

    </div>
</div>

@endsection