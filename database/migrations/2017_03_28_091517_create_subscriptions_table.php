<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Eloquent\Model;

class CreateSubscriptionsTable extends Migration {

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Model::unguard();
        Schema::create('subscriptions',function(Blueprint $table){
            $table->increments("id");
            $table->string("fio")->nullable();
            $table->string("phone")->nullable();
            $table->string("contacts")->nullable();
            $table->text("body")->nullable();
            $table->string("status")->nullable();
            $table->string("user_id")->nullable();
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
        Schema::drop('subscriptions');
    }

}