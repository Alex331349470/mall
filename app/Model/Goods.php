<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Goods extends Model
{
    public function images() {
        return $this->hasMany(GoodsImg::class, 'good_id', 'id', 'left');
    }

    public function replies() {
        return $this->hasMany(Reply::class, "goods_id", "id");
    }

    public function category1() {
        return $this->belongsTo(Category::class, 'category_id1', 'id');
    }

    public function category2() {
        return $this->belongsTo(Category::class, 'category_id2', 'id');
    }

    public function getHotAttribute()
    {
        if ($this->on_hot == 1) {
            return '是';
        } else {
            return '否';
        }
    }

    public function getSaleAttribute()
    {
        if ($this->on_sale == 1) {
            return '是';
        } else {
            return '否';
        }
    }
}
