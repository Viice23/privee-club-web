<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class SupportRequest extends Model
{
    protected $table= 'support_request';
    protected $guarded;
  
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select('id', 'first_name', 'last_name', 'profile_name', 'email', 'country_code', 'mobile_no');
    }
}
