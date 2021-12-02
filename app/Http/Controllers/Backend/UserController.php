<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\UserStoreRequest;
use App\Http\Requests\UserUpdateRequest;
use App\Models\Country;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

use function GuzzleHttp\Promise\all;

class UserController extends Controller
{
    public function index(Request $request)
    {
        $users = User::orderBy('created_at', 'DESC')->paginate(20);

        if($request->has('search')){
            $users = User::where('user_name','like', "%{$request->search}%")
                    ->orWhere('country','like', "{$request->search}")
                    ->paginate(50);
        }
        
        return view('users.index', compact('users'));
    }


    public function create()
    {
        $countrylist = Country::orderBy('coun_name')->get();
        return view('users.create')->with('countrylist', $countrylist);
    }


    public function store(UserStoreRequest $request)
    {
        User::create([
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'user_name' => $request->user_name,
            'country' => $request->country,
            'email' => $request->email,
            'password' => Hash::make($request->password),
        ]);
        
        return redirect()->route('users.index')->with('message', 'User Created Successfully');
    }


    public function edit(User $user)
    {
        $countrylist = Country::orderBy('coun_name')->get();
        return view('users.edit', compact('user','countrylist'));
    }


    public function update(UserUpdateRequest $request, User $user)
    {
        $user->update($request->all());
        return redirect()->route('users.index')->with('message', 'User Updated Successfully');
    }


    public function destroy(User $user)
    {
        $user->delete();
        return redirect()->route('users.index')->with('rmessage', 'User Deleted Successfully');
    }
}
