<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRequest extends FormRequest
{
    private $table            = 'users';
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
        $task   = '';
        if ($this->task_add == 'add') $task = 'add';
        if ($this->task_edit_info == 'edit-info') $task = 'edit-info';
        if ($this->task_change_password == 'change-password') $task = 'change-password';
        if ($this->task_change_level == 'change-level') $task = 'change-level';
        $condAvatar   = '';
        $condUserName = '';
        $condEmail    = '';
        $condPass     = '';
        $condLevel    = '';
        $condStatus   = '';
        $condFullname = '';


        switch ($task) {
            case 'add':
                $condUserName   = "bail|required|between:5,100|unique:$this->table,username";
                $condEmail      = "bail|required|email|unique:$this->table,email";
                $condFullname   = 'bail|required|min: 5';
                $condPass       = 'bail|required|between:5,100|confirmed';
                $condStatus     = 'bail|in:active,inactive';
                $condLevel      = 'bail|in:admin,member';
                $condAvatar     = 'bail|required|image|max:500';
                break;
            case 'edit-info':
                $condUserName   = "bail|required|between:5,100|unique:$this->table,username,$id";
                $condFullname   = 'bail|required|min: 5';
                $condAvatar     = 'bail|image|max:500';
                $condStatus     = 'bail|in:active,inactive';
                $condEmail      = "bail|required|email|unique:$this->table,email,$id";
                break;
            case 'change-password':
                $condPass = 'bail|required|between:5,100|confirmed';
                break;
            case 'change-level':
                $condLevel = 'bail|in:admin,member';
                break;
            default:
                break;
        }


        return [
            'username' => $condUserName,
            'email'    => $condEmail,
            'fullname' => $condFullname,
            'status'   => $condStatus,
            'password' => $condPass,
            'level'    => $condLevel,
            'avatar'   => $condAvatar
        ];
    }

    public function messages()
    {
        return [
            // 'name.required' => 'Name kh??ng ???????c r???ng',
            // 'name.min'      => 'Name :input chi???u d??i ph???i c?? ??t nh???t :min k?? t???',
        ];
    }
    public function attributes()
    {
        return [
            // 'description' => 'Field Description: ',
        ];
    }
}
