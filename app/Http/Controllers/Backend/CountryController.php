<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\CountryStoreRequest;
use App\Models\Continent;
use App\Models\Country;
use Illuminate\Http\Request;

class CountryController extends Controller
{
    public function index(Request $request)
    {
        $countries = Country::orderBy('coun_name')->paginate(20);

        if($request->has('search')){
            $countries = Country::where('con_code','LIKE', "{$request->search}")
                    ->orWhere('coun_name','LIKE', "{$request->search}")
                    ->paginate(50);
        }
        
        return view('countries.index', compact('countries'));
    }

    public function create()
    {
        $continentlist = Continent::orderBy('con_name')->get();
        return view('countries.create')->with('continentlist', $continentlist);
    }

    
    public function store(CountryStoreRequest $request)
    {
        Country::create([
            'con_code' => $request->con_code,
            'coun_code' => $request->coun_code,
            'coun_name' => $request->coun_name,
        ]);

        return redirect()->route('countries.index')->with('message', 'Country Created Successfully');
    }


    public function edit(Country $country)
    {
        $continentlist = Continent::orderBy('con_name')->get();
        return view('countries.edit', compact('country','continentlist'));
    }


    public function update(CountryStoreRequest $request, Country $country)
    {
        $country->update($request->all());
        return redirect()->route('countries.index')->with('message', 'Country Updated Successfully');
    }


    public function destroy(Country $country)
    {
        $country->delete();
        return redirect()->route('countries.index')->with('rmessage', 'Country Deleted Successfully');
    }
}
