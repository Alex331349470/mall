<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    protected $hidden = ['password'];

    public function info() {
        return $this->hasOne(UserInfo::class, 'user_id', 'id');
    }

    public function replies() {
        return $this->hasMany(Reply::class, "user_id", "id");
    }
}
