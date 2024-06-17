<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Listing>
 */
class ListingFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'title'=>$this->faker->sentence(),
            'tags'=>'Laravel, PHP, JavaScript',
            'company'=>$this->faker->company(),
            // 'Location'=>$this->faker->city(),
            'location'=>$this->faker->city(),
            'email'=>$this->faker->companyEmail(),
            'website'=>$this->faker->url(),
            'body'=>$this->faker->paragraph(5),
        ];
    }
}
