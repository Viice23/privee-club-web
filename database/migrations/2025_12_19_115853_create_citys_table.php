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
        Schema::create('citys', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->integer('region_id')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('city')->nullable();
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('deleted_at')->default('0000-00-00');
            $table->primary('id');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('citys');
    }
};