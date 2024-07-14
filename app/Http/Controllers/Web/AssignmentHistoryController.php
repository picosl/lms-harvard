<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Web\traits\LearningPageAssignmentTrait;
use App\Models\Reward;
use App\Models\RewardAccounting;
use App\Models\WebinarAssignment;
use App\Models\WebinarAssignmentHistory;
use App\Models\WebinarAssignmentHistoryMessage;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class AssignmentHistoryController extends Controller
{
    use LearningPageAssignmentTrait;

    public function storeMessage(Request $request, $assignmentId, $historyId)
    {
        //dd(  $request->file('file'));
        $user = auth()->user();
        // dd( $user);

        $assignment = WebinarAssignment::where('id', $assignmentId)->first();

        if (!empty($assignment)) {
            $webinar = $assignment->webinar;

            if (!empty($webinar) and $webinar->checkUserHasBought($user)) {
                $studentId = $request->get('student_id');
                $assignmentHistory = $this->getAssignmentHistory($webinar, $assignment, $user, $studentId);

                if (!empty($assignmentHistory) and $historyId == $assignmentHistory->id) {

                    if ($user->id != $assignment->creator_id) {
                        $submissionTimes = $assignmentHistory->messages
                            ->where('sender_id', $user->id)
                            ->whereNotNull('file_path')
                            ->count();
                        $deadline = $this->getAssignmentDeadline($assignment, $user);

                        if (!$deadline or (!empty($assignment->attempts) and $submissionTimes >= $assignment->attempts)) {
                            $toastData = [
                                'title' => !$deadline ? trans('update.assignment_deadline_error_title') : trans('update.assignment_submission_error_title'),
                                'msg' => !$deadline ? trans('update.assignment_deadline_error_desc') : trans('update.assignment_submission_error_desc'),
                            ];

                            return response([
                                'code' => 401,
                                'errors' => $toastData,
                            ]);
                        }
                    }

                    $data = $request->all();

                    $rules = [
                        //'description' => 'required',
                        //'file_title' => 'nullable|max:255',
                        //'file_path' => 'nullable|max:255',
                         'file' => 'required',
                    ];
                     $request->validate([
                            //'description' => 'required',
                            'file' => 'required',
                        ],
                         [
                        'description.required' => 'The description field is required.',
                        'file.required' => 'The attachment is required.',
                        // Customize other messages as needed
                    ]);

                    $validator = Validator::make($data, $rules);

                    if ($validator->fails()) {
                        return response([
                            'code' => 422,
                            'errors' => $validator->errors(),
                        ], 422);
                    }

                    $file = $request->file('file');
                    $fileName = time() . '_' . $file->getClientOriginalName();
                    $file->storeAs($user->id, $fileName, 'public');
                
                    WebinarAssignmentHistoryMessage::create([
                        'assignment_history_id' => $assignmentHistory->id,
                        'sender_id' => $user->id,
                        'message' => $data['description'],
                        'file_title' => $data['file_title'] ?? null,
                        'file_path' =>'/store/'.$user->id.'/'.  $fileName,    // $data['file_path'] ?? null,
                        'created_at' => time(),
                    ]);

                    if ($assignmentHistory->status == WebinarAssignmentHistory::$notSubmitted) {
                        $assignmentHistory->update([
                            'status' => WebinarAssignmentHistory::$pending
                        ]);
                    }

                    $notifyOptions = [
                        '[instructor.name]' => $assignmentHistory->instructor->full_name,
                        '[c.title]' => $webinar->title,
                        '[student.name]' => $assignmentHistory->student->full_name,
                        //'[assignment_grade]' => $assignmentHistory->grade,
                    ];

                    /*if ($user->id == $assignment->creator_id) {
                        sendNotification('instructor_send_message', $notifyOptions, $assignmentHistory->student_id);
                    } else {
                        sendNotification('student_send_message', $notifyOptions, $assignmentHistory->instructor_id);
                    }*/

                    // return response()->json([
                    //     'code' => 200,
                    // ]);
                   // return back()->with('success', 'File uploaded successfully!');
                      return redirect(url()->previous())->with('success', 'File uploaded successfully!');


                }
            }
        }

        abort(403);
    }

    public function setGrade(Request $request, $assignmentId, $historyId)
    {
        $user = auth()->user();

        $assignment = WebinarAssignment::where('id', $assignmentId)
            ->where('creator_id', $user->id)
            ->first();

        if (!empty($assignment)) {
            $webinar = $assignment->webinar;

            if (!empty($webinar) and $webinar->isOwner($user->id)) {
                $studentId = $request->get('student_id');
                $assignmentHistory = $this->getAssignmentHistory($webinar, $assignment, $user, $studentId);

                if (!empty($assignmentHistory) and $historyId == $assignmentHistory->id and $assignmentHistory->instructor_id == $user->id) {
                    $data = $request->all();

                    $mt = 0;

                    if (!empty($assignment) && $assignment->marking_type == 1) {
                        $mt = 1;
                        $rules = [
                            'grade' => 'required|integer',
                        ];

                        $validator = Validator::make($data, $rules);

                        if ($validator->fails()) {
                            return response([
                                'code' => 422,
                                'errors' => $validator->errors(),
                            ], 422);
                        }

                        $grade = $data['grade'];

                        $status = WebinarAssignmentHistory::$passed;

                        if ($grade < $assignment->pass_grade) {
                            $status = WebinarAssignmentHistory::$notPassed;
                        }

                        $assignmentHistory->update([
                            'status' => $status,
                            'grade' => $grade,
                            'marking_type' => $mt,
                            'mark' => null
                        ]);

                        if ($status == WebinarAssignmentHistory::$passed) {
                            $buyStoreReward = RewardAccounting::calculateScore(Reward::PASS_ASSIGNMENT);
                            RewardAccounting::makeRewardAccounting($assignmentHistory->student_id, $buyStoreReward, Reward::PASS_ASSIGNMENT, $assignment->id);
                        }

                        $notifyOptions = [
                            '[instructor.name]' => $assignmentHistory->instructor->full_name,
                            '[c.title]' => $webinar->title,
                            '[student.name]' => $assignmentHistory->student->full_name,
                            '[assignment_grade]' => $assignmentHistory->grade,
                        ];

                        sendNotification('instructor_set_grade', $notifyOptions, $assignmentHistory->student_id);

                        return response()->json([
                            'code' => 200,
                        ]);

                    }else{
                        $mt = 0;

                        $rules = [
                            'radio' => 'required',
                        ];

                        $validator = Validator::make($data, $rules);

                        if ($validator->fails()) {
                            return response([
                                'code' => 422,
                                'errors' => $validator->errors(),
                            ], 422);
                        }

                        $mark = 0;
                        $grade = null;
                        $status = '';


                        if($data['radio'] == 'satisfied'){
                            $mark = 1;
                            $status = WebinarAssignmentHistory::$passed;
                        }else{
                            $mark = 0;
                            $status = WebinarAssignmentHistory::$notPassed;
                        }

                        $assignmentHistory->update([
                            'status' => $status,
                            'mark' => $mark,
                            'grade' => $grade,
                            'marking_type' => $mt
                        ]);

                        /*if ($status == WebinarAssignmentHistory::$passed) {
                            $buyStoreReward = RewardAccounting::calculateScore(Reward::PASS_ASSIGNMENT);
                            RewardAccounting::makeRewardAccounting($assignmentHistory->student_id, $buyStoreReward, Reward::PASS_ASSIGNMENT, $assignment->id);
                        }*/

                        $notifyOptions = [
                            '[instructor.name]' => $assignmentHistory->instructor->full_name,
                            '[c.title]' => $webinar->title,
                            '[student.name]' => $assignmentHistory->student->full_name,
                            '[assignment_grade]' => $data['radio'],
                        ];

                        //sendNotification('instructor_set_grade', $notifyOptions, $assignmentHistory->student_id);

                        return response()->json([
                            'code' => 200,
                        ]);

                    }
                }
            }
        }

        abort(403);
    }

    public function downloadAttach($assignmentId, $historyId, $messageId,$sender_name)
    {
        $user = auth()->user();

        $assignment = WebinarAssignment::where('id', $assignmentId)->first();

        if (!empty($assignment)) {
            $webinar = $assignment->webinar;

            if (!empty($webinar) and $webinar->checkUserHasBought($user)) {
                $allow = ($webinar->creator_id == $user->id or $webinar->teacher_id == $user->id or $user->isAdmin());

                $assignmentHistory = WebinarAssignmentHistory::where('instructor_id', $assignment->creator_id)
                    ->where('id', $historyId)
                    ->where(function ($query) use ($allow, $user) {
                        if (!$allow) {
                            $query->where('student_id', $user->id);
                        }
                    })
                    ->where('assignment_id', $assignment->id)
                    ->with([
                        'messages' => function ($query) {
                            $query->orderBy('created_at', 'desc');
                            $query->whereHas('sender');
                            $query->with([
                                'sender'
                            ]);
                        }
                    ])->first();

                $message = WebinarAssignmentHistoryMessage::where('id', $messageId)
                    ->where('assignment_history_id', $assignmentHistory->id)
                    ->first();
                $sender = $message->sender->full_name;

                if (!empty($message) and !empty($message->file_path)) {
                    $filePath = public_path($message->file_path);
                    $fileTitle = $message->file_title ?? 'attachment';

                    if (file_exists($filePath)) {
                        $fileInfo = pathinfo($filePath);
                        $type = (!empty($fileInfo) and !empty($fileInfo['extension'])) ? $fileInfo['extension'] : '';

                        $fileName = str_replace(' ', '-', $fileTitle);
                        $fileName = str_replace('.', '-', $fileName);
                        //$extension = $fileName.'-assignment-from-';
                        $fileName = $fileName.'-'.$sender_name;
                        $fileName .= '.' . $type;

                        $headers = array(
                            'Content-Type: application/' . $type,
                        );

                        return response()->download($filePath, $fileName, $headers);
                    }
                }
            }
        }

        abort(403);
    }
}
