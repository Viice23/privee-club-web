<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        // Fix image_rating table deleted_at column
        // Current issue: deleted_at has useCurrent() which makes all records appear deleted
        // Solution: Make it nullable without default
        
        Schema::table('image_rating', function (Blueprint $table) {
            // Drop the existing column
            $table->dropColumn('deleted_at');
        });
        
        Schema::table('image_rating', function (Blueprint $table) {
            // Re-add as nullable (allows null, no default value)
            $table->timestamp('deleted_at')->nullable()->after('updated_at');
        });
        
        // Set all existing records' deleted_at to null (since they shouldn't be deleted by default)
        DB::table('image_rating')->update(['deleted_at' => null]);
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('image_rating', function (Blueprint $table) {
            $table->dropColumn('deleted_at');
        });
        
        Schema::table('image_rating', function (Blueprint $table) {
            // Restore original (incorrect) behavior
            $table->timestamp('deleted_at')->useCurrent();
        });
    }
};
