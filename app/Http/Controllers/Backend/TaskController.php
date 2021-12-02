<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;

class TaskController extends Controller
{
    public function index(Request $request)
    {
        
        $tasks = Task::orderBy('created_at', 'DESC')
        ->where('assigned_by', '=', auth()->user()->user_name)
        ->orWhere('assigned_to', '=', auth()->user()->user_name)
        ->paginate(20);

        if($request->has('search')){
            $tasks = Task::where('status','like', "[{$request->status}]")
                    ->paginate(50);
        }

        return view('tasks.index', compact('tasks'));
    }

    
    public function overview(Request $request)
    {
        $tasks = Task::orderBy('created_at', 'DESC')->paginate(20);

        if($request->has('search')){
            $tasks = Task::where('status','like', "{$request->status}")
                    ->paginate(50);
        }

        return view('tasks.overview', compact('tasks'));
    }


    public function ownCreate()
    {
        return view('tasks.assigntaskown');
    }

    public function otherCreate()
    {
        $countrylist = Country::orderBy('coun_name')->get();
        $userlist = User::orderBy('first_name')->get();
        return view('tasks.assigntaskother', compact('userlist','countrylist'));
    }


    public function storeOwnTask(Request $request)
    {
        Task::create([
            'title' => $request->title,
            'description' => $request->description,
            'assigned_by' => auth()->user()->user_name,
            'assigned_by_country' => auth()->user()->country,
            'assigned_to' => auth()->user()->user_name,
            'assigned_to_country' => auth()->user()->country,
            'assign_date' => $request->assign_date,
            'status' => $request->status,
        ]);

        return redirect()->route('tasks.index')->with('message', 'Task Pinned Successfully');
    }

    public function storeOtherTask(Request $request)
    {
        Task::create([
            'title' => $request->title,
            'description' => $request->description,
            'assigned_by' => auth()->user()->user_name,
            'assigned_by_country' => auth()->user()->country,
            'assigned_to' => $request->assigned_to,
            'assigned_to_country' => $request->assigned_to_country,
            'assign_date' => $request->assign_date,
            'status' => $request->status,
        ]);

        return redirect()->route('tasks.index')->with('message', 'Task Assigned Successfully');
    }

    public function show()
    {
        
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
