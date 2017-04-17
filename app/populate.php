<?php

require "config.php";

//Capsule::schema()->create('goods', function ($table) {
//    $table->increments('id');
//    $table->integer('id_category')->unsigned();
//    $table->string('name');
//    $table->text('desc')->nullable();
//    $table->decimal('amount', 10, 3)->default(0);
//    $table->decimal('price', 7, 2)->unsigned();
//    $table->integer('published')->unsigned();
//    $table->timestamps();
//});

//class Product extends Illuminate\Database\Eloquent\Model
//{
//
//}

Product::query()->truncate();

for($i=0;$i<30;$i++)
{
    $faker = Faker\Factory::create();
    $product = new Product();
    $product->category_id = rand(1,5);
    $product->name = $faker->text(50);
    $product->desc = $faker->text;
    $product->amount = $faker->randomDigitNotNull;
    $product->price = rand(100,10000)/100;
    $product->created_at = $faker->dateTime;
    $product->save();
}


//class category extends Illuminate\Database\Eloquent\Model
//{
//    public $timestamps = false;
//}

//Capsule::schema()->create('category', function ($table) {
//    $table->increments('id');
//    $table->integer('id_parent')->unsigned();
//    $table->string('name');
//    $table->text('desc')->nullable();
//});


Category::query()->truncate();


for($i=0;$i<5;$i++)
{
    $faker = Faker\Factory::create();
    $category = new Category();
    $category ->name = $faker->text(50);
    $category ->desc = $faker->text;
    $category ->save();
}

echo "Tables 'Product' and 'Categories' has been filled.";