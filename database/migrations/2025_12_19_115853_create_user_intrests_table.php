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
        Schema::create('user_intrest', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->integer('user_id')->nullable();
            $table->string('fav_music')->nullable();
            $table->string('fav_tv_show')->nullable();
            $table->string('fav_movie')->nullable();
            $table->string('fav_book')->nullable();
            $table->string('fav_sport')->nullable();
            $table->string('other')->nullable();
            $table->timestamps();
            $table->timestamp('deleted_at')->useCurrent();
            $table->primary('id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('user_intrest');
    }
};