<?php

namespace App\Http\Controllers\Shop;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;;

class HomeController extends Controller
{
    private $pathViewController = 'shop.home.';  // slider
    private $controllerName     = 'index';
    private $params             = [];
    private $model;

    public function __construct()
    {
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        return view($this->pathViewController .  'index', []);
    }
}
