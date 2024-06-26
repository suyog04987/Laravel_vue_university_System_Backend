<?php

namespace Database\Seeders;

use App\Models\Testimonials;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TestimonialSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        //
        $data = [
            [
                'id' => 1,
                'name' => 'John Doe',
                'position' => 'CEO',
                'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'image' => '/images/1.jpg',
            ],
            [
                'id' => 2,
                'name' => 'Jane Doe',
                'position' => 'CTO',
                'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'image' => '/images/2.jpg',
            ],
            [
                'id' => 3,
                'name' => 'John Smith',
                'position' => 'COO',
                'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'image' => '/images/3.jpg',
            ],
            [
                'id' => 4,
                'name' => 'Jandge Smith',
                'position' => 'CFO',
                'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'image' => '/images/4.jpg',
            ],
            [
                'id' => 5,
                'name' => 'John DoEE',
                'position' => 'CEO',
                'content' => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                'image' => '',
            ]
        ];
        Testimonials::insert($data);
    }
}
