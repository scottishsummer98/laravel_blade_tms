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
                    <a class="nav-link active" aria-current="page" href="{{ route('continents.index') }}">Currently Listed Continents</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="{{ route('continents.create') }}">Add New Continent</a>
                  </li>
                </ul>
                <form class="d-flex" action="{{ route('continents.index') }}" method="get">
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
                <th scope="col">Continent Code</th>
                <th scope="col">Continent Name</th>
                <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                @php 
                    $i = $continents->perPage() * ($continents->currentPage() - 1);
                @endphp
                @foreach ($continents as $continent)
                    <tr>
                        <th scope="row">{{  $loop->index +1 + $i }}</th>
                        <td>{{  $continent->con_code }}</td>
                        <td>{{  $continent->con_name }}</td>
                        <td>
                            <a class="btn btn-warning" style="color:darkslategray; width:75px; height:35px;display:inline" href="{{ route('continents.edit', $continent->id) }}">Edit</a>
                            <a class="btn btn-danger" style="color:darkslategray; width:75px; height:35px;" data-toggle="modal" data-target="#deleteModal{{$continent->id}}">Delete</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        {{ $continents->links() }}
    </div>
</div>

@endsection

<!--Delete Modal -->
@foreach ($continents as $continent)
    <div class="modal fade" id="deleteModal{{$continent->id}}" tabindex="-1" role="dialog" aria-hidden="true">
        <form action="{{ route('continents.destroy', $continent->id) }}" method="post">
            @csrf
            @method('Delete')
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Are you sure you want to delete {{ $continent->con_name}} ?</h5>
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