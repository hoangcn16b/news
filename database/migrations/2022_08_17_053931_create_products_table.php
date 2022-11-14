<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->integer('product_category_id')->nullable();
            $table->string('thumb')->nullable();
            $table->string('status', 100)->nullable();
            $table->integer('price')->nullable();
            $table->integer('sale_off')->default(0)->nullable();
            $table->tinyInteger('special')->default(0)->nullable();
            $table->integer('ordering')->default(10)->nullable();
            $table->text('description')->nullable();
            $table->text('content')->nullable();
            $table->string('created_by')->nullable();
            $table->string('updated_by')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('products');
    }
}
