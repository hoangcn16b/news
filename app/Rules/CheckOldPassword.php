<?php

namespace App\Rules;

use App\Models\UserModel;
use Illuminate\Contracts\Validation\Rule;

class CheckOldPassword implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->userInfo = session()->get('userInfo');
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    public function passes($attribute, $value)
    {
        $user = UserModel::find($this->userInfo['id']);
        // dd($user);
        // dd(md5($value));

        return $user->password == md5($value);
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Mật khẩu cũ không chính xác';
    }
}
