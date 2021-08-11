<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Helpers\WeatherHelper;
use Illuminate\Support\Facades\Log;

class WeatherController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //TODO add showing of all records
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //TODO create custom logic for adding
        // information from external weather station
        // Test
        $weatherHelper = new WeatherHelper();
        $weatherHelper->importWeather();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Request $request)
    {
        if ($request->isMethod('post')) {
    
            $this->validate($request, [ 
                'action' => 'required'
            ]);

            if($request->input('action') == 'information')
            {
                $this->validate($request, [ 
                    'action' => 'required',
                    'station' => 'required',
                    'time' => 'required'
                ]);    

                $from = new \DateTime($request->input('time'));
                Log::info(
                    'API call for get information to '
                    .$from->format('Y-m-d H:i:s').
                    ' date/time'
                );
                $from->sub(new \DateInterval('PT1800S'));
                $to = new \DateTime($request->input('time'));
                $to->add(new \DateInterval('PT1800S'));  
                // DB::enableQueryLog();
                $stationInformation = DB::table('weather')
                                        ->where('station_id', $request->input('station'))
                                        ->whereBetween('added_at', [$from, $to])
                                        ->first();
                // dd(DB::getQueryLog()); 
                return $stationInformation;
                // TODO add a clear answer in case of a non-existent date/time
                // TODO return only necessary data
            } else if ($request->input('action') == 'average')
            {
                $this->validate($request, [ 
                    'action' => 'required',
                    'date' => 'required',
                ]);    
                $date = new \DateTime($request->input('date'));
                $date = $date->format('Y-m-d');
                Log::info('API call for getting average information for ' . $date);
                $average = DB::table('weather')
                                    ->select(
                                        DB::raw('AVG(temperture_celsius) AS avg_temp'),
                                        DB::raw('AVG(humidity) AS avg_humidity'),
                                        DB::raw('AVG(wind) AS avg_wind')
                                        )
                                    ->whereDate('added_at', '=', $date)
                                    ->get();
                return $average;
                // TODO add a clear answer in case of a non-existent date
            } else if ($request->input('action') == 'last_date')
            {
                Log::info('API Call to get information about last avilable date');
                $last_date = DB::table('weather')
                                    ->max('added_at');
                return $last_date;
                //TODO make answer in json format
            }
        }

        // TODO add an answer in case of incorrect post parameters
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //TODO update weather station record
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //TODO delete record from weather station
    }
}
