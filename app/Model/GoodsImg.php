<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class GoodsImg extends Model
{
    protected $table = 'good_images';

    public function goods() {
        return $this->belongsTo(Goods::class, 'good_id' ,'id', 'right');
    }

    public static function coverIsOnly($goods_id, $id = null) {
        $count_model = self::query()->where('good_id', $goods_id)->where('cover', 1);
        if ($id) {
            $count_model->where('id', '!=', $id);
        }
        $count = $count_model->count();
        if ($count > 0) {
            return false;
        } else {
            return true;
        }
    }
}
