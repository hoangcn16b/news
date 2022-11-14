<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Support\Facades\Mail;
use Carbon\Carbon;

class SendEmail implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    protected $mail;

    public function __construct($mail)
    {
        $this->mail = $mail;
    }

    public function handle()
    {
        // Mail::send($this->mail);

        $arrMail = ['hoangalt0098@gmail.com', 'hoangalt0198@gmail.com', 'hoangcn16b@gmail.com'];
        if (!empty($arrMail)) {
            foreach ($arrMail as $key => $value) {
                $this->mail['email_to'] = $value;
                // Mail::later(5, 'emails.contact_email', ['infoContact' => $this->mail], function ($message) {
                //     $message->to($this->mail['email_to'])->subject('Thông báo từ Website News69 - Đã nhận được thông tin liên hệ của bạn!');
                // });
                Mail::send('emails.contact_email', ['infoContact' => $this->mail], function ($message) {
                    $message->to($this->mail['email'])->subject('Thông báo từ Website News69 - Đã nhận được thông tin liên hệ của bạn!');
                });
                
            }
        }
        // Mail::send('emails.contact_email', ['infoContact' => $this->mail], function ($message) {
        //     $message->to($this->mail['email'])->subject('Thông báo từ Website News69 - Đã nhận được thông tin liên hệ của bạn!');
        // });
    }
}
