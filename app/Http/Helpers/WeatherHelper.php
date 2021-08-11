<?php
namespace App\Http\Helpers;
use App\Http\Helpers\FileWeatherImporter;
use Illuminate\Support\Facades\Log;

class WeatherHelper {

    public function importWeather() {

        $dateTime = new \DateTime();
        $date = $dateTime->format('Y-m-d');
        $alternativeDate = $dateTime->format('d-m-Y');
        $fileMask = base_path().'/data/' . $date.'.*';
        $files = glob($fileMask);
        $alternativeMask = base_path().'/data/' . $alternativeDate.'.*';
        $alternativeFiles = glob($alternativeMask);
        $files = array_merge($files, $alternativeFiles);

        // TODO Avoid re-adding data when running cron job more often than once a day.

        foreach($files as $filename)
        {
            $extention = pathinfo($filename, PATHINFO_EXTENSION);

            if ($extention == 'csv')
            {
                Log::info('Importing Csv weather information file');
                $json = $this->csvToJson($filename);
                $weatherArray = json_decode($json, true);
                $weatherArray = $this->convertCsvUnits($weatherArray);
            }
            else if ($extention == 'json')
            {
                Log::info('Importing Json weather information file');
                $json = file_get_contents($filename);
                $weatherArray = json_decode($json, true);
                $weatherArray = $this->convertJsonUnits($weatherArray);
            }
            else
            {
                // TODO deal with wrong file extention
            }

           

            foreach($weatherArray as $weather)
            {
                $fileWeatherImporter = new FileWeatherImporter();
                $fileWeatherImporter->saveRecord($weather);
            }
        }
            
        if(empty($files)) return null;
    }

    protected function csvToJson($fname) {
        // open csv file
        if (!($fp = fopen($fname, 'r'))) {
            die("Can't open file...");
        }
        
        $key = fgetcsv($fp,"1024",",");
        $json = array();
        while ($row = fgetcsv($fp,"1024",",")) {
            $json[] = array_combine($key, $row);
        }
        // TODO handle csv file errors (different num of columns etc.)
        fclose($fp);
        return json_encode($json);

        // TODO convert only to array
    }

    protected function convertCsvUnits(array $data)
    {
        foreach($data as $key => $row)
        {
            $row['added_at'] = str_replace(',', '', $row['added_at']);;
            $dateTmp = \DateTime::createFromFormat('d-m-Y H:i:s', $row['added_at']);
            $data[$key]['added_at'] = $dateTmp->format('Y-m-d H:i:s');
            
            if($data[$key]['city_id']==="") unset($data[$key]['city_id']);
            else ($data[$key]['city_id'] = int($data[$key]['city_id'] ));
            
            // TODO handle incorrect battery_level values
            if($row['battery_level'] == 'low') $data[$key]['battery_level'] = 10.00;
            else if($row['battery_level'] == 'medium') $data[$key]['battery_level'] = 30.00;
            else if($row['battery_level'] == 'high') $data[$key]['battery_level'] = 70.00;
            else if($row['battery_level'] == 'full') $data[$key]['battery_level'] = 100.00;     
            // TODO remove temperature dublicate
            $data[$key]['temperture_celsius'] = $data[$key]['temperture'];
            unset($data[$key]['temperature']);
        }

        return $data;
    }


    protected function convertJsonUnits(array $data)
    {
        foreach($data as $key => $row)
        {
            $data[$key]['added_at'] = date("Y-m-d H:i:s", $row['added_at']);
            $data[$key]['temperture_celsius'] = ($row['temperature'] - 32) / 1.8;
            $data[$key]['rain'] = 25.2 * (float)$row['rain'];
            $data[$key]['wind'] = 1.609344 * (float)$row['wind'];  
            // TODO remove temperature dublicate
            unset($data[$key]['temperature']);
        }

        return $data;
    }

}

?>