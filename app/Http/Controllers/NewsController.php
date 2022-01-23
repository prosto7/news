<?php

namespace App\Http\Controllers;

use App\Models\City;
use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    //
    public function index(Request $request)
    {
            $all_news = News::query();
            if (request('term')) {
                $all_news->where('name', 'Like', '%' . request('term') . '%');
            }
            $news = $all_news->orderBy('id', 'ASC')->paginate(50);

           return view('news', compact('news'));

    }

    public function show(Request $request, News $news)

    {
       
           $news_tag = $news->tags;
           $all_news = News::query();
           $related_news =  $all_news->where('tags', 'Like', '%' . $news_tag . '%')->orderBy('id', 'DESC')->paginate(10);

            return view('show', compact('news','related_news'));
          
    }


    // public function getMyNews(){

    //     $user = 1;

    //         $users = \App\Models\User::all();
    //         // dd($users);

    //     return view('mynews',compact('users'));

    //     //     $news = DB::table('news')->where('user_id', '=', $user)->get();
    //     //     $news = json_decode($news);
 
        


    // }
}

