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
        Schema::create('seen_statuses', function (Blueprint $table) {
            $table->integer('id')->autoIncrement();
            $table->integer('status_view_by_id')->nullable();
            $table->integer('status_view_of_id')->nullable();
            $table->integer('status_id')->nullable();
            $table->string('is_seen')->default('unseen');
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
        Schema::dropIfExists('seen_statuses');
    }
};