<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('user_rating', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->string('sender_id')->nullable();
            $table->string('reciever_id')->nullable();
            $table->string('reaction')->nullable();
            $table->integer('points')->nullable();
            $table->timestamps();
            $table->timestamp('deleted_at')->nullable();
            $table->primary('id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_rating');
    }
};