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

        if($request->has('search1')){
            $tasks = Task::where('status','like', "{$request->search1}")
                    ->orWhere('title','like', "%{$request->search1}%")
                    ->paginate(50);
        }

        return view('tasks.index', compact('tasks'));
    }

    
    public function overview(Request $request)
    {
        $tasks = Task::orderBy('created_at', 'DESC')->paginate(20);

        if($request->has('search2')){
            $tasks = Task::where('status','like', "{$request->search2}")
                    ->orWhere('title','like', "%{$request->search2}%")
                    ->paginate(50);
        }

        return view('tasks.overview', compact('tasks'));
    }


    public function ownCreate()
    {
        return view('tasks.createtaskown');
    }

    public function otherCreate()
    {
        $countrylist = Country::orderBy('coun_name')->get();
        $userlist = User::orderBy('first_name')->get();
        return view('tasks.createtaskother', compact('userlist','countrylist'));
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


    public function editIndex($id)
    {
        $countrylist = Country::orderBy('coun_name')->get();
        $userlist = User::orderBy('first_name')->get();
        $task = Task::find($id);
        return view('tasks.editindex', compact('task','countrylist','userlist'));
    }


    public function editIndexRestricted($id)
    {
        $countrylist = Country::orderBy('coun_name')->get();
        $userlist = User::orderBy('first_name')->get();
        $task = Task::find($id);
        return view('tasks.editindexrestricted', compact('task','countrylist','userlist'));
    }

    public function updateIndex(Request $request, $id)
    {
        $task = Task::find($id);
        $task->update($request->all());
        return redirect()->route('tasks.index')->with('message', 'Task Updated Successfully');
    }


    public function destroyIndex($id)
    {
        $task = Task::find($id);
        $task->delete();
        return redirect()->route('tasks.index')->with('rmessage', 'Task Deleted Successfully');
    }


    public function editOverview($id)
    {
        $countrylist = Country::orderBy('coun_name')->get();
        $userlist = User::orderBy('first_name')->get();
        $task = Task::find($id);
        return view('tasks.editoverview', compact('task','countrylist','userlist'));
    }


    public function updateOverview(Request $request, $id)
    {
        $task = Task::find($id);
        $task->update($request->all());
        return redirect()->route('tasks.overview')->with('message', 'Task Updated Successfully');
    }


    public function destroyOverview($id)
    {
        $task = Task::find($id);
        $task->delete();
        return redirect()->route('tasks.overview')->with('rmessage', 'Task Deleted Successfully');
    }
}
