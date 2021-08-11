<?php

namespace Database\Factories;

use App\Models\Weather;
use Illuminate\Database\Eloquent\Factories\Factory;

class WeatherFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = Weather::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        $city = random_int(1,2);
        return [
            'added_at' => now(),
            'station_id' => $city,
            'city_id' => $city,
            'temperture_celsius' => rand(0, 100), 
            'humidity' => rand(0, 100),
            'wind' => rand(0, 100),
            'rain' => rand(0, 100),
            'light' => rand(0, 100),
            'battery_level' => rand(0, 100)
        ];
    }
    
}
