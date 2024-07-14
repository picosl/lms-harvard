<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class WebinarAssignmentHistoryMessage extends Model
{
    protected $table = 'webinar_assignment_history_messages';
    public $timestamps = false;
    protected $dateFormat = 'U';
    protected $guarded = ['id'];

    public function sender()
    {
        return $this->belongsTo('App\User', 'sender_id', 'id');
    }

    public function getDownloadUrl($assignmentId,$sender_name)
    {
        return "/course/assignment/{$assignmentId}/history/{$this->assignment_history_id}/message/{$this->id}/downloadAttach/$sender_name";
    }
}
