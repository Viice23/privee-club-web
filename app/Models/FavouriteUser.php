<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class FavouriteUser extends Model
{
  protected $table= 'fav_user';
  protected $guarded;
  
  
    public function favByUser(){
      
      return $this->belongsTo(User::class,'fav_to');
    
    }

}
