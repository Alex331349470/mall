<?php

namespace App\Admin\Controllers\wx;

use App\Admin\Extensions\ModelDelete;
use App\Model\Goods;
use App\Model\GoodsSpec;
use App\Model\Specification;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class SpecController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '商品规格管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new GoodsSpec());
        $grid->model()->join('goods', 'good_id', '=', 'goods.id', 'inner')->select(['good_skus.id', 'good_skus.title', 'good_skus.description', 'good_skus.price', 'good_skus.stock', 'good_skus.created_at', 'goods.title' => 'title2', 'goods.stock' => 'stock2']);

        $grid->column('id', __('Id'));
        $grid->column('title2', __('商品名称'));
        $grid->column('title', __('销售属性标题'));
        $grid->column('description', __('销售属性标题'));
        $grid->column('price', __('销售属性标题'));
        $grid->column('stock', __('销售属性标题'));
        $grid->column('stock2', __('销售属性标题'));
        $grid->column('created_at', __('创建时间'));

        $grid->actions(function (Grid\Displayers\Actions $actions) {
            $actions->disableView();
            $actions->disableDelete();
            $actions->add(new ModelDelete($actions->getKey(), 'specifications'));
        });
        $grid->disableExport();
        $grid->filter(function (Grid\Filter $filter) {
            $filter->like('title2', '商品名称');
            $filter->like('title', '属性名称');
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
        $show = new Show(Specification::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
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
        $form = new Form(new GoodsSpec());

        $rules = ['required', 'max:30'];
        $rules2 = ['required'];
        $messages = ['required' => '标题内容缺失', 'max' => '标题长度最大为30'];
        $form->select('goods_id', '商品')->options(Goods::query()->get(['title', 'id'])->pluck('title', 'id'))->rules($rules2);
        $form->text('title', __('销售属性'))->placeholder('内存,存储空间')->help('多个属性需要添加时，请以英文半角逗号 , 隔开')->rules($rules, $messages);
        $form->text('description', __('属性值'))->placeholder('8G,32G')->help('销售属性多个时，值也对应多个，请以英文半角逗号 , 隔开')->rules($rules);
        $form->number('price', __('价格'))->rules($rules2)->help('该销售属性下的商品价格，单位：元');
        $form->number('stock', __('库存'))->rules($rules2)->help('该销售属性下的商品库存，单位：件');
        $form->disableViewCheck();
        $form->disableEditingCheck();
        $form->disableCreatingCheck();
        return $form;
    }

    public function destroy($id)
    {

    }
}
