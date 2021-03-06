<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::redirect('/', 'news');

Route::resource('news', NewsController::class);

Route::get('/news/city/{city_id}', [CityController::class, 'getCityNews'])->name('news.city');

Route::get('/favourite-news', [UserController::class, 'getMyNews'])->name('mynews');

Route::get('/like/{news_id}', [UserController::class, 'like'])->name('user.like');