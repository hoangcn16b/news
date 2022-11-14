<?php

namespace App\Models;

use App\Http\Livewire\Special;
use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Kalnoy\Nestedset\NodeTrait;

class ProductCategoryModel extends AdminModel
{
    use NodeTrait;
    protected $guarded = [];
    public $table               = 'product_categories';
    public $folderUpload        = 'product category';
    public $fieldSearchAccepted = ['id', 'name'];
    public $crudNotAccepted     = ['_token', 'thumb_current'];
    public $getSpecial     = ['all' => 'Filter by All', 'active' => 'Danh mục đặc biệt', 'inactive' => 'Danh mục thường'];

    public function listItems($params = null, $options = null)
    {
        $result = null;

        if ($options['task'] == "admin-list-items") {
            $query = $this->select('id', 'name', 'status', 'special', 'thumb', 'ordering', 'created_at', 'created_by', 'updated_at', 'updated_by')->withDepth()->defaultOrder()->having('depth', '>', '0');

            if ($params['filter']['status'] !== "all") {
                $query->where('status', '=', $params['filter']['status']);
            }

            if ($params['search']['value'] !== "") {
                if ($params['search']['field'] == "all") {
                    $query->where(function ($query) use ($params) {
                        foreach ($this->fieldSearchAccepted as $column) {
                            $query->orWhere($column, 'LIKE',  "%{$params['search']['value']}%");
                        }
                    });
                } else if (in_array($params['search']['field'], $this->fieldSearchAccepted)) {
                    $query->where($params['search']['field'], 'LIKE',  "%{$params['search']['value']}%");
                }
            }

            if ($params['search']['filter'] !== "") {
                if ($params['search']['filter'] == "all") {
                } else if (array_key_exists($params['search']['filter'], $this->getSpecial)) {
                    $query->where('special', '=',  $params['search']['filter']);
                }
            }
            $result =  $query->get();
            // $result =  $query->orderBy('id', 'desc')
            //     ->paginate($params['pagination']['totalItemsPerPage']);
        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name', 'description', 'link', 'thumb')
                ->where('status', '=', 'active');

            $result = $query->get()->toArray();
        }



        return $result;
    }

    public function countItems($params = null, $options  = null)
    {

        $result = null;

        if ($options['task'] == 'admin-count-items-group-by-status') {

            $query = $this::groupBy('status')
                ->select(DB::raw('status , COUNT(id) as count'));

            if ($params['search']['value'] !== "") {
                if ($params['search']['field'] == "all") {
                    $query->where(function ($query) use ($params) {
                        foreach ($this->fieldSearchAccepted as $column) {
                            $query->orWhere($column, 'LIKE',  "%{$params['search']['value']}%");
                        }
                    });
                } else if (in_array($params['search']['field'], $this->fieldSearchAccepted)) {
                    $query->where($params['search']['field'], 'LIKE',  "%{$params['search']['value']}%");
                }
            }

            if ($params['search']['filter'] !== "") {
                if ($params['search']['filter'] == "all") {
                } else if (array_key_exists($params['search']['filter'], $this->getSpecial)) {
                    $query->where('special', '=',  $params['search']['filter']);
                }
            }

            $result = $query->get()->toArray();
        }

        return $result;
    }

    public function getItem($params = null, $options = null)
    {
        $result = null;

        if ($options['task'] == 'get-item') {
            if (isset($params['id'])) {
                $result['item'] = self::select('id', 'name', 'status', 'special', 'thumb', 'ordering')->where('id', $params['id'])->where('id', '<>', '1')->first();
                $query = $this->find($params['id']);
                $parentThisId = $query['parent_id'];
                $query = $this->select('id', 'name', 'special', 'thumb', 'ordering', '_lft', '_rgt', 'parent_id')->withDepth()->defaultOrder()->where('_lft', '<', $query->_lft)->orWhere('_rgt', '>', $query->_rgt)->get();
                $result['parent'] = $this->find($parentThisId)->id;
                // foreach ($query as $key => $value) {
                //     $result['list_category'][$value['id']] = $value['name'];
                // }
                $result['list_category'] = $query;
                // $result = self::select('id', 'name', 'status')->where('id', $params['id'])->first();
            } else {
                $result['item'] = [];
                $query = $this->select('id', 'name', 'special', 'thumb', 'ordering', '_lft', '_rgt', 'parent_id')->withDepth()->defaultOrder()->having('depth', '>', '0')->get();
                $result['list_category'] = $query;
                $result['parent'] = [];
            }
        }

        if ($options['task'] == 'news-get-item') {
            $result = self::select('id', 'name', 'display')->where('id', $params['category_id'])->first();

            if ($result) $result = $result->toArray();
        }
        return $result;
    }

    public function listCategory($params = null, $options  = null, $hasDefault = false, $root = false)
    {
        $result = null;
        if ($hasDefault) $result['all'] = 'Filter by All';
        if ($options['task'] == 'get-category') {
            $query = ProductCategoryModel::withDepth()->defaultOrder();
            $query = $query->get();
            foreach ($query as $key => $value) {
                $depth = $value->depth <= 1 ? 0 : $value->depth - 1;
                $result[$value->id] = str_repeat('-----/ ', $depth) . $value->name;
            }
        }
        if ($root == false) unset($result[1]);
        return $result;
    }
    // public function getItem($params = null, $options = null)
    // {
    //     $result = null;

    //     if ($options['task'] == 'get-item') {
    //         $result = self::select('id', 'name', 'status', 'special', 'ordering', 'thumb')->where('id', $params['id'])->first();
    //     }

    //     if ($options['task'] == 'get-thumb') {
    //         $result = self::select('id', 'thumb')->where('id', $params['id'])->first();
    //     }

    //     return $result;
    // }

    public function saveItem($params = null, $options = null)
    {
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d H:i:s');
            $params['thumb']      = $this->uploadThumb($params['thumb']);
            // self::insert($this->prepareParams($params));
            $parent = ProductCategoryModel::find($params['parent_id']);
            $params = $this->prepareParams($params);
            // dd($params);
            $parent->children()->create($params);
        }

        if ($options['task'] == 'edit-item') {
            if (!empty($params['thumb'])) {
                $this->deleteThumb($params['thumb_current']);
                $params['thumb'] = $this->uploadThumb($params['thumb']);
            }
            $params['updated_by']   = "hailan";
            $params['updated_at']      = date('Y-m-d H:i:s');

            $currentParentId = $this->find($params['id'])->parent_id;
            $parentId = $params['parent_id'];
            $params = $this->prepareParams($params);
            self::where('id', $params['id'])->update($params);

            if ($currentParentId != $parentId) {
                $parent = $this->find($parentId);
                $node = $this->find($params['id']);
                $node->appendToNode($parent)->save();
            }
            // self::where('id', $params['id'])->update($this->prepareParams($params));
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        if ($options['task'] == 'delete-item') {
            // $item   = self::getItem($params, ['task' => 'get-thumb']); // 
            // $this->deleteThumb($item['thumb']);
            // self::where('id', $params['id'])->delete();
            $node = $this->find($params['id']);
            $node->delete();
        }
    }

    public function getNameCategoryAttribute()
    {
        $depth = $this->depth <= 1 ? 0 : $this->depth - 1;
        return str_repeat('-----/ ', $depth) . $this->name;
    }
}
