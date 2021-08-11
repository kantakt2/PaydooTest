<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Weather extends Model
{
    use HasFactory;
    protected $fillable = [
        'added_at', 'station_id', 'city_id', 'temperture_celsius', 'humidity',
        'wind', 'rain', 'light', 'battery_level'
        ];
        protected $hidden = [
        'created_at', 'updated_at',
        ];
}
