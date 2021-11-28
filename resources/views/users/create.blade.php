@extends('layouts.main')

@section('content')

<div class="card">
    <div class="card-header">
        Enter New Users Information
    </div>
    <form method="POST" action="{{ route('users.store') }}">
    @csrf
        <div class="card-body">
            <div class="form-group row">
                <label for="first_name" class="col-md-4 col-form-label text-md-right">{{ __('First Name') }}</label>

                <div class="col-md-6">
                    <input id="first_name" type="text" class="form-control @error('first_name') is-invalid @enderror" name="first_name" value="{{ old('first_name') }}" required autocomplete="first_name" autofocus>

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
                    <input id="last_name" type="text" class="form-control @error('last_name') is-invalid @enderror" name="last_name" value="{{ old('last_name') }}" required autocomplete="last_name" autofocus>

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
                    <input id="user_name" type="text" class="form-control @error('user_name') is-invalid @enderror" name="user_name" value="{{ old('user_name') }}" required autocomplete="user_name" autofocus>

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
                    <select id="country" type="text" class="form-control @error('country') is-invalid @enderror" name="country" value="{{ old('country') }}" required autocomplete="country" autofocus>
                        <option selected disabled>Pick Your Country</option>
                        <option value="Algeria">Algeria</option>
                        <option value="Egypt">Egypt</option>
                        <option value="Ghana">Ghana</option>
                        <option value="South Africa">South Africa</option>
                        <option value="Zimbabwe">Zimbabwe</option>
                        <option value="Bangladesh">Bangladesh</option>
                        <option value="China">China</option>
                        <option value="India">India</option>
                        <option value="Lebanon">Lebanon</option>
                        <option value="United Arab Emirates">United Arab Emirates</option>
                        <option value="France">France</option>
                        <option value="Germany">Germany</option>
                        <option value="Italy">Italy</option>
                        <option value="Spain">Spain</option>
                        <option value="United Kingdom">United Kingdom</option>
                        <option value="Bahamas">Bahamas</option>
                        <option value="Barbados">Barbados</option>
                        <option value="Costa Rica">Costa Rica</option>
                        <option value="Cuba">Cuba</option>
                        <option value="Dominica">Dominica</option>
                        <option value="Australia">Australia</option>
                        <option value="Fiji">Fiji</option>
                        <option value="New Zealand">New Zealand</option>
                        <option value="Papua New Guinea">Papua New Guinea</option>
                        <option value="Samoa">Samoa</option>
                        <option value="Argentina">Argentina</option>
                        <option value="Brazil">Brazil</option>
                        <option value="Colombia">Colombia</option>
                        <option value="Ecudaor">Ecudaor</option>
                        <option value="Venezuela">Venezuela</option>
                    </select>
                    @error('country')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Mail Address') }}</label>

                <div class="col-md-6">
                    <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <div class="form-group row">
                <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }}</label>

                <div class="col-md-6">
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                    @error('password')
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