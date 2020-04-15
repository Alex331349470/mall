<?php

namespace App\Admin\Controllers\wx;

use App\Model\Category;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\MessageBag;

class CategoryController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = '商品分类';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Category());

        $grid->column('id', __('Id'));
        $grid->column('name', __('栏目名称'));
        $grid->column('parent_id', __('父级栏目id'));
        $level_config = config('admin.category_level');
        $grid->column('level', __('等级'))->display(function ($level) use($level_config) {
            switch ($level) {
                case '0':
                    return $level_config[0];
                default:
                    return end($level_config);
            }
        });
//        $grid->column('status', __('状态'));

        $grid->actions(function (Grid\Displayers\Actions $action) {
            $action->disableView();
        });

        $grid->disableExport();
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
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('name', __('Name'));
        $show->field('parent_id', __('Parent id'));
        $show->field('is_directory', __('Is directory'));
        $show->field('level', __('Level'));
        $show->field('path', __('Path'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Category());

        $rules = ['required', 'max:40'];
        $messages = [
            'required' => '栏目名称必填',
            'max' => '栏目名称长度最大40',
        ];
        $form->text('name', __('栏目名称'))->rules($rules, $messages);
        //  获取一级栏目
        $level_config = config('admin.category_level');
        $first_level = Category::query()->where('level', '=', array_key_first($level_config))->orderByDesc('name')->get([
            'id','name'
        ])->pluck('name', 'id');
        $form->select('parent_id', __('父级栏目'))->options($first_level);
        $form->select('level', __('等级'))->options($level_config);

        return $form;
    }

    public function update($id)
    {
        $data = request()->only(['name', 'parent_id', 'level']);
        $result = $this->checkData($data);
        if ($result != null) {
            return $result;
        }
        $model = Category::query()->findOrFail($id);
        $result = $this->checkChangeLevel($data, $model);
        if ($result != null) {
            return $result;
        }
        $model->name = $data['name'];
        $model->parent_id = $data['parent_id'];
        $model->level = $data['level'];
        $model->save();

        return redirect(route('categories.index'));
    }

    public function store()
    {
        $data = request()->only(['name', 'parent_id', 'level']);
        $result = $this->checkData($data);
        if ($result != null) {
            return $result;
        }

        $data['created_at'] = date('Y-m-d H:i:s');
        Category::query()->insert($data);

        return redirect(route('categories.index'));
    }

    protected function checkData($data) {
        if ($data['level'] == 0 && $data['parent_id'] > 0) {
            $error = new MessageBag([
                'title'   => '配置错误',
                'message' => '一级栏目不能选择父级栏目',
            ]);

            return back()->with(compact('error'));
        }

        if ($data['level'] == 1 && is_null($data['parent_id'])) {
            $error = new MessageBag([
                'title'   => '配置错误',
                'message' => '二级栏目必选选择父级栏目',
            ]);

            return back()->with(compact('error'));
        }
    }

    protected function checkChangeLevel($data, Category $category) {
        //  降级
        if ($data['level'] > $category->level) {
            $count = Category::query()->where('parent_id', '=', $category->id)->count();
            if ($count > 0) { // 存在下级
                $error = new MessageBag([
                    'title' => '配置错误',
                    'message' => '该目录存在下级目录，不能由一级转为二级，请先更换其所有二级栏目所属父级',
                ]);
                return back()->with(compact('error'));
            }
        }

    }

    public function destroy($id)
    {
        $count = Category::query()->where('parent_id', '=', $id)->count();
        if ($count > 0) {
            $error = [
                'title' => '删除失败',
                'message' => '当前栏目存在下级栏目，不能删除',
            ];
            return back()->with(compact('error'));
        }

        Category::destroy($id);

        return redirect(route('categories.index'));
    }

}
