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
        Schema::create('Device_info', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->string('fcm_token')->nullable();
            $table->integer('user_id')->nullable();
            $table->string('device_id')->nullable();
            $table->string('device_type')->nullable();
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
        Schema::dropIfExists('Device_info');
    }
};