<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CountryStoreRequest extends FormRequest
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
            'con_code' => ['required','string', 'max:255'],
            'coun_code' => ['required', 'string', 'max:255', 'unique:countries', 'regex:/^\S\D*$/'],
            'coun_name' => ['required', 'string', 'max:255', 'unique:countries', 'regex:/^\D*$/'],
        ];
    }
    public function messages()
    {
        return [            
            'coun_code.regex' => "No whitespace or numbers allowed",
            'coun_name.regex' => "No numbers allowed"
        ];
    }   
}
