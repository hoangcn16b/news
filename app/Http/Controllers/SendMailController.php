<?php

namespace App\Http\Controllers;

use App\Jobs\SendEmail;
use App\Models\UserModel;
use Illuminate\Http\Request;
use App\Mail\TestMail;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Carbon;

class SendMailController extends Controller
{
    public function sendMail($params)
    {
        // $user = UserModel::find(5);
        $mailable = new SendEmail($params);
        Mail::to($params['email']);
    }
}
