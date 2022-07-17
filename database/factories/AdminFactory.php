<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class AdminFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name'              => $this->faker->name(),
            'email'             => 'quicktechitltd@gmail.com',
            'email_verified_at' => now(),
            'password'          => '$2y$10$97DrqJQUP4v/oR3NYbajOeHb9EIkvvRsgnlZDBr93FBekKz2AQcFO', // quicktechitltd@
            'remember_token' => Str::random(10),
            'phone'             => Str::random(10),
            'address'           => Str::random(10),
            'status'            => 1,
        ];
    }
}
