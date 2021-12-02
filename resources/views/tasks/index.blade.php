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
                    <a class="nav-link active" aria-current="page" href="{{ route('tasks.index') }}">My Tasks</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('tasks.ownCreate') }}">Assign Task For Own</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('tasks.otherCreate') }}">Assign Task To Other</a>
                  </li>
                </ul>
                <form class="d-flex" action="{{ route('tasks.index') }}" method="get">
                  <input class="form-control mr-2" type="text" placeholder="Search here" name="search" id="inLineFormInput">
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
                            <th style="width:100px" scope="row">{{  $loop->index +1 + $i }}</th>
                            <td style="width:150px">{{  $task->title }}</td>
                            <td style="width:250px">{{  $task->description }}</td>
                            <td style="width:150px">
                                @if ($task->assigned_by == auth()->user()->user_name)
                                    {{ __('Myself') }}
                                @else
                                    {{  $task->assigned_by }}
                                @endif
                            </td>
                            <td style="width:150px">{{  $task->assigned_by_country }}</td>
                            <td style="width:150px">
                                @if ($task->assigned_to == auth()->user()->user_name)
                                    {{ __('Myself') }}
                                @else
                                    {{  $task->assigned_to }}
                                @endif
                            </td>
                            <td style="width:150px">{{  $task->assigned_to_country }}</td>
                            <td style="width:150px">{{  $task->assign_date }}</td>
                            <td style="width:100px">{{  $task->status }}</td>
                            <td style="width:200px">
                                <a class="btn btn-warning" style="color:darkslategray; width:75px; height:35px;display:inline" href="">Edit</a>
                                <a class="btn btn-danger" style="color:darkslategray; width:75px; height:35px;" data-toggle="modal" data-target="#deleteModal">Delete</a>
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