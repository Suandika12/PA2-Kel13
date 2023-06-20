<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('booking_lapangans', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->constrained()->cascadeOnDelete();
            $table->foreignId('lapangan_id')->constrained()->cascadeOnDelete();
            $table->enum('opsiPembayaran', ['Down Payment', 'Paid Off']);
            $table->enum('status', ['Pending', 'Approved', 'Denied'])->default('Pending');
            $table->string('image');
            $table->time('start_time');
            $table->time('end_time');
            $table->double('price', 8, 2);
            $table->double('totalPrice', 8, 2);
            $table->integer('durasi');
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
        Schema::dropIfExists('booking_lapangans');
    }
};
