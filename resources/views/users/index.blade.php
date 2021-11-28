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
                    <a class="nav-link active" aria-current="page" href="{{ route('users.index') }}">All Current Users</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('users.create') }}">Create New</a>
                  </li>
                </ul>
                <form class="d-flex" action="{{ route('users.index') }}" method="get">
                  <input class="form-control mr-2" type="text" placeholder="Search here" name="search" id="inLineFormInput">
                  <button class="btn btn-primary" type="submit">Search</button>
                </form>
            </div>
        </nav>
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
                @php 
                    $i = $users->perPage() * ($users->currentPage() - 1);
                @endphp
                @foreach ($users as $user)
                    <tr>
                        <th scope="row">{{  $loop->index +1 + $i }}</th>
                        <td>{{  $user->first_name }}</td>
                        <td>{{  $user->last_name }}</td>
                        <td>{{  $user->user_name }}</td>
                        <td>{{  $user->country }}</td>
                        <td>{{  $user->email }}</td>
                        <td>
                            <a class="btn btn-warning" style="color:darkslategray; width:75px; height:35px;display:inline" href="{{ route('users.edit', $user->id) }}">Edit</a>
                            <form style="float:left;display:inline" action="{{ route('users.destroy', $user->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button class="btn btn-danger" style="color:darkslategray; width:75px; height:35px;">Delete</button>
                            </form>
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