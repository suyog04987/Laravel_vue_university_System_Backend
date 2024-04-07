<?php

namespace Database\Seeders;

use App\Models\University;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class UniversitySeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data=[
            [
                'id' => 1,
                'name'=> 'TU',
            ],
            [
                'id'=>2,
                'name'=>'KU',
            ],
            [
                'id'=>3,
                'name'=>'PU',
            ],
        ];
        University::insert($data);
    }
}
