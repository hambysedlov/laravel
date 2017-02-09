<?php

use Illuminate\Database\Seeder;
use App\Categorie;


class CategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Categorie::create(['name' => 'Cars', 'showhidle' => 'show']);
       
        //
    }
}
