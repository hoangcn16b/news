<?php

namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductAttributeModel as MainModel;
use App\Http\Requests\ProductAttributeRequest as MainRequest;

class ProductAttributeController extends Controller
{
    private $params             = [];
    public $pathViewController = 'admin.pages.product_attribute.';
    public $controllerName     = 'productAttribute';
    public $inTable     = 'product_attributes';
    public $model;

    public function __construct()
    {
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 5;
        view()->share('inTable', $this->inTable);
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $items = $this->model->listItems($this->params, []);
        $itemGeneralSetting = $items['setting-general'];
        $itemEmailAccount = $items['setting-email'];
        $itemEmailBcc = $items['setting-bcc'];
        $itemSocial = $items['setting-social']; 
        $itemVideo = $items['setting-video']; 
        // $itemGeneralSetting = $this->model->listItems($this->params, ['task'  => 'admin-setting-general']);
        // $itemEmailAccount = $this->model->listItems($this->params, ['task'  => 'admin-setting-email-account']);
        // $itemEmailBcc = $this->model->listItems($this->params, ['task'  => 'admin-setting-email-bcc']);
        // $itemEmailSocial = $this->model->listItems($this->params, ['task'  => 'admin-setting-social']);
        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
            // 'items' => $items,
            'itemGeneralSetting'          => $itemGeneralSetting,
            'itemEmailAccount'          => $itemEmailAccount,
            'itemEmailBcc'          => $itemEmailBcc,
            'itemSocial'          => $itemSocial,
            'itemVideo'          => $itemVideo,
        ]);
    }

    public function save(MainRequest $request)
    {
        if ($request->method() == 'POST') {
            $params = $request->all();
            $task = '';
            if (@$params['task_general_setting'] == 'general-setting') $task = 'general-setting';
            if (@$params['task_email_setting'] == 'email-setting') $task = 'email-setting';
            if (@$params['task_email_bcc'] == 'email-bcc') $task = 'email-bcc';
            if (@$params['task_social_setting'] == 'social-setting') $task = 'social-setting';
            // dd($params);
            $this->model->saveItem($params, ['task' => $task]);
            $notify = "C???p nh???t th??nh c??ng!";
            return redirect()->route($this->controllerName)->with("zvn_notify", $notify);
        }
    }
}
