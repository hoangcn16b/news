<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use App\Models\UserModel;
use Illuminate\Support\Facades\Hash;
use App\Rules\CheckOldPassword;

class PasswordRequest extends FormRequest
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
        $oldPass = $this->password;
        $newPass = $this->new_password;
        $confirmPass = $this->new_confirm_password;
        // $userModel = new UserModel();
        // $checkRealPass = $userModel->checkPassword($id, $oldPass);
        if ($oldPass != null) {


            $condNewPass      = "bail|required|different:password|between:5,20|string";
            $condConfirmPass   = "bail|required|between:5,20|string";

            return [
                'password' => ['required', new CheckOldPassword($oldPass)],
                'new_password' => $condNewPass,
                'new_confirm_password' => "same:new_password",
            ];
            // if (empty($checkRealPass)) {
            //     return [
            //         'password' => function ($attribute, $value, $fail) {
            //             if (empty($checkRealPass)) {
            //                 return $fail('Mật khẩu cũ không chính xác');
            //             }
            //         }
            //     ];
            // } else {
            //     $condNewPass      = "bail|required|different:password|between:5,20|string";
            //     $condConfirmPass   = "bail|required|between:5,20|string";

            //     return [
            //         // 'password' => 'bail|required',
            //         'new_password' => $condNewPass,
            //         'new_confirm_password' => "same:new_password",
            //     ];
            // }
        } else {
            return [
                'password' => function ($attribute, $value, $fail) {
                    if (empty($checkRealPass)) {
                        return $fail('Nhập đầy đủ thông tin');
                    }
                }
            ];
        }
    }

    public function messages()
    {
        return [
            // 'password.required' => 'Mật khẩu cũ không chính xác',
            'new_password.different'      => 'Mật khẩu mới và mật khẩu cũ phải khác nhau',
        ];
    }
    public function attributes()
    {
        return [
            // 'iscorrect' => 'Mật khẩu cũ không chính xác',
            // 'description' => 'Field Description: ',
        ];
    }
}
