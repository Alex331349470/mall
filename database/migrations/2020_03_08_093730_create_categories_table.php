<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('categories', function (Blueprint $table) {
            $table->bigIncrements('id')->comment('自增id');
            $table->string('name')->comment('分类名称');
            $table->unsignedBigInteger('parent_id')->nullable()->comment('父类id');
            $table->foreign('parent_id')->references('id')->on('categories')->onDelete('cascade')->comment('外键约束');
            $table->boolean('is_directory')->comment('是否拥有子类');
            $table->unsignedInteger('level')->comment('当前分类层级');
            $table->string('path')->comment('该分类所有父类id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('categories');
    }
}
