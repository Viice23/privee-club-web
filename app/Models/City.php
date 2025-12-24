<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
  protected $guarded;
  protected $table= 'citys';
  
  public function region()
  {
      return $this->belongsTo(Region::class, 'region_id');
  }
}
