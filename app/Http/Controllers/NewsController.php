<?php

namespace App\Http\Controllers;

use App\Models\News;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class NewsController extends Controller
{
    //
    public function index(Request $request)
    {
            $news = News::query();
            // // dd($news);
            // return view('news',compact('news'));

            if (request('term')) {
                $news->where('name', 'Like', '%' . request('term') . '%');
            }
           $news = $news->orderBy('id', 'DESC')->paginate(10);


           return view('news', compact('news'));



            // $search_news = News::where([
            //     ['name', '!=' , Null],
            //     [function($query) use ($request) {
            //         if(($term=$request->term)) {
            //         $query->orWhere('name', 'LIKE', '%'.$term.'%')->get();
                  
            //     }
            //   }]
            // ])
            // ->orderBy("id","desc")
            // ->paginate(10);
            // dd($search_news);
            // return view('news', compact('news'))->with('i',(request()->input('page',1)-1)*5);
    }

    public function show(News $news)
    {
           
            return view('show', compact('news'));
    }


    public function search()
    {

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

