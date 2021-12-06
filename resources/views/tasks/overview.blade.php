@extends('layouts.main')

@section('content')

<div class="card">
    <div>
        @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session('message')}}
            </div>
        @elseif (session()->has('rmessage'))
            <div class="alert alert-danger">
                {{ session('rmessage')}}
            </div>
        @endif
    </div>
    <div class="card-header">
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="{{ route('tasks.overview') }}">Overall Tasks</a>
                  </li>
                </ul>
                <form class="d-flex" action="{{ route('tasks.overview') }}" method="get">
                  <input class="form-control mr-2" type="text" placeholder="Search here" name="search2" id="inLineFormInput">
                  <button class="btn btn-primary" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>

    <div class="card-body">
        @if ($tasks->count() > 0 )
        <table class="table table-dark table-striped" style="text-align: center;">
            <thead>
                <tr>
                    <th scope="col">SL</th>
                    <th scope="col">Title</th>
                    <th scope="col">Description</th>
                    <th scope="col">Assigned By</th>
                    <th scope="col">Assigners Country</th>
                    <th scope="col">Assigned To</th>
                    <th scope="col">Country</th>
                    <th scope="col">Assigning Date</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @php 
                    $i = $tasks->perPage() * ($tasks->currentPage() - 1);
                @endphp
                @foreach ($tasks as $task)
                    <tr>
                        <th style="width:50px" scope="row">{{  $loop->index +1 + $i }}</th>
                        <td style="width:120px">{{  $task->title }}</td>
                        <td style="width:220px">{{  Str::substr($task->description, 0, 30) }} {{'. . . . . . .'}}  </td>
                        <td style="width:150px">
                            @if ($task->assigned_by == auth()->user()->user_name)
                                {{ __('Myself') }}
                            @else
                                {{  $task->assigned_by }}
                            @endif
                        </td>
                        <td style="width:200px">{{  $task->assigned_by_country }}</td>
                        <td style="width:150px">
                            @if ($task->assigned_to == auth()->user()->user_name)
                                {{ __('Myself') }}
                            @else
                                {{  $task->assigned_to }}
                            @endif
                        </td>
                        <td style="width:200px">{{  $task->assigned_to_country }}</td>
                        <td style="width:235px">{{  Carbon\Carbon::parse($task->assign_date)->format('jS F, Y') }}</td>
                        <td style="width:100px">{{  $task->status }}</td>
                        <td style="width:200px">
                            <a class="btn btn-warning" style="color:darkslategray; width:75px; height:35px;display:inline" href="{{ route('tasks.overview.editOverview', $task->id) }}">Edit</a>
                            <a class="btn btn-danger" style="color:darkslategray; width:75px; height:35px;" data-toggle="modal" data-target="#deleteModal{{$task->id}}">Delete</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        @else
            <div class="alert alert-danger">
                <strong>Sorry !</strong> No Task Found.
            </div>
         @endif
    </div>
    <div class="card-footer">
        {{ $tasks->links() }}
    </div>
</div>

@endsection

<!--Delete Modal -->
@foreach ($tasks as $task)
    <div class="modal fade" id="deleteModal{{$task->id}}" tabindex="-1" role="dialog" aria-hidden="true">
        <form action="{{ route('tasks.overview.destroyOverview', $task->id) }}" method="post">
            @csrf
            @method('Delete')
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to delete task <b>{{ $task->title}}</b> ?</h5>
                        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">{{__('No')}}</button>
                        <button type="submit" class="btn btn-secondary">{{__('Yes')}}</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endforeach