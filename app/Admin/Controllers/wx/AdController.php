<?php

namespace App\Admin\Controllers\wx;

use App\Model\Advertise;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AdController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '广告管理';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Advertise());

        $grid->column('id', __('ID'));
        $grid->column('image', __('广告类型'));
        $grid->column('position', __('广告位编号'));
        $grid->column('url', __('广告图'))->image();
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
        $show = new Show(Advertise::findOrFail($id));

        $show->field('id', 'ID');
        $show->field('image', '广告类型');
        $show->field('position', '广告位编号');
        $show->field('url', '广告图')->image();
        $show->field('created_at', '创建时间');
        $show->field('updated_at', '更新时间');

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Advertise());

        $form->text('image', '广告类型');
        $form->text('position', '广告位编号');
        $form->image('url', '广告图');

        return $form;
    }
}
