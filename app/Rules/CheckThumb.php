<?php

namespace App\Rules;

// use App\Models\UserModel;
use Illuminate\Contracts\Validation\Rule;

class CheckThumb implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->userInfo = session()->get('userInfo');
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
        $check = true;
        $i = 0;
        $fileConfg = ['jpg', 'jpeg', 'png', 'gif'];
        if (isset($value)) {
            foreach ($value as $key => $val) {
                if (!in_array($val->clientExtension(), $fileConfg)) {
                    $this->nameExtIncorrect[] = $val->getClientOriginalName();
                    // break;
                    $i++;
                }
            }
            if ($i > 0) {
                $check = false;
                $this->listFileIncorrect = implode(', ', $this->nameExtIncorrect);
            }
        } else {
            return false;
        }
        return $check;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return $this->listFileIncorrect . ' là file không không hợp lệ (file hợp lệ phải có phần mở rộng: jpg, jpeg, png, gif)';
    }
}
