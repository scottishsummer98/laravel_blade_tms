@extends('layouts.main')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif

                    {{ __('Welcome') }} {{ Auth::user()->first_name }} {{ Auth::user()->last_name }}{{__('.')}}
                    {{ __('This is a Task Management System. You can assign tasks to others and also can pin task for ownself.')}}
                    {{ __('Go to the task module and select Assign Task sub-module. Then select either Assign Task For Ownself or Assign Task To Others tab.')}}
                    {{ __('View Task sub-module under the Task Module shows tasks assigned to you by others and your own pinned tasks in two different tab panes.')}}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
