@extends('layouts.main')

@section('content')

<div class="card">
    <div class="card-header">
        Update Users Information
    </div>
    <form method="POST" action="{{ route('users.update', $user->id) }}">
    @csrf
    @method('PUT')
        <div class="card-body">
            <div class="form-group row">
                <label for="first_name" class="col-md-4 col-form-label text-md-right">{{ __('First Name') }}</label>

                <div class="col-md-6">
                    <input id="first_name" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name', $user->first_name) }}" required autocomplete="first_name" autofocus>

                    @error('first_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="last_name" class="col-md-4 col-form-label text-md-right">{{ __('Last Name') }}</label>

                <div class="col-md-6">
                    <input id="last_name" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name', $user->last_name) }}" required autocomplete="last_name" autofocus>

                    @error('last_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="user_name" class="col-md-4 col-form-label text-md-right">{{ __('User Name') }}</label>

                <div class="col-md-6">
                    <input id="user_name" type="text" class="form-control @error('user_name') is-invalid @enderror" name="user_name" value="{{ old('user_name', $user->user_name) }}" required autocomplete="user_name" autofocus>

                    @error('user_name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="country" class="col-md-4 col-form-label text-md-right">{{ __('Country') }}</label>

                <div class="col-md-6">
                    <select id="country" type="text" class="form-control @error('country') is-invalid @enderror" name="country" value="{{ old('country')}}" required autocomplete="country" autofocus>
                        <option disabled>Pick Your Country</option>
                        @foreach ($countrylist as $listitem)
                            <option value="{{ $listitem->coun_name }}">{{ $listitem->coun_name }}</option>
                        @endforeach
                    </select>
                    @error('country')
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
                    <a class="btn btn-primary mr-2" href="{{ route('users.index') }}">Back</a>
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
        $('#country').val('{{$user->country}}')
    })
</script>

@endsection