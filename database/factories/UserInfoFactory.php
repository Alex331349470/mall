<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Model;
use Faker\Generator as Faker;

$loop_index = 1;
$factory->define(Model\UserInfo::class, function (Faker $faker) use ($loop_index) {
    return [
        'user_id' => $loop_index++,
        'type' => rand(0, 2),
        'gender' => rand(0, 2),
        'created_at' => $faker->dateTime,
    ];
});
