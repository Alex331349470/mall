<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public function goods() {
        return $this->hasOne(Goods::class, 'category_id1', 'id');
    }
}
