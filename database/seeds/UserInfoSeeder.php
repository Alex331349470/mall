<?php

use Illuminate\Database\Seeder;

class UserInfoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $users_info = factory(\App\Model\UserInfo::class, 30)->make();
        \Illuminate\Support\Facades\DB::table('user_infos')->insert($users_info->toArray());
    }
}
