<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class OrderItem extends Model
{
    public function goods() {
        return $this->belongsTo(Goods::class, 'good_id', 'id', 'left');
    }
}
