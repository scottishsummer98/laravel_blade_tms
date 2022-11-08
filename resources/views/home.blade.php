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
                    
                    @if (Auth::user()->email == 'samiremail98@gmail.com')

                        {{ __('Welcome Admin') }} {{ Auth::user()->first_name }} {{ Auth::user()->last_name }}{{__('.')}}
                        {{ __('This is a Task Management System. Admin can Enter,edit and delete users. Go to the "Manage Users" section.')}}
                        {{ __('Also New Continent and Countries can be added. Countries and continent can be edited and deleted too. Go to the "Manage Area" section on the sidebar')}}
                        {{ __('"Manage Tasks" section is used to view, assign and manage tasks. "Overall Tasks" sub-section enables the admin to edit and delete tasks assigned by everyone.')}}
                        {{ __('"My Tasks" is for users to view only their tasks, whether assigned by others or assigned to someone else by them.')}}
                        {{ __('"Assign Task For Own" is to pin tasks for ownself. "Assign Task To Other" is for assigning tasks to others')}}
                    @else
                        {{ __('Welcome General User') }} {{ Auth::user()->first_name }} {{ Auth::user()->last_name }}{{__('.')}}
                        {{ __('This is a Task Management System. Select "Manage Tasks" section to view own tasks. ')}}
                        {{ __('"My Tasks" is for users to view only their tasks, whether assigned by others or assigned to someone else by them.')}}
                        {{ __('"Assign Task For Own" is to pin tasks for ownself. "Assign Task To Other" is for assigning tasks to others.')}}
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
