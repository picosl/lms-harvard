<?php

namespace App\Http\Controllers\Panel;

use App\Exports\salesExport;
use App\Http\Controllers\Controller;
use App\Models\Webinar;
use App\Models\CourseInstruction;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Maatwebsite\Excel\Facades\Excel;
use Auth;

class CourseInstructionController extends Controller
{
    public function index(Request $request)
    {
        
        //$this->authorize('course_instruction_view');

        //$query = Sale::whereNotNull('webinar_id');
        $query = CourseInstruction::where('teacher_id',auth()->user()->id)->get();

        $data = [
            'pageTitle' => 'Instruction History',
            'course_instruction' => $query, 
        ];

        $teacher_ids = $request->get('teacher_ids');
        $webinar_ids = $request->get('webinar_ids');

        if (!empty($teacher_ids)) {
            $data['teachers'] = User::select('id', 'full_name')
                ->whereIn('id', $teacher_ids)->get();
        }

        if (!empty($webinar_ids)) {
            $data['webinars'] = Webinar::select('id')
                ->whereIn('id', $webinar_ids)->get();
        }


        return view('web.default.panel.course_instruction.list', $data);
    }

}