<?php

require 'config.php';

use Illuminate\Database\Capsule\Manager as Capsule;

Capsule::schema()->create('goods', function ($table) {
    $table->increments('id');
    $table->integer('id_category')->unsigned();
    $table->string('name');
    $table->text('desc')->nullable();
    $table->decimal('amount', 10, 3)->default(0);
    $table->decimal('price', 7, 2)->unsigned();
    $table->integer('published')->unsigned();
    $table->timestamps();
});

Capsule::schema()->create('category', function ($table) {
    $table->increments('id');
    $table->integer('id_parent')->unsigned();
    $table->string('name');
    $table->text('desc')->nullable();
});
