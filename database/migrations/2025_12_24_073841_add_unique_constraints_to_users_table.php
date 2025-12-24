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
        // Add unique constraints to email and member_number columns
        // Note: Both columns are nullable, and MySQL allows multiple NULLs in unique indexes
        
        // Check for duplicate emails (non-null values) before adding constraint
        $duplicateEmails = DB::table('users')
            ->select('email', DB::raw('COUNT(*) as count'))
            ->whereNotNull('email')
            ->groupBy('email')
            ->having('count', '>', 1)
            ->get();
        
        if ($duplicateEmails->count() > 0) {
            throw new \Exception('Cannot add unique constraint: Duplicate email addresses found. Please resolve duplicates first.');
        }
        
        // Check for duplicate member_numbers (non-null values) before adding constraint
        $duplicateMemberNumbers = DB::table('users')
            ->select('member_number', DB::raw('COUNT(*) as count'))
            ->whereNotNull('member_number')
            ->groupBy('member_number')
            ->having('count', '>', 1)
            ->get();
        
        if ($duplicateMemberNumbers->count() > 0) {
            throw new \Exception('Cannot add unique constraint: Duplicate member numbers found. Please resolve duplicates first.');
        }
        
        // Add unique indexes (allows multiple NULLs, enforces uniqueness for non-null values)
        Schema::table('users', function (Blueprint $table) {
            $table->unique('email', 'users_email_unique');
            $table->unique('member_number', 'users_member_number_unique');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropUnique('users_email_unique');
            $table->dropUnique('users_member_number_unique');
        });
    }
};
