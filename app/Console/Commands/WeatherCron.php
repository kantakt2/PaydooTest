<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Http\Helpers\WeatherHelper;
use Illuminate\Support\Facades\Log;

class WeatherCron extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'weather:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Imports weather information';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        Log::info('Starting weather:cron job');
        $fileWeatherHelper = new WeatherHelper();
        $fileWeatherHelper->importWeather();
        return 0;
    }
}
