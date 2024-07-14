<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Services\SlugService;
use Cviebrock\EloquentSluggable\Sluggable;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class EntakeUnit extends Model 
{
   

    protected $table = 'entake_units';
    public $timestamps = false;
    protected $dateFormat = 'U';
   
}
