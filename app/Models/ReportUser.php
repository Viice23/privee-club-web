<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ReportUser extends Model
{
    protected $table= 'report_user';
    protected $guarded;
      
    public function reported_by()
    {
        return $this->belongsTo(User::class, 'report_by')->select('id', 'first_name', 'last_name', 'profile_name', 'email', 'country_code', 'mobile_no');
    }
    
    public function reported_to()
    {
        return $this->belongsTo(User::class, 'report_to')->select('id', 'first_name', 'last_name', 'profile_name', 'email', 'country_code', 'mobile_no');
    }
    
    public function reason()
    {
        return $this->belongsTo(ReportReason::class, 'report_reason');
    }
}
