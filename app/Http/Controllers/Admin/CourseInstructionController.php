<?php

namespace App\Http\Controllers\Admin;

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
        
        $this->authorize('course_instruction_view');

        //$query = Sale::whereNotNull('webinar_id');
        $query = CourseInstruction::all();

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

        return view('admin.course_instruction.list', $data);
    }

    private function makeTitle($sale)
    {
        $item = $sale->webinar;

        $sale->item_title = $item ? $item->title : trans('update.deleted_item');
        $sale->item_id = $item ? $item->id : '';
        $sale->item_seller = ($item and $item->creator) ? $item->creator->full_name : trans('update.deleted_item');
        $sale->seller_id = ($item and $item->creator) ? $item->creator->id : '';
        $sale->sale_type = ($item and $item->creator) ? $item->creator->id : '';

        return $sale;
    }

    private function getSalesFilters($query, $request)
    {
        $item_title = $request->get('item_title');
        $from = $request->get('from');
        $to = $request->get('to');
        $status = $request->get('status');
        $webinar_ids = $request->get('webinar_ids', []);
        $teacher_ids = $request->get('teacher_ids', []);
        $student_ids = $request->get('student_ids', []);
        $userIds = array_merge($teacher_ids, $student_ids);

        if (!empty($item_title)) {
            $ids = Webinar::whereTranslationLike('title', "%$item_title%")->pluck('id')->toArray();
            $webinar_ids = array_merge($webinar_ids, $ids);
        }

        $query = fromAndToDateFilter($from, $to, $query, 'created_at');

        if (!empty($status)) {
            if ($status == 'success') {
                $query->whereNull('refund_at');
            } elseif ($status == 'refund') {
                $query->whereNotNull('refund_at');
            } elseif ($status == 'blocked') {
                $query->where('access_to_purchased_item', false);
            }
        }

        if (!empty($webinar_ids) and count($webinar_ids)) {
            $query->whereIn('webinar_id', $webinar_ids);
        }

        if (!empty($userIds) and count($userIds)) {
            $query->where(function ($query) use ($userIds) {
                $query->whereIn('buyer_id', $userIds);
                $query->orWhereIn('seller_id', $userIds);
            });
        }

        return $query;
    }

    public function add()
    {
        $this->authorize('course_instruction_view');

        $data = [
            'pageTitle' => 'Add Course Instruction'
        ];

        return view('admin.course_instruction.add', $data);
    }

    public function store(Request $request)
    {
     
        $this->authorize('course_instruction_view');

        $data = $request->all();
        //dd($request->attachments['assignmentTemp']['attach']);

        $rules = [
            'user_id' => 'required|exists:users,id',
        ];

        if (!empty($data['webinar_id'])) {
            $rules['webinar_id'] = 'required|exists:webinars,id';
        } elseif (!empty($data['bundle_id'])) {
            $rules['bundle_id'] = 'required|exists:bundles,id';
        } elseif (!empty($data['product_id'])) {
            $rules['product_id'] = 'required|exists:products,id';
        }

        $validator = Validator::make($data, $rules);

        if ($validator->fails()) {
            if ($request->ajax()) {
                return response([
                    'code' => 422,
                    'errors' => $validator->errors(),
                ], 422);
            } else {
                return back()->withErrors($validator->errors()->getMessages());
            }
        }

        $user = User::find($data['user_id']);

        if (!empty($user)) {
            $name = $request->name;
            $course_id = $request->webinar_id;
            $teacher_id = $request->user_id;
            $author_id = auth()->user()->id;
            if($request->status != null && $request->status = "on"){
                $status = 1;
            }else{
                $status = 0;
            }
            if($request->attachments['assignmentTemp']['attach'] != null){
                $attach = $request->attachments['assignmentTemp']['attach'];
            }else{
                $attach = '';
            }
            
            $courseInstruction = CourseInstruction::create([
                'course_id' => $course_id,
                'teacher_id' => $teacher_id,
                'author_id' => $author_id,
                'name' => $name,
                'attach' => $attach,
                'status' => $status,
                'created_at' => time()
            ]);

            if ($request->ajax()) {
                return response()->json([
                    'code' => 200
                ]);
            } else {
                $toastData = [
                    'title' => trans('public.request_success'),
                    'msg' => trans('webinars.success_store'),
                    'status' => 'success'
                ];
                return redirect('/admin/course_instruction/list')->with(['toast' => $toastData]);
            }
        }

        
    }

    public function edit($id)
    {
        $this->authorize('course_instruction_view');

        $ci = CourseInstruction::where('id', $id)->first();

        $data = [
            'pageTitle' => 'Edit Course Instruction',
            'ci' => $ci
        ];

        return view('admin.course_instruction.edit', $data);
    }

    public function blockAccess($saleId)
    {
        $this->authorize('admin_enrollment_block_access');

        $sale = Sale::where('id', $saleId)
            ->whereNull('refund_at')
            ->first();

        if (!empty($sale)) {
            if ($sale->manual_added) {
                $sale->delete();
            } else {
                $sale->update([
                    'access_to_purchased_item' => false
                ]);
            }

            $toastData = [
                'title' => trans('public.request_success'),
                'msg' => trans('update.delete-student-access_successfully'),
                'status' => 'success'
            ];
            return back()->with(['toast' => $toastData]);
        }

        abort(404);
    }

    public function enableAccess($saleId)
    {
        $this->authorize('admin_enrollment_enable_access');

        $sale = Sale::where('id', $saleId)
            ->whereNull('refund_at')
            ->first();

        if (!empty($sale)) {
            $sale->update([
                'access_to_purchased_item' => true
            ]);

            $toastData = [
                'title' => trans('public.request_success'),
                'msg' => trans('update.enable-student-access_successfully'),
                'status' => 'success'
            ];
            return back()->with(['toast' => $toastData]);
        }

        abort(404);
    }

    public function destroy($id)
    {
        $this->authorize('admin_webinars_edit');

        $ci = CourseInstruction::where('id', $id)->first();

        if (!empty($ci)) {
            $ci->delete();
        }

        /*return response()->json(['code' => 200], 200);*/
        $toastData = [
            'title' => trans('public.request_success'),
            'msg' => 'Deleted Successfully',
            'status' => 'success'
        ];
        return back()->with(['toast' => $toastData]);
    }

    public function exportExcel(Request $request)
    {
        $this->authorize('admin_sales_export');

        $query = Sale::whereNotNull('webinar_id');

        $salesQuery = $this->getSalesFilters($query, $request);

        $sales = $salesQuery->orderBy('created_at', 'desc')
            ->with([
                'buyer',
                'webinar',
                'meeting',
                'subscribe',
                'promotion'
            ])
            ->get();

        foreach ($sales as $sale) {
            $sale = $this->makeTitle($sale);
        }

        $export = new salesExport($sales);

        return Excel::download($export, 'sales.xlsx');
    }
}