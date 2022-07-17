<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCompanyInfosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('company_infos', function (Blueprint $table) {
            $table->id();

            $table->string('about');
            $table->string('address');

            $table->string('phone_one')->nullable();
            $table->string('phone_two')->nullable();
            $table->string('phone_three')->nullable();

            $table->string('email')->nullable();

            $table->string('logo')->nullable();
            $table->string('favicon')->nullable();

            $table->text('facebook')->nullable();
            $table->text('twitter')->nullable();
            $table->text('instagram')->nullable();
            $table->text('youtube')->nullable();
            $table->text('inkedin')->nullable();
            $table->text('pinterest')->nullable();
            
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
        Schema::dropIfExists('company_infos');
    }
}
