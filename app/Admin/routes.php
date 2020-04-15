<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index')->name('admin.home');

    // 会员管理
    $router->resource('wx/users', wx\UserController::class);
    // 等级设置
    $router->resource('wx/levels', wx\UserInfoController::class);
    // 绩效管理
    $router->get('wx/commission', 'wx\UserController@commission');
    // 订单管理
    $router->resource('wx/orders', wx\OrderController::class);
    // 商品管理
    // 商品
    $router->resource('wx/goods', wx\GoodsController::class);
    // 分类
    $router->resource('wx/categories', wx\CategoryController::class);
    // 销售属性
    $router->resource('wx/specifications', wx\SpecificationController::class);
    // 广告管理
    $router->resource('wx/advertises', wx\AdController::class);
    // 评论管理
    $router->resource('wx/reply', wx\ReplyController::class);
});
