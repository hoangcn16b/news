<?php

namespace App\Http\Controllers\Admin;

// use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ContactModel as MainModel;
// use App\Http\Requests\ContactRequest as MainRequest;

class ContactController extends Controller
{
    private $params             = [];
    public $pathViewController = 'admin.pages.contact.';
    public $controllerName     = 'contact';
    public $inTable     = 'contacts';
    public $model;

    public function __construct()
    {
        $this->model = new MainModel();
        $this->params["pagination"]["totalItemsPerPage"] = 10;
        view()->share('inTable', $this->inTable);
        view()->share('controllerName', $this->controllerName);
    }

    public function index(Request $request)
    {
        $this->params['filter']['status'] = $request->input('filter_status', 'all');
        $this->params['search']['field']  = $request->input('search_field', ''); // all id description
        $this->params['search']['value']  = $request->input('search_value', '');

        $items              = $this->model->listItems($this->params, ['task'  => 'admin-list-items']);
        $itemsStatusCount   = $this->model->countItems($this->params, ['task' => 'admin-count-items-group-by-status']); // [ ['status', 'count']]

        return view($this->pathViewController .  'index', [
            'params'        => $this->params,
            'items'         => $items,
            'itemsStatusCount' =>  $itemsStatusCount
        ]);
    }

    public function status(Request $request)
    {
        $params["currentStatus"]  = $request->status;
        $params["id"]             = $request->id;
        $this->model->saveItem($params, ['task' => 'change-status']);
        $status = $request->status == 'active' ? 'inactive' : 'active';
        $link = route($this->controllerName . '/status', ['status' => $status, 'id' => $request->id]);
        return response()->json([
            'statusObj' => config('zvn.template.status')[$status],
            'link' => $link,
        ]);
    }

    public function delete(Request $request)
    {
        $params["id"]             = $request->id;
        $this->model->deleteItem($params, ['task' => 'delete-item']);
        return redirect()->route($this->controllerName)->with('zvn_notify', 'X??a ph???n t??? th??nh c??ng!');
    }

    // public function save(MainRequest $request)
    // {
    //     if ($request->method() == 'POST') {
    //         $params = $request->all();

    //         $task   = "add-item";
    //         $notify = "Th??m ph???n t??? th??nh c??ng!";

    //         if ($params['id'] !== null) {
    //             $task   = "edit-item";
    //             $notify = "C???p nh???t ph???n t??? th??nh c??ng!";
    //         }
    //         $this->model->saveItem($params, ['task' => $task]);
    //         return redirect()->route($this->controllerName)->with("zvn_notify", $notify);
    //     }
    // }


    // public function ordering(Request $request)
    // {
    //     $params["currentOrdering"]   = $request->ordering;
    //     $params["id"]               = $request->id;

    //     $this->model->saveItem($params, ['task' => 'change-ordering']);
    //     return response()->json([
    //         'status' => 'success'
    //     ]);
    // }
}
