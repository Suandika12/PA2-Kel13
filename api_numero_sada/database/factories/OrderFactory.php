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
            'user_id' => $this->faker()->mt_rand(1, 50),
            'code' => $this->faker()->create(25),
            'total' => $this->faker()->mt_rand(1, 100000),
            'description' => $this->faker()->create(50), // password
            'payment_method' => $this->faker()->create(25),
            'status' => $this->faker()->create(25),
            'created_at' => date('H:i:s', rand(1,54000)),
            'updated_at' => date('H:i:s', rand(1,54000)),
        ];
    }
}
