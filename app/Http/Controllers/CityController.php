<?php

namespace App\Http\Controllers;

use App\Models\City;
use Illuminate\Http\Request;

class CityController extends Controller
{
   
            public function getCityNews($city_id)
            {
                   
                $cities = City::find($city_id);

                $city_news = $cities->where('сity_id',$city_id);

                $news = $cities->news;

                return view('news',compact('cities','news'));
        
            }
}
