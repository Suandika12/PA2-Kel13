<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\User>
 */
class UserFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'name' => fake()->name(),
            'email' => fake()->unique()->safeEmail(),
            'phone' => '0' . str_pad($this->faker->numberBetween(1, 9999), 4, '0', STR_PAD_LEFT) . str_pad($this->faker->numberBetween(1, 9999), 4, '0', STR_PAD_LEFT),
            'nik' => str_pad($this->faker->numberBetween(1, 9999), 4, '0', STR_PAD_LEFT) . str_pad($this->faker->numberBetween(1, 9999), 4, '0', STR_PAD_LEFT) . str_pad($this->faker->numberBetween(1, 99), 2, '0', STR_PAD_LEFT) . str_pad($this->faker->numberBetween(1, 99), 2, '0', STR_PAD_LEFT),
            'email_verified_at' => now(),
            'password' => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', // password
            'remember_token' => Str::random(10),
        ];
    }

    /**
     * Indicate that the model's email address should be unverified.
     *
     * @return static
     */
    public function unverified()
    {
        return $this->state(fn (array $attributes) => [
            'email_verified_at' => null,
        ]);
    }
}
