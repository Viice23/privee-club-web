<?php

namespace App\Helpers;

use Kreait\Firebase\Factory;
use App\Models\DeviceInfo;
use App\Models\{Notification,UserImage};

class NotificationHelper
{
    public static function sendToUser($userId, $title, $body,$id)
    {
        //$id  jo hai wo auth id hai profile image ke liye 
    //   $user_image = UserImage::where('user_id', $id)
    //     ->where('type', 0)
    //     ->value('profile_image'); 
       Notification::create([
            'user_id' => $userId,
            'sender_id' => $id,
            'title' => $title,
            'body' => $body,
            'notification_type' => 1,
        ]);
        
        // Fetch user's device FCM tokens
        $tokens = DeviceInfo::where('user_id', $userId)
            ->pluck('fcm_token')
            ->toArray();
            
        if (empty($tokens)) return false;

        // Initialize Firebase
        $factory = (new Factory)->withServiceAccount(storage_path('app/firebase/firebase-adminsdk.json'));
        $messaging = $factory->createMessaging();

        // Send notifications
        foreach ($tokens as $token) {
            try {
                $message = [
                    'token' => $token,
                    'notification' => [
                        'title' => $title,
                        'body'  => $body,
                    ],
                    'android' => [
                        'priority' => 'high',
                        'notification' => [
                            'sound' => 'default',
                            'channel_id' => 'high_importance_channel',
                        ],
                    ],
                    'apns' => [
                        'payload' => [
                            'aps' => [
                                'alert' => [
                                    'title' => $title,
                                    'body'  => $body,
                                ],
                                'sound' => 'default',
                            ],
                        ],
                    ],
                ];
    
                $messaging->send($message);
    
            } catch (\Exception $e) {
                \Log::error("FCM send error: ".$e->getMessage());
            }
        }

        return true;
    }
    
    // common center to send notification 
    public static function notification($userId, $title, $body, $sender_id)
    {
        Notification::create([
            'user_id' => $userId,
            'sender_id' => $sender_id,
            'title' => $title,
            'body' => $body
        ]);
    
        $tokens = DeviceInfo::where('user_id', $userId)->pluck('fcm_token')->toArray();
        if (empty($tokens)) return false;
    
        $factory = (new Factory)->withServiceAccount(storage_path('app/firebase/firebase-adminsdk.json'));
        $messaging = $factory->createMessaging();
    
        foreach ($tokens as $token) {
            try {
                $message = [
                    'token' => $token,
                    'notification' => [
                        'title' => $title,
                        'body'  => $body,
                    ],
                    'android' => [
                        'priority' => 'high',
                        'notification' => [
                            'sound' => 'default',
                            'channel_id' => 'high_importance_channel',
                        ],
                    ],
                    'apns' => [
                        'payload' => [
                            'aps' => [
                                'alert' => [
                                    'title' => $title,
                                    'body'  => $body,
                                ],
                                'sound' => 'default',
                            ],
                        ],
                    ],
                ];
    
                $messaging->send($message);
    
            } catch (\Exception $e) {
                \Log::error("FCM send error: ".$e->getMessage());
            }
        }
    
        return true;
    }
    
    // Send notification to multiple users
    public static function sendToMultipleUsers($userIds, $title, $body, $senderId = 0)
    {
        $successCount = 0;
        $failedCount = 0;
        $errors = [];
        
        if (!is_array($userIds) || empty($userIds)) {
            return [
                'success' => false,
                'message' => 'No users selected',
                'success_count' => 0,
                'failed_count' => 0
            ];
        }
        
        foreach ($userIds as $userId) {
            try {
                $result = self::notification($userId, $title, $body, $senderId);
                if ($result) {
                    $successCount++;
                } else {
                    $failedCount++;
                    $errors[] = "User ID {$userId}: No FCM token found";
                }
            } catch (\Exception $e) {
                $failedCount++;
                $errors[] = "User ID {$userId}: " . $e->getMessage();
                \Log::error("Notification send error for user {$userId}: " . $e->getMessage());
            }
        }
        
        return [
            'success' => $successCount > 0,
            'message' => "Sent to {$successCount} user(s), failed: {$failedCount}",
            'success_count' => $successCount,
            'failed_count' => $failedCount,
            'errors' => $errors
        ];
    }
}
