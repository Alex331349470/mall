<?php

namespace App\Admin\Controllers\wx;

use App\Model\Goods;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class GoodsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '商品';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Goods());

        $grid->column('id', __('Id'));
        $grid->column('title', __('名称'));
        $grid->column('description', __('描述'));
        $grid->column('on_hot', __('是否推荐'));
        $grid->column('on_sale', __('是否上架'));
        $grid->column('express_price', __('市场价'));
        $grid->column('price', __('售价'));
        $grid->column('rating', __('评分'));
        $grid->column('category_id', __('分类'));
        $grid->column('good_no', __('商品货号'));
        $grid->column('stock', __('库存'));
        $grid->column('sold_count', __('销量'));
        $grid->column('review_count', __('浏览量'));
        $grid->column('created_at', __('创建时间'));

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Goods::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
        $show->field('on_hot', __('On hot'));
        $show->field('on_sale', __('On sale'));
        $show->field('content', __('Content'));
        $show->field('express_price', __('Express price'));
        $show->field('price', __('Price'));
        $show->field('rating', __('Rating'));
        $show->field('category_id', __('Category id'));
        $show->field('good_no', __('Good no'));
        $show->field('stock', __('Stock'));
        $show->field('sold_count', __('Sold count'));
        $show->field('review_count', __('Review count'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Goods());

        $form->text('title', __('名称'))->rules(['required', 'unique:goods', 'max:255'], ['required' => '名称必填', 'unique' => '名称已存在', 'max' => '名称最大长度为255']);
        $form->text('description', __('描述'));
        $form->switch('on_hot', __('是否推荐'))->default(1);
        $form->switch('on_sale', __('是否上架'))->default(1);
        $form->textarea('content', __('详情'));
        $form->decimal('express_price', __('市场价'))->default(0.00);
        $form->decimal('price', __('售价'))->default(0.00);
        $form->decimal('rating', __('评分'))->default(5.00);
        $form->number('category_id', __('分类'));
        $form->text('good_no', __('商品货号'));
        $form->number('stock', __('库存'));
        $form->number('sold_count', __('销量'))->default(0);
        $form->number('review_count', __('浏览量'))->default(0);

        return $form;
    }
}
