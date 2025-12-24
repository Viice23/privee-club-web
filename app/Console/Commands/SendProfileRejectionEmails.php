<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Models\{User, ProfileTimer};
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;
use Illuminate\Support\Facades\Log;

class SendProfileRejectionEmails extends Command
{
    protected $signature = 'emails:send-rejections';
    protected $description = 'Send approval or rejection emails';

    public function handle()
    {
       

        $profiletimers = (int) ProfileTimer::value('time');
      

        $users = User::where('profile_approval', 0)
                ->whereNotNull('admin_approve_time')
                ->where('status', 1)
                ->whereRaw(
                    'DATE_ADD(admin_approve_time, INTERVAL ? HOUR) <= ?',
                    [$profiletimers, now()]
                )
                ->get();

     
        foreach ($users as $user) {

            
            $expirytime = Carbon::parse($user->admin_approve_time)
                                ->addHours($profiletimers);


            $ratingsQuery = $user->receivedRatings();
            $averageRating = $ratingsQuery->avg('points') ?? 0;
            $totalRatings  = $ratingsQuery->count();


            try {
                
                        if (($averageRating <= 0 || $totalRatings < 4) && $user->rejection_email_status == 0) {
        
                                    $view = $user->language == 'English'
                                        ? 'admin::email.Notapprovedmember_Rating_email_UK'
                                        : 'admin::email.Notapprovedmember_Rating_email_DK';
                
                                    Mail::send($view, compact('user'), function ($message) use ($user) {
                                        $message->to($user->email)
                                                ->subject('Your profile has not been approved');
                                    });
                                    $user->rejection_email_status =1;
                                    $user->save();
                         }
                            
                        elseif (($averageRating > 0 && $totalRatings >= 4) && $user->approval_email_status == 0) {
        
                                    $view = $user->language == 'English'
                                        ? 'admin::email.Approvedmember_Rating_email_UK'
                                        : 'admin::email.Approvedmember_Rating_email_DK';
                
                                    Mail::send($view, compact('user'), function ($message) use ($user) {
                                        $message->to($user->email)
                                                ->subject('Your Profile Has Been Approved');
                                    });
                                    
                                     $user->rejection_email_status =1;
                                     $user->profile_approval =      1;
                                     $user->profile_rating_status = 'IN';
                                     
                                     $user->save();
   
                                }
   
                        } catch (\Exception $e) {
            
                            Log::error(' Email cron failed for user', [
                                'user_id' => $user->id,
                                'error' => $e->getMessage()
                            ]);
                        }
                    }
            
                   
                    $this->info('Profile approval/rejection cron executed successfully.');
                }
}
