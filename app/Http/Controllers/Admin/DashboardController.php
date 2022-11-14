<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use App\Models\DashboardModel as MainModel;

class DashboardController extends Controller
{
    public $pathViewController = 'admin.pages.dashboard.';  // slider
    public $model;
    public $controllerName     = 'dashboard';

    
    public function __construct()
    {
        $this->model = new MainModel();
        view()->share('controllerName', $this->controllerName);
    }

    public function index()
    {
        $items              = $this->model->listItems(['task'  => 'dashboard-list-items']);
        return view($this->pathViewController .  'index', [
            'items'         => $items,
        ]);
    }
}
