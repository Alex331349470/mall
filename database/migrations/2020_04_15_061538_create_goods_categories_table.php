<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateGoodsCategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('goods_categories', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->string("title", 40)->unique()->comment('目录标题');
            $table->string('desc', 255)->nullable()->comment('');
            $table->unsignedBigInteger('parent_id')->index()->default(0)->comment('');
            $table->tinyInteger('status')->default(1)->comment('');

            $table->timestamps();
            $table->comment = '商品栏目';
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('goods_categories');
    }
}
