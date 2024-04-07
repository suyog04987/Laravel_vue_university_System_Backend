<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class FacultySeed extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $data=[
            [
                'id' => 1,
                'name'=> 'BCA',
                
            ],
            [
                'id'=>2,
                'name'=>'CSIT',
            ],
            [
                'id'=>3,
                'name'=>'BIT',
            ],
        ];
    }
}
