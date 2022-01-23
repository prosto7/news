<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{

   

    use HasFactory;
    public function users()
    {
        return $this->belongsToMany(User::class);
    }
    public function cities()
    {
        return $this->belongsTo(City::class);
    }

    public function favourite(){
        $user = 1;
        return $this->belongsTo(NewsUser::class,'id','news_id')->where('user_id',$user);
    }

    public function like() {
        return $this->favourite()->selectRaw('news_id,count(*) as count')->groupBy('news_id');
    }

}
