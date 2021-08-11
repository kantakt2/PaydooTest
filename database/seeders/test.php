<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class StationData extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        StationData::factory()->times(50)->create();
    }
}
