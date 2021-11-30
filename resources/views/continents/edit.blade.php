@extends('layouts.main')

@section('content')

<div class="card">
    <div class="card-header">
        Edit Continent Information
    </div>
    <form method="POST" action="{{ route('continents.update', $continent->id) }}">
    @csrf
    @method('PUT')
        <div class="card-body">
            <div class="form-group row">
                <label for="con_code" class="col-md-4 col-form-label text-md-right">{{ __('Continent Code') }}</label>

                <div class="col-md-6">
                    <input id="con_code" type="text" class="form-control @error('con_code') is-invalid @enderror" name="con_code" value="{{ old('con_code', $continent->con_code) }}" required autocomplete="con_code" autofocus>

                    @error('con_code')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="con_name" class="col-md-4 col-form-label text-md-right">{{ __('Continent Name') }}</label>

                <div class="col-md-6">
                    <input id="con_name" type="text" class="form-control @error('con_name') is-invalid @enderror" name="con_name" value="{{ old('con_name', $continent->con_name) }}" required autocomplete="con_name" autofocus>

                    @error('con_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            
        
        </div>
        <div class="card-footer">
            <ul class="nav justify-content-end">
                <li class="nav-item">
                    <a class="btn btn-primary mr-2" href="{{ route('continents.index') }}">Back</a>
                </li>
                <li class="nav-item">
                    <button type="submit" class="btn btn-success">Update</button>
                </li>
            </ul>
        </div>
    </form>   
</div>

@endsection