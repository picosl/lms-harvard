<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Batch extends Model
{
    protected $table = 'batchs';
    public $timestamps = false;
    protected $guarded = [];
    
    public function course()
    {
        return $this->belongsTo('App\Models\Webinar', 'webinar_id', 'id');
    }
}
