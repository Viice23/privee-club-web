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
        // Add unique constraint to admins.email
        // Check for duplicate emails before adding constraint
        $duplicateEmails = DB::table('admins')
            ->select('email', DB::raw('COUNT(*) as count'))
            ->groupBy('email')
            ->having('count', '>', 1)
            ->get();
        
        if ($duplicateEmails->count() > 0) {
            throw new \Exception('Cannot add unique constraint: Duplicate admin email addresses found. Please resolve duplicates first.');
        }
        
        Schema::table('admins', function (Blueprint $table) {
            $table->unique('email', 'admins_email_unique');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('admins', function (Blueprint $table) {
            $table->dropUnique('admins_email_unique');
        });
    }
};
