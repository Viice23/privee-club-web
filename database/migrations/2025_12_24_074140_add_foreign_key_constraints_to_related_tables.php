<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     * Add foreign key constraints to maintain referential integrity
     * Note: Only adding constraints where columns are integer types matching users.id
     */
    public function up(): void
    {
        // User images table - user_id references users.id
        Schema::table('user_images', function (Blueprint $table) {
            // Check for orphaned records before adding constraint
            $orphaned = DB::table('user_images')
                ->leftJoin('users', 'user_images.user_id', '=', 'users.id')
                ->whereNotNull('user_images.user_id')
                ->whereNull('users.id')
                ->count();
            
            if ($orphaned > 0) {
                // Log warning but don't fail - allow admin to clean up data first
                \Log::warning("Found {$orphaned} orphaned records in user_images. Foreign key constraint not added. Please clean up data first.");
            } else {
                // Only add foreign key if no orphaned records
                try {
                    $table->foreign('user_id', 'user_images_user_id_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraint for user_images.user_id: " . $e->getMessage());
                }
            }
        });

        // Device info table - user_id references users.id
        Schema::table('Device_info', function (Blueprint $table) {
            $orphaned = DB::table('Device_info')
                ->leftJoin('users', 'Device_info.user_id', '=', 'users.id')
                ->whereNotNull('Device_info.user_id')
                ->whereNull('users.id')
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in Device_info. Foreign key constraint not added.");
            } else {
                try {
                    $table->foreign('user_id', 'device_info_user_id_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraint for Device_info.user_id: " . $e->getMessage());
                }
            }
        });

        // Blocked users table - block_by and block_to reference users.id
        Schema::table('blocked_users', function (Blueprint $table) {
            // Check for orphaned records
            $orphaned = DB::table('blocked_users')
                ->leftJoin('users as u1', 'blocked_users.block_by', '=', 'u1.id')
                ->leftJoin('users as u2', 'blocked_users.block_to', '=', 'u2.id')
                ->where(function($query) {
                    $query->whereNotNull('blocked_users.block_by')
                          ->whereNull('u1.id')
                          ->orWhere(function($q) {
                              $q->whereNotNull('blocked_users.block_to')
                                ->whereNull('u2.id');
                          });
                })
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in blocked_users. Foreign key constraints not added.");
            } else {
                try {
                    $table->foreign('block_by', 'blocked_users_block_by_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                    
                    $table->foreign('block_to', 'blocked_users_block_to_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraints for blocked_users: " . $e->getMessage());
                }
            }
        });

        // Fav users table - fav_by and fav_to reference users.id
        Schema::table('fav_user', function (Blueprint $table) {
            $orphaned = DB::table('fav_user')
                ->leftJoin('users as u1', 'fav_user.fav_by', '=', 'u1.id')
                ->leftJoin('users as u2', 'fav_user.fav_to', '=', 'u2.id')
                ->where(function($query) {
                    $query->whereNotNull('fav_user.fav_by')
                          ->whereNull('u1.id')
                          ->orWhere(function($q) {
                              $q->whereNotNull('fav_user.fav_to')
                                ->whereNull('u2.id');
                          });
                })
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in fav_user. Foreign key constraints not added.");
            } else {
                try {
                    $table->foreign('fav_by', 'fav_user_fav_by_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                    
                    $table->foreign('fav_to', 'fav_user_fav_to_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraints for fav_user: " . $e->getMessage());
                }
            }
        });

        // User likes table - like_by and like_to reference users.id
        Schema::table('user_like', function (Blueprint $table) {
            $orphaned = DB::table('user_like')
                ->leftJoin('users as u1', 'user_like.like_by', '=', 'u1.id')
                ->leftJoin('users as u2', 'user_like.like_to', '=', 'u2.id')
                ->where(function($query) {
                    $query->whereNotNull('user_like.like_by')
                          ->whereNull('u1.id')
                          ->orWhere(function($q) {
                              $q->whereNotNull('user_like.like_to')
                                ->whereNull('u2.id');
                          });
                })
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in user_like. Foreign key constraints not added.");
            } else {
                try {
                    $table->foreign('like_by', 'user_like_like_by_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                    
                    $table->foreign('like_to', 'user_like_like_to_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraints for user_like: " . $e->getMessage());
                }
            }
        });

        // Requests table - request_from and request_to reference users.id
        Schema::table('request', function (Blueprint $table) {
            $orphaned = DB::table('request')
                ->leftJoin('users as u1', 'request.request_from', '=', 'u1.id')
                ->leftJoin('users as u2', 'request.request_to', '=', 'u2.id')
                ->where(function($query) {
                    $query->whereNotNull('request.request_from')
                          ->whereNull('u1.id')
                          ->orWhere(function($q) {
                              $q->whereNotNull('request.request_to')
                                ->whereNull('u2.id');
                          });
                })
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in request. Foreign key constraints not added.");
            } else {
                try {
                    $table->foreign('request_from', 'request_request_from_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                    
                    $table->foreign('request_to', 'request_request_to_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraints for request: " . $e->getMessage());
                }
            }
        });

        // User interests table - user_id references users.id
        Schema::table('user_intrest', function (Blueprint $table) {
            $orphaned = DB::table('user_intrest')
                ->leftJoin('users', 'user_intrest.user_id', '=', 'users.id')
                ->whereNotNull('user_intrest.user_id')
                ->whereNull('users.id')
                ->count();
            
            if ($orphaned > 0) {
                \Log::warning("Found {$orphaned} orphaned records in user_intrest. Foreign key constraint not added.");
            } else {
                try {
                    $table->foreign('user_id', 'user_intrest_user_id_foreign')
                        ->references('id')
                        ->on('users')
                        ->onDelete('cascade')
                        ->onUpdate('cascade');
                } catch (\Exception $e) {
                    \Log::warning("Failed to add foreign key constraint for user_intrest.user_id: " . $e->getMessage());
                }
            }
        });

        // Note: user_rating table has sender_id and reciever_id as strings, not integers
        // So we cannot add foreign key constraints for those columns without changing the column type
        // This would require a data migration and code changes, so we skip it here
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('user_images', function (Blueprint $table) {
            $table->dropForeign('user_images_user_id_foreign');
        });

        Schema::table('Device_info', function (Blueprint $table) {
            $table->dropForeign('device_info_user_id_foreign');
        });

        Schema::table('blocked_users', function (Blueprint $table) {
            $table->dropForeign('blocked_users_block_by_foreign');
            $table->dropForeign('blocked_users_block_to_foreign');
        });

        Schema::table('fav_user', function (Blueprint $table) {
            $table->dropForeign('fav_user_fav_by_foreign');
            $table->dropForeign('fav_user_fav_to_foreign');
        });

        Schema::table('user_like', function (Blueprint $table) {
            $table->dropForeign('user_like_like_by_foreign');
            $table->dropForeign('user_like_like_to_foreign');
        });

        Schema::table('request', function (Blueprint $table) {
            $table->dropForeign('request_request_from_foreign');
            $table->dropForeign('request_request_to_foreign');
        });

        Schema::table('user_intrest', function (Blueprint $table) {
            $table->dropForeign('user_intrest_user_id_foreign');
        });
    }
};
