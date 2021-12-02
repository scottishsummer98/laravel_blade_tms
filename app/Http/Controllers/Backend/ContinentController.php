<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use App\Http\Requests\ContinentStoreRequest;
use App\Models\Continent;
use Illuminate\Http\Request;

class ContinentController extends Controller
{
    public function index(Request $request)
    {
        $continents = Continent::orderBy('con_name')->paginate(20);

        if($request->has('search')){
            $continents = Continent::where('con_code','like', "{$request->search}")
                    ->orWhere('con_name','like', "{$request->search}")
                    ->paginate(50);
        }
    
        return view('continents.index', compact('continents'));
    }


    public function create()
    {
        return view('continents.create');
    }


    public function store(ContinentStoreRequest $request)
    {
        Continent::create([
            'con_code' => $request->con_code,
            'con_name' => $request->con_name,
        ]);

        return redirect()->route('continents.index')->with('message', 'Continent Created Successfully');
    }


    public function edit(Continent $continent)
    {
        return view('continents.edit', compact('continent'));
    }


    public function update(ContinentStoreRequest $request, Continent $continent)
    {
        $continent->update($request->all());
        return redirect()->route('continents.index')->with('message', 'Continent Updated Successfully');
    }


    public function destroy(Continent $continent)
    {
        $continent->delete();
        return redirect()->route('continents.index')->with('rmessage', 'Continent Deleted Successfully');
    }
}
