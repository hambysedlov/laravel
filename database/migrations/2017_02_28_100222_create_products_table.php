<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateProductsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('products',function(Blueprint $table){
            $table->increments("id");
            $table->string("name");
            $table->text("description")->nullable();
            $table->string("image")->nullable();
            $table->enum("showhide", ["show", "hide"])->nullable();
            $table->string("price")->nullable();
            $table->integer("user_id")->references("id")->on("user")->nullable();
            $table->integer("catalogs_id")->references("id")->on("catalogs")->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('products');
    }

}