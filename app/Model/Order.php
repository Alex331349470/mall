<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    public function replies() {
        return $this->hasMany(Reply::class, "order_id", "id");
    }

    public function user() {
        return $this->belongsTo(User::class, "user_id", 'id', 'left');
    }
}
