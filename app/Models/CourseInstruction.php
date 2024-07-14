<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;
use App\Models\Traits\SequenceContent;

class CourseInstruction extends Model 
{
    //use Translatable;
    //use SequenceContent;

    protected $table = 'course_instructions';
    public $timestamps = false;
    protected $dateFormat = 'U';
    protected $guarded = ['id'];

    //public $translatedAttributes = ['name'];

    public function getEntryName()
    { 
        return getTranslateAttributeValue($this, 'name');
    }

    public function getFileName()
    {
        return getTranslateAttributeValue($this, 'attach');
    }
 
    public function webinar()
    {
        return $this->belongsTo('App\Models\Webinar', 'course_id', 'id');
    }

    public function teacher()
    {
        return $this->belongsTo('App\User', 'teacher_id', 'id');
    }

   
}
