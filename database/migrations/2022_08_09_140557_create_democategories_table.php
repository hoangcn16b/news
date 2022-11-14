<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDemocategoriesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('democategories', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name');
            $table->string('status', 100);
            $table->string('is_home')->nullable();
            $table->string('display');
            $table->unsignedInteger('_lft')->default(0);
            $table->unsignedInteger('_rgt')->default(0);
            $table->unsignedInteger('parent_id')->nullable();
            $table->string('created_by');
            $table->string('updated_by');
            $table->timestamps();
            $table->string('category_type');

            $table->index(['_lft', '_rgt', 'parent_id']);
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('democategories');
    }
}
