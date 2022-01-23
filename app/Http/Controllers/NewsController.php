<?php

namespace App\Http\Controllers;


use App\Models\News;
use App\Models\NewsUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    //
    public function index(Request $request)
    {
            $allNews = News::query();
            if (request('term')) {
                $allNews->where('name', 'Like', '%' . request('term') . '%');
            }
            $news = $allNews->orderBy('id', 'ASC')->paginate(50);

           return view('news', compact('news'));

    }

    public function show(Request $request, News $news)

    {
       
           $newsTags = $news->tags;
           $allNews = News::query();
           $relatedNews =  $allNews->where('tags', 'Like', '%' . $newsTags . '%')->orderBy('id', 'DESC')->paginate(10);

            return view('show', compact('news','relatedNews'));
          
    }


    public function store(Request $request)
    {

        NewsUser::create($request->only(['user_id','news_id']));

        
        return redirect()->route('mynews')->withSuccess('Added News to favourite '.$request->name);

    }


}

