<?php

namespace Database\Seeders;

use App\Models\Continent;
use Illuminate\Database\Seeder;

class ContinentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Continent::truncate();

        $continent =  [
            [
                'con_code' => 'AF', 'con_name' => 'Africa',
            ],
            [
                'con_code' => 'AS', 'con_name' => 'Asia',
            ],
            [
                'con_code' => 'EU', 'con_name' => 'Europe',
            ],
            [
                'con_code' => 'NA', 'con_name' => 'North America',
            ],
            [
                'con_code' => 'OC', 'con_name' => 'Oceania',
            ],
            [
                'con_code' => 'SA', 'con_name' => 'South America',
            ]
        ];

        Continent::insert($continent);
    }
}
