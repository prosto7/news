<?php

namespace Database\Factories;

use App\Models\NewsUser;
use Illuminate\Database\Eloquent\Factories\Factory;

class NewsUserFactory extends Factory
{

    protected $model = NewsUser::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            'user_id'=> $this->faker->numberBetween(1,3),
            'news_id'=> $this->faker->numberBetween(1,10),
        ];
    }
}
