<?php

namespace Database\Seeders;

use App\Models\Country;
use Illuminate\Database\Seeder;

class CountrySeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Country::truncate();

        $country =  [
            [
                'con_code' => 'AF', 'coun_code' => 'DZ', 'coun_name' => 'Algeria',
            ],
            [
                'con_code' => 'AF', 'coun_code' => 'EG', 'coun_name' => 'Egypt',
            ],
            [
                'con_code' => 'AF', 'coun_code' => 'GH', 'coun_name' => 'Ghana',
            ],
            [
                'con_code' => 'AF', 'coun_code' => 'ZA', 'coun_name' => 'South Africa',
            ],
            [
                'con_code' => 'AF', 'coun_code' => 'ZW', 'coun_name' => 'Zimbabwe',
            ],
            [
                'con_code' => 'AS', 'coun_code' => 'BD', 'coun_name' => 'Bangladesh',
            ],
            [
                'con_code' => 'AS', 'coun_code' => 'CN', 'coun_name' => 'China',
            ],
            [
                'con_code' => 'AS', 'coun_code' => 'IN', 'coun_name' => 'India',
            ],
            [
                'con_code' => 'AS', 'coun_code' => 'LB', 'coun_name' => 'Lebanon',
            ],
            [
                'con_code' => 'AS', 'coun_code' => 'AE', 'coun_name' => 'United Arab Emirates',
            ],
            [
                'con_code' => 'EU', 'coun_code' => 'FR', 'coun_name' => 'France',
            ],
            [
                'con_code' => 'EU', 'coun_code' => 'DE', 'coun_name' => 'Germany',
            ],
            [
                'con_code' => 'EU', 'coun_code' => 'IT', 'coun_name' => 'Italy',
            ],
            [
                'con_code' => 'EU', 'coun_code' => 'ES', 'coun_name' => 'Spain',
            ],
            [
                'con_code' => 'EU', 'coun_code' => 'GB', 'coun_name' => 'United Kingdom',
            ],
            [
                'con_code' => 'NA', 'coun_code' => 'BS', 'coun_name' => 'Bahamas',
            ],
            [
                'con_code' => 'NA', 'coun_code' => 'BB', 'coun_name' => 'Barbados',
            ],
            [
                'con_code' => 'NA', 'coun_code' => 'CR', 'coun_name' => 'Costa Rica',
            ],
            [
                'con_code' => 'NA', 'coun_code' => 'CU', 'coun_name' => 'Cuba',
            ],
            [
                'con_code' => 'NA', 'coun_code' => 'DM', 'coun_name' => 'Dominica',
            ],
            [
                'con_code' => 'OC', 'coun_code' => 'AU', 'coun_name' => 'Australia',
            ],
            [
                'con_code' => 'OC', 'coun_code' => 'FJ', 'coun_name' => 'Fiji',
            ],
            [
                'con_code' => 'OC', 'coun_code' => 'NZ', 'coun_name' => 'New Zealand',
            ],
            [
                'con_code' => 'OC', 'coun_code' => 'PG', 'coun_name' => 'Papua New Guinea',
            ],
            [
                'con_code' => 'OC', 'coun_code' => 'WS', 'coun_name' => 'Samoa',
            ],
            [
                'con_code' => 'SA', 'coun_code' => 'AR', 'coun_name' => 'Argentina',
            ],
            [
                'con_code' => 'SA', 'coun_code' => 'BR', 'coun_name' => 'Brazil',
            ],
            [
                'con_code' => 'SA', 'coun_code' => 'CO', 'coun_name' => 'Colombia',
            ],
            [
                'con_code' => 'SA', 'coun_code' => 'EC', 'coun_name' => 'Ecudaor',
            ],
            [
                'con_code' => 'SA', 'coun_code' => 'VE', 'coun_name' => 'Venezuela',
            ]
        ];
        Country::insert($country);
    }
}
