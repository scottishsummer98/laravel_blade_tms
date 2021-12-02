@extends('layouts.main')

@section('content')

<div class="card">
    <div class="card-header">
        Assign Task For Ownself
    </div>
    <form method="POST" action="{{ route('tasks.index.storeOwnTask') }}">
    @csrf
    
        <div class="card-body">
            <div class="row">
                <div class="col-md-5 ml-5">
                    <div class="form-group row">
                        <label for="title" class="col-md-4 col-form-label">{{ __('Title') }}</label>
        
                        <div class="col-md-7">
                            <input id="title" type="text" class="form-control @error('title') is-invalid @enderror" name="title" value="{{ old('title') }}" required autocomplete="title" autofocus>
        
                            @error('title')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="assign_date" class="col-md-4 col-form-label">{{ __('Assign Date') }}</label>
        
                        <div class="col-md-7">
                            <input id="assign_date" type="datetime-local" class="form-control @error('assign_date') is-invalid @enderror" name="assign_date" value="{{ old('assign_date') }}" required autocomplete="assign_date" autofocus>
        
                            @error('assign_date')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="status" class="col-md-4 col-form-label">{{ __('Status') }}</label>
        
                        <div class="col-md-7">
                            <select id="status" type="text" class="form-control @error('status') is-invalid @enderror" name="status" value="{{ old('status') }}" required autocomplete="status" autofocus>
                                <option selected disabled>Select Status</option>
                                <option value="Assigned">Assigned</option>
                                <option value="Doing">Doing</option>
                                <option value="Done">Done</option>
                                <option value="Queue">Queue</option>
                            </select>
        
                            @error('status')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group row">
                        <label for="description" class="col-md-2 col-form-label">{{ __('Description') }}</label>
        
                        <div class="col-md-10">
                            <textarea rows="8" id="description" type="text" class="form-control @error('description') is-invalid @enderror" name="description" value="{{ old('description') }}" required autocomplete="description" autofocus></textarea>
        
                            @error('description')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-footer">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="btn btn-primary mr-2" href="{{ route('tasks.index') }}">Back</a>
                </li>
                <li class="nav-item">
                    <button type="reset" class="btn btn-warning mr-2">Reset</button>
                </li>
                <li class="nav-item">
                    <button type="submit" class="btn btn-success">Save</button>
                </li>
            </ul>
        </div>
    </form>   
</div>

@endsection