<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class GroupsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('groups')->insert([
            [
                'group_name' => '10-A',
                'description' => '10 класс, группа А'
            ],
            [
                'group_name' => '10-Б',
                'description' => '10 класс, группа Б'
            ],
            [
                'group_name' => '11-A',
                'description' => '11 класс, группа А'
            ],
            [
                'group_name' => '11-Б',
                'description' => '11 класс, группа Б'
            ]

        ]);
    }
}
