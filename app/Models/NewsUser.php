<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NewsUser extends Model
{
    protected $fillable = ['news_id', 'user_id'];
    protected $table = 'news_user';
    use HasFactory;
   
    public function news(){
        return $this->belongsTo(News::class);
    }
}
