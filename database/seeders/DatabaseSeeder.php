<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\Listing;
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
        //creating a random user for random jobs
        $user = User::factory()->create([
          'name'=>'John Doe',
          'email'=>'john@gmail.com'
        ]);

        //creating random listings with the random user id
        Listing::factory(10)->create([
          'user_id'=> $user->id
        ]);

         /*Listing::create([
            'title'=>'Laravel Developer',
            'tags'=>'Laravel, PHP',
            'company'=>'Awesome Company',
            'Location'=>'Remote',
            'email'=>'employer@example,com',
            'website'=>'google.com',
            'body'=>'body01'
         ]);*/

        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
    }
}
