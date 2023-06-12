<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Order>
 */
class OrderFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'user_id' => $this->faker->numberBetween(1, 2),
            'code' => $this->faker->regexify('[A-Za-z0-9]{25}'),
            'total' => $this->faker->numberBetween(1, 100000),
            'description' => $this->faker->text(50),
            'payment_method' => $this->faker->word,
            'status' => $this->faker->randomElement(['pending', 'processing', 'completed']),
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'updated_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
        ];
    }
}
