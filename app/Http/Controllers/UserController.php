<?php

namespace App\Http\Controllers;

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

}
