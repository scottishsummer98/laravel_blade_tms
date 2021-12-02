@extends('layouts.main')

@section('content')

<div class="card">
    <div class="card-header">
        Edit Country Information
    </div>
    <form method="POST" action="{{ route('countries.update', $country->id) }}">
    @csrf
    @method('PUT')
    <div class="card-body">
        <div class="form-group row">
            <label for="con_code" class="col-md-4 col-form-label text-md-right">{{ __('Continent Code') }}</label>

            <div class="col-md-6">
                <select id="con_code" type="text" class="form-control @error('con_code') is-invalid @enderror" name="con_code" value="{{ old('con_code') }}" required autocomplete="con_code" autofocus>
                    <option selected disabled>Select Continent Code</option>
                    @foreach ($continentlist as $listitem)
                            <option value="{{ $listitem->con_code }}">{{ $listitem->con_name }}</option>
                        @endforeach
                </select>

                @error('con_code')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row">
            <label for="coun_code" class="col-md-4 col-form-label text-md-right">{{ __('Country Code') }}</label>

            <div class="col-md-6">
                <input id="coun_code" type="text" class="form-control @error('coun_code') is-invalid @enderror" name="coun_code" value="{{ old('coun_code', $country->coun_code) }}" required autocomplete="coun_code" autofocus>

                @error('coun_code')
                    <span class="invalid-feedback" role="alert">
                        <strong>{{ $message }}</strong>
                    </span>
                @enderror
            </div>
        </div>

        <div class="form-group row">
            <label for="coun_name" class="col-md-4 col-form-label text-md-right">{{ __('Country Name') }}</label>

            <div class="col-md-6">
                <input id="coun_name" type="text" class="form-control @error('coun_name') is-invalid @enderror" name="coun_name" value="{{ old('coun_name', $country->coun_name) }}" required autocomplete="coun_name" autofocus>

                @error('coun_name')
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
                    <a class="btn btn-primary mr-2" href="{{ route('countries.index') }}">Back</a>
                </li>
                <li class="nav-item">
                    <button type="submit" class="btn btn-success">Update</button>
                </li>
            </ul>
        </div>
    </form>   
</div>

@endsection

@section('footer')

<script>
    $(document).ready(function(){
        $('#con_code').val('{{$country->con_code}}')
    })
</script>

@endsection