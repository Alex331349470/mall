<?php

namespace App\Admin\Controllers\wx;

use App\Model\Reply;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ReplyController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App\Model\Reply';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Reply());

        $grid->column('id', __('Id'));
        $grid->column('good_id', __('Good id'));
        $grid->column('user_id', __('User id'));
        $grid->column('order_id', __('Order id'));
        $grid->column('images', __('Images'));
        $grid->column('content', __('Content'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));

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
        $show = new Show(Reply::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('good_id', __('Good id'));
        $show->field('user_id', __('User id'));
        $show->field('order_id', __('Order id'));
        $show->field('images', __('Images'));
        $show->field('content', __('Content'));
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
        $form = new Form(new Reply());

        $form->number('good_id', __('Good id'));
        $form->number('user_id', __('User id'));
        $form->number('order_id', __('Order id'));
        $form->text('images', __('Images'));
        $form->textarea('content', __('Content'));

        return $form;
    }
}
