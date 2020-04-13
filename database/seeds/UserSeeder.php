<?php

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users = factory(\App\Model\User::class, 30)->make();
        $first_user = $users->first;
        $first_user->name = 'jack_maple';
        $first_user->phone = '1334455667788';

        $users[0] = $first_user->toArray();
        \Illuminate\Support\Facades\DB::table('users')->insert($users->toArray());
    }
}
