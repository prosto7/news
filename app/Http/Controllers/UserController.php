<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\NewsUser as NewsUser;
use App\Models\User;

use Illuminate\Http\Request;

class UserController extends Controller
{
    //

    public function getMyNews() {
    
// дописать выбор новостей под залогиненного пользователя
        $users = User::find(1);

        return view('mynews',compact('users'));

    }

    public function like($news_id) {

        if (!NewsUser::where(['news_id'=>$news_id,'user_id'=>1])->first())
        {
            NewsUser::create(['news_id'=>$news_id, 'user_id'=>1]);

        }

        return redirect()->route('mynews');
    }

}
