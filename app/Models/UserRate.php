<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class UserRate extends Model
{
    use SoftDeletes;
    protected $table= 'user_rating';
    protected $guarded;
  
    public function ratedTo()
    {
        return $this->belongsTo(User::class, 'reciever_id', 'id');
    }
    
    public function ratedBy()
    {
        return $this->belongsTo(User::class, 'sender_id', 'id');
    }
  
  
  

}
