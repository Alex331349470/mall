<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Goods extends Model
{
    public function replies() {
        return $this->hasMany(Reply::class, "goods_id", "id");
    }
}
