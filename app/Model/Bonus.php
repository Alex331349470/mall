<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Bonus extends Model
{
    public function order() {
        return $this->belongsTo(Order::class, 'order_id', 'id', 'left');
    }

    public function getNewUserTypeAttribute() {
        switch ($this->user_type) {
            case '0':
                return '普通客户';
            case '1':
                return '二级代销';
            case '2':
                return '一级代销';
            default:
                return '未知异常';
        }
    }
}
