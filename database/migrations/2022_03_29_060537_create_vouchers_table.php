<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductVouchersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_vouchers', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('offer_amount');
            $table->unsignedInteger('min_amount');
            $table->date('validity_from');
            $table->date('validity_to');
            $table->string('image');
            $table->string('external_link')->nullable();
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
        Schema::dropIfExists('product_vouchers');
    }
}
