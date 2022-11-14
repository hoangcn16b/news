<?php

namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Controller;

use Illuminate\Http\Request;

class ImagesController extends Controller
{
    public $pathViewController = 'admin.pages.images.';
    public $controllerName     = 'images';


    public function __construct()
    {
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('controllerName', $this->controllerName);

    }

    public function index(Request $request)
    {
        return view($this->pathViewController .  'index', []);
    }
}
