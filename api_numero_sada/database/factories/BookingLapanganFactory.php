<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Model>
 */
class BookingLapanganFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition()
    {
        return [
            'user_id' => $this->faker->numberBetween(1, 10),
            'lapangans_id' => $this->faker->numberBetween(1, 2),
            'Opsi Pembayaran' => $this->faker->randomElement(['Down Payment', 'Paid Off']),
            'status' => $this->faker->randomElement(['pending', 'Approved', 'Denied']),
            'start_play' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'end_play' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'created_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'updated_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
            'deleted_at' => $this->faker->dateTimeBetween('-1 year', 'now'),
        ];
    }
}
