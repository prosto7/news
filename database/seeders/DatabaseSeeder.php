<?php

namespace Database\Seeders;

use App\Models\City;
use App\Models\News;
use App\Models\NewsUser;
use App\Models\User;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(3)->create();
        // City::factory(3)->create();
        News::factory(10)->create();
        // NewsUser::factory(10)->create();
    }
}
