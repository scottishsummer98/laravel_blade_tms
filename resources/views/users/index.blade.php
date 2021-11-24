@extends('layouts.main')

@section('content')

<div class="card">
    <div>
        @if (session()->has('message'))
            <div class="alert alert-success">
                {{ session('message')}}
            </div>
        @endif
    </div>
    <div class="card-header">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">All Current Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="{{ route('users.create') }}">Create New</a>
            </li>
        </ul>
    </div>

    <div class="card-body">
        <table class="table table-dark table-striped" style="text-align: center;">
            <thead>
                <tr>
                <th scope="col">SL</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">User Name</th>
                <th scope="col">Country</th>
                <th scope="col">Email</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($users as $user)
                    <tr>
                        <th scope="row">{{  $SL++ }}</th>
                        <td>{{  $user->first_name }}</td>
                        <td>{{  $user->last_name }}</td>
                        <td>{{  $user->user_name }}</td>
                        <td>{{  $user->country }}</td>
                        <td>{{  $user->email }}</td>
                        <td>
                            <button class="btn btn-warning" style="color:darkslategray;">Edit</button>
                            <button class="btn btn-danger" style="color:darkslategray;">Delete</button>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        {{ $users->links() }}
    </div>
</div>

@endsection