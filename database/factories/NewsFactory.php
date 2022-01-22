<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class NewsFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            //
            'name' => $this->faker->sentence(3),
            'text' => $this->faker->paragraph(7),
            'image' => $this->faker->imageUrl(360, 360, 'animals', true, 'cats'),
            'date' => $this->faker->date('Y-m-d','now'),
            'city_id'=> $this->faker->numberBetween(1,2),
            'tags'=>'economy',   // example of tags  'politics', 'economy', 'weather', etc.
            

        ];
    }
}
