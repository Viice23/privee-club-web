<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     * Add indexes to frequently queried columns for better query performance
     */
    public function up(): void
    {
        // Users table indexes
        Schema::table('users', function (Blueprint $table) {
            // Note: email and member_number already have unique indexes from previous migration
            // Adding indexes for frequently queried columns
            if (!$this->indexExists('users', 'users_admin_status_index')) {
                $table->index('admin_status', 'users_admin_status_index');
            }
            if (!$this->indexExists('users', 'users_profile_approval_index')) {
                $table->index('profile_approval', 'users_profile_approval_index');
            }
            if (!$this->indexExists('users', 'users_deleted_at_index')) {
                $table->index('deleted_at', 'users_deleted_at_index');
            }
            if (!$this->indexExists('users', 'users_gender_index')) {
                $table->index('gender', 'users_gender_index');
            }
            if (!$this->indexExists('users', 'users_status_index')) {
                $table->index('status', 'users_status_index');
            }
            // Composite index for common query pattern
            if (!$this->indexExists('users', 'users_admin_status_profile_approval_index')) {
                $table->index(['admin_status', 'profile_approval'], 'users_admin_status_profile_approval_index');
            }
        });

        // User images table indexes
        Schema::table('user_images', function (Blueprint $table) {
            if (!$this->indexExists('user_images', 'user_images_user_id_index')) {
                $table->index('user_id', 'user_images_user_id_index');
            }
            if (!$this->indexExists('user_images', 'user_images_type_index')) {
                $table->index('type', 'user_images_type_index');
            }
            // Composite index for common query pattern: user_id + type
            if (!$this->indexExists('user_images', 'user_images_user_id_type_index')) {
                $table->index(['user_id', 'type'], 'user_images_user_id_type_index');
            }
            if (!$this->indexExists('user_images', 'user_images_profile_image_approval_index')) {
                $table->index('profile_image_approval', 'user_images_profile_image_approval_index');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('users', function (Blueprint $table) {
            $table->dropIndex('users_admin_status_index');
            $table->dropIndex('users_profile_approval_index');
            $table->dropIndex('users_deleted_at_index');
            $table->dropIndex('users_gender_index');
            $table->dropIndex('users_status_index');
            $table->dropIndex('users_admin_status_profile_approval_index');
        });

        Schema::table('user_images', function (Blueprint $table) {
            $table->dropIndex('user_images_user_id_index');
            $table->dropIndex('user_images_type_index');
            $table->dropIndex('user_images_user_id_type_index');
            $table->dropIndex('user_images_profile_image_approval_index');
        });
    }

    /**
     * Check if an index exists on a table
     */
    private function indexExists(string $table, string $index): bool
    {
        $connection = Schema::getConnection();
        $databaseName = $connection->getDatabaseName();
        $result = $connection->select(
            "SELECT COUNT(*) as count FROM information_schema.statistics 
             WHERE table_schema = ? AND table_name = ? AND index_name = ?",
            [$databaseName, $table, $index]
        );
        return $result[0]->count > 0;
    }
};
