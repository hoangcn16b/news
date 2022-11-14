<?php

namespace App\Http\Controllers\News;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Http\Requests\AuthLoginRequest as MainRequest;
use App\Models\UserModel;

class AuthController extends Controller
{
    private $pathViewController = 'news.pages.auth.';  // slider
    private $controllerName     = 'auth';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function login(Request $request)
    {
        // session()->put('previous_url', url()->previous());
        if (!(session()->has('previous_url'))) {
            session()->put('previous_url', url()->previous());
        }
        if (!(session('previous_url') == 'http://lar-exam.xyz/news69/login')) {
            session()->put('previous_url', url()->previous());
        }
        // session()->forget('previous_url');


        return view($this->pathViewController . 'login');
    }

    // middelware


    public function postLogin(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();

            $userModel = new UserModel();
            $userInfo = $userModel->getItem($params, ['task' => 'auth-login']);

            if (!$userInfo)
                return redirect()->route($this->controllerName . '/login')->with('news_notify', 'Tài khoản hoặc mật khẩu không chính xác!');

            $request->session()->put('userInfo', $userInfo);
            // return redirect()->route('home');
            // return redirect()->route('dashboard');

            return redirect(session('previous_url'));
        }
    }

    public function logout(Request $request)
    {
        if ($request->session()->has('userInfo')) $request->session()->pull('userInfo');
        return redirect()->route('home');
    }
}
