<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Batch;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use Illuminate\Validation\Rule;

class BatchController extends Controller
{
    public function index(Request $request)
    {
        //$this->authorize('admin_staffs_list');

        $batch_list = Batch::all();

        $data = [
            'pageTitle' => 'Batch List',
            'batch_list' => $batch_list,
        ];

        return view('admin.batchs.lists', $data);
    }

    public function create()
    {
        //$this->authorize('admin_users_create');

        $data = [
            'pageTitle' => 'Create New Batch',
        ];


        return view('admin.batchs.create', $data);
    }


    public function store(Request $request)
    {
        //$this->authorize('admin_users_create');
        $data = $request->all();

        $this->validate($request, [
            'batch_name' => 'required',
            'webinar_id' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
        ]);
                
        Batch::create([
            'batch_name' => $data['batch_name'],
            'webinar_id' => $data['webinar_id'],
            'start_date' => $data['start_date'],
            'end_date' => $data['end_date'],
        ]);

        $toastData = [
            'title' => '',
            'msg' => 'Batch Added Successfully',
            'status' => 'success'
        ];
        
        return back()->with(['toast' => $toastData]);
    }

    public function edit(Request $request, $id)
    {
        //$this->authorize('admin_users_edit');
        
        $batch = Batch::findOrFail($id);

        $data = [
            'pageTitle' => 'Edit Batch',
            'batch' => $batch
        ];

        return view('admin.batchs.edit', $data);
    }

    public function update(Request $request, $id)
    {
        //$this->authorize('admin_users_edit');

        $batch = Batch::findOrFail($id);

        $this->validate($request, [
            'batch_name' => 'required',
            'webinar_id' => 'required',
            'start_date' => 'required',
            'end_date' => 'required',
        ]);

        $data = $request->all();

        $batch->batch_name = $data['batch_name'];
        $batch->webinar_id = $data['webinar_id'];
        $batch->start_date = $data['start_date'];
        $batch->end_date = $data['end_date'];
        $batch->save();

        $toastData = [
            'title' => '',
            'msg' => 'Batch Updated Successfully',
            'status' => 'success'
        ];
        
        return back()->with(['toast' => $toastData]);
    }

    public function destroy(Request $request, $id)
    {
        //$this->authorize('admin_users_delete');

        $batch = Batch::find($id);

        if ($batch) {
            $batch->delete();
        }

        $toastData = [
            'title' => '',
            'msg' => 'Batch Deleted Successfully',
            'status' => 'success'
        ];
        
        return back()->with(['toast' => $toastData]);
    }
}
