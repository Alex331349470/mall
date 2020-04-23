<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Bonus extends Model
{
    public function order() {
        return $this->belongsTo(Order::class, 'order_id', 'id', 'left');
    }
}
