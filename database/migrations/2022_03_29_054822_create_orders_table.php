<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();

            $table->foreignId('user_id')->constrained('users')->onDelete('cascade');
            $table->tinyInteger('status')->default(1);

            $table->unsignedInteger('total_price');
            $table->unsignedInteger('subtotal_price');
            $table->unsignedInteger('discount_price');
            $table->unsignedInteger('paid_amount');

            $table->unsignedInteger('shipping_charge')->default(0);
            $table->unsignedInteger('additional_charge')->default(0);
            $table->string('coupon_code')->default('N/A');
            $table->unsignedInteger('coupon_discount')->default(0);

            $table->string('payment_type')->default('COD');
            $table->string('payment_number')->nullable();
            $table->string('trx_id')->nullable();

            $table->string('name');
            $table->string('phone');
            $table->string('email')->nullable();
            $table->string('city');
            $table->string('area');
            $table->string('zip_code')->nullable();
            $table->string('address');
            
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
        Schema::dropIfExists('orders');
    }
}
