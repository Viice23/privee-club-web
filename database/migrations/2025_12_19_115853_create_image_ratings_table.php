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
        Schema::create('image_rating', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->integer('image_id')->nullable();
            $table->integer('rate_to')->nullable();
            $table->integer('rate_by')->nullable();
            $table->integer('rating')->nullable();
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
        Schema::dropIfExists('image_rating');
    }
};