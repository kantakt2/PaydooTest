<?php
namespace App\Http\Helpers;

use Illuminate\Support\Facades\DB;
use App\Models\Weather;

class FileWeatherImporter
{

    // @var array Weather record's data
    private $data = []; 

    function __constructor($data)
    {
        $this->data = $data;
    }

    public function saveRecord(array $data=[])
    {
        if(!empty($data))
        {
            $this->data = $data;
        }

        $weather = new Weather();

        $weather::create($data);
    }

    
}