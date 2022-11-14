<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class AttributeModel extends AdminModel
{
    public function __construct()
    {
        $this->table               = 'attributes';
        $this->guarded = [];
    }

    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            $query = $this->select('id', 'name', 'status', 'created_at', 'created_by', 'updated_at', 'updated_by');

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

            $result =  $query->orderBy('id', 'desc')
                ->paginate($params['pagination']['totalItemsPerPage']);
        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name', 'description', 'link', 'thumb')
                ->where('status', '=', 'active')
                ->limit(5);

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

            $result = $query->get()->toArray();
        }

        return $result;
    }

    public function getItem($params = null, $options = null)
    {
        $result = null;

        if ($options['task'] == 'get-item') {
            $result = self::select('id', 'name', 'status')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'get-thumb') {
            $result = self::select('id', 'thumb')->where('id', $params['id'])->first();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null)
    {
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d H:i:s');
            self::insert($this->prepareParams($params));
        }

        if ($options['task'] == 'edit-item') {
            if (!empty($params['thumb'])) {
                $this->deleteThumb($params['thumb_current']);
                $params['thumb'] = $this->uploadThumb($params['thumb']);
            }
            $params['updated_by']   = "hailan";
            $params['updated_at']      = date('Y-m-d H:i:s');
            self::where('id', $params['id'])->update($this->prepareParams($params));
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        if ($options['task'] == 'delete-item') {
            $item   = self::getItem($params, ['task' => 'get-thumb']); // 
            $this->deleteThumb($item['thumb']);
            self::where('id', $params['id'])->delete();
        }
    }

    public function deleteAttribute($params = null, $options = null)
    {
        $attributeId = $params['id'];
        // delete this id in attributes tbl and attribute_value_id in attribute_values tbl
        self::find($params['id'])->delete();
        DB::table('attribute_values')->where('attribute_id', $attributeId)->delete();
    }

    public function updateAttrName($params = null, $options = null)
    {
        self::find($params['attributeId'])->update(['name' => $params['attributeName']]);
    }

    public function attributeValue()
    {
        return $this->hasMany(AttributeValueModel::class, 'attribute_id');
    }

    public function lisAttribute($id = null)
    {
        $result = null;
        // $result = DB::table('attributes')
        //     ->leftJoin('attribute_values', 'attributes.id', '=', 'attribute_values.attribute_id')
        //     ->select('attributes.id', 'attributes.name', 'attribute_values.id as attr_val_id', 'attribute_values.name as attr_val_name', 'attribute_values.attribute_id', 'attribute_values.product_id')->where('attribute_values.product_id', $id)
        //     ->get();
        $result = self::with('attributeValue')->select('id', 'name', 'product_id')->where('product_id', $id)->get()->toArray();
        return $result;
    }

}
