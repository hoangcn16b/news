<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Rules\CheckThumb;

class ProductRequest extends FormRequest
{
    private $table            = 'products';

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
        $id = $this->id;
        $thumb1 = $this->thumb1;
        $condName = "bail|required|between:5,255|unique:$this->table,name";
        // $condThumb = 'bail|required|image|max:5000';

        if (!empty($id)) {
            $condName .= ",$id";
            $condThumb = 'bail|image|max:5000';
        }

        return [
            'name'        => $condName,
            'price'       => "bail|required",
            'sale_off'        => 'bail|numeric|min:0|max:100|regex:/^\d+(\.\d{1,2})?$/',
            // 'description' => 'bail|required|min:5',
            'ordering'        => 'bail|numeric|min:0|max:100|regex:/^\d+(\.\d{1,2})?$/',
            'special'      => 'bail|in:0,1',
            'status'      => 'bail|in:active,inactive',
            // 'thumb1'       =>   new CheckThumb($thumb1)
        ];
    }

    public function messages()
    {
        return [
            // 'name.required' => 'Name không được rỗng',
            // 'name.min'      => 'Name :input chiều dài phải có ít nhất :min ký tứ',
        ];
    }
    public function attributes()
    {
        return [
            // 'description' => 'Field Description: ',
        ];
    }
}
