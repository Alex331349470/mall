<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{

    public function user() {
        return $this->belongsTo(User::class, "user_id", "id", "right");
    }

    public function goods() {
        return $this->belongsTo(Goods::class, "goods_id", "id", "right");
    }

    public function order() {
        return $this->belongsTo(Order::class, "order_id", "id", "left");
    }
}
