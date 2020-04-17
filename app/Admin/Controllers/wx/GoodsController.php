<?php

namespace App\Admin\Controllers\wx;

use App\Model\Category;
use App\Model\Goods;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Validation\Rule;

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
        $grid->column('on_hot', __('是否推荐'))->display(function ($value) {
            if ($value == 1) {
                return '是';
            } else {
                return '否';
            }
        });
        $grid->column('on_sale', __('是否上架'))->display(function ($value) {
            if ($value == 1) {
                return '是';
            } else {
                return '否';
            }
        });
        $grid->column('express_price', __('市场价'));
        $grid->column('price', __('售价'));
        $grid->column('rating', __('评分'));
        $grid->column('category1.name', __('一级分类'));
        $grid->column('category2.name', __('二级分类'));
        $grid->column('good_no', __('商品货号'));
        $grid->column('stock', __('库存'));
        $grid->column('sold_count', __('销量'));
        $grid->column('review_count', __('浏览量'));
        $grid->column('created_at', __('创建时间'));

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableView();
        });

        $grid->disableExport();
        $grid->filter(function (Grid\Filter $filter) {
            $filter->disableIdFilter();
            $filter->like('title', '名称');
            $filter->like('category1.name', '一级分类');
            $filter->like('category2.name', '二级分类');
        });
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

        $id = request()->route('good');
        if ($id) {
            $unique_rule = Rule::unique('goods')->ignore($id);
        } else {
            $unique_rule = 'unique:goods';
        }
        $form->text('title', __('名称'))->rules(['required', $unique_rule, 'max:255'], ['required' => '名称必填', 'unique' => '名称已存在', 'max' => '名称最大长度为255']);
        $form->text('description', __('描述'));
        $form->switch('on_hot', __('是否推荐'))->default(1);
        $form->switch('on_sale', __('是否上架'))->default(1);
        $form->UEditor('content', __('详情'))->required();
        $rules = ['min:0'];
        $form->decimal('express_price', __('市场价'))->attribute('min', '0.0')->default(0.00)->rules($rules);
        $form->decimal('price', __('售价'))->attribute('min', '0.0')->default(0.00)->help('建议售价比市场价低')->required()->rules($rules);
        $form->decimal('rating', __('评分'))->attribute('min', '0.0')->default(5.00)->rules($rules);

        $category_lv1 = Category::query()->where('level', '=', 0)->get(['id', 'name'])->pluck('name', 'id');
        $form->select('category_id1', __('一级分类'))->options($category_lv1)->load('category_id2', '/api/category2')->required();
        $form->select('category_id2', __('二级分类'))->required();

        $form->text('good_no', __('商品货号'));
        $form->number('stock', __('库存'))->attribute('min', '0')->required()->rules($rules);

        $form->disableCreatingCheck();
        $form->disableEditingCheck();
        $form->disableViewCheck();
        return $form;
    }

}
