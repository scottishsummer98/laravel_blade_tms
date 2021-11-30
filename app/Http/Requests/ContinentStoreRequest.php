<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ContinentStoreRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'con_code' => ['required', 'string', 'max:255', 'unique:continents', 'regex:/^\S\D*$/'],
            'con_name' => ['required', 'string', 'max:255', 'unique:continents', 'regex:/^\D*$/'],
        ];
    }
    public function messages()
    {
        return [            
            'con_code.regex' => "No whitespace or numbers allowed",
            'con_name.regex' => "No numbers allowed"
        ];
    }   
}
