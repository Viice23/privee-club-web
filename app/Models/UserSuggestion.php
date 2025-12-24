<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserSuggestion extends Model
{
    use SoftDeletes;
    
    protected $table = 'user_suggestions';
    protected $guarded = [];
  
    public function user()
    {
        return $this->belongsTo(User::class, 'user_id')->select('id', 'first_name', 'last_name', 'email', 'country_code', 'mobile_no', 'member_number');
    }
}
