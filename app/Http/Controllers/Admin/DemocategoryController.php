<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Admin\AdminController;
use Illuminate\Http\Request;
// use App\Models\CategoryModel as MainModel;
// use App\Http\Requests\CategoryRequest as MainRequest;
use App\Models\DemocategoryModel as MainModel;
use App\Models\DemocategoryModel;

class DemocategoryController extends AdminController
{
    public $pathViewController = 'admin.pages.demo_category.';
    public $controllerName     = 'category';
    public $inTable     = 'democategories';
    public $model;

    public function __construct()
    {
        // $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('inTable', $this->inTable);
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $rootId = 1;
        $categories = DemocategoryModel::descendantsOf($rootId)->toTree($rootId);
        $data = [
            'categories' => $categories
        ];
        // return view('admin.demo_caregory.index', $data);

        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
            'categories' => $categories
        ]);
    }
}
