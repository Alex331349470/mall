<?php

namespace App\Admin\Controllers\wx;

use App\Model\User;
use App\Model\UserInfo;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Layout\Content;
use Encore\Admin\Show;
use Encore\Admin\Widgets\Box;
use Illuminate\Support\Facades\DB;
use function foo\func;

class UserController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '会员管理';
    protected $level_title = '等级设置';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new User());

        $grid->column('id', __('Id'));
        $grid->column('name', __('微信昵称'));
        $grid->column('phone', __('手机号'));
        $grid->column('avatar', __('微信头像'));
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
        $show = new Show(User::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('微信昵称'));
        $show->field('phone', __('手机号'));
        $show->field('avatar', __('微信头像'));
        $show->field('created_at', __('创建时间'));
        $show->field('updated_at', __('更新时间'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new User());

//        $form->ignore(['password']);
        $form->text('name', __('微信昵称'));
        $form->mobile('phone', __('手机号'));
        $form->image('avatar', __('微信头像'));
        $form->password('password', __('密码 '));

        return $form;
    }

}
