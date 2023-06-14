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
            $table->foreignId('lapangans_id')->constrained()->cascadeOnDelete();
            $table->enum('opsi_pembayaran', ['Down Payment','Paid Off']);
            $table->enum('status', ['Pending','Approved', 'Denied'])->default('Pending');
            $table->dateTime('start_play');
            $table->dateTime('end_play');
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