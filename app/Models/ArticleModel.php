<?php

namespace App\Models;

use App\Models\CategoryModel;
use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class ArticleModel extends AdminModel
{
    public function __construct()
    {
        $this->table               = 'articles as a';
        $this->folderUpload        = 'article';
        $this->fieldSearchAccepted = ['name', 'content'];
        $this->crudNotAccepted     = ['_token', 'thumb_current'];
    }

    public function category()
    {
        return $this->belongsTo(CategoryModel::class, 'category_id');
    }

    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            $query = $this->with('category')->select('id', 'name', 'status', 'content', 'thumb', 'type', 'category_id');

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
                } else if (array_key_exists($params['search']['filter'], $this->getCategory(null, ['task' => 'get-category']))) {
                    $query->where('category_id', '=',  $params['search']['filter']);
                }
            }

            $result =  $query->orderBy('id', 'desc')
                ->paginate($params['pagination']['totalItemsPerPage']);
        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name', 'thumb')
                ->where('status', '=', 'active')
                ->limit(5);

            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-featured') {

            $query = $this->select('a.id', 'a.name', 'a.content', 'a.created_at', 'a.category_id', 'c.name as category_name', 'a.thumb')
                ->leftJoin('categories as c', 'a.category_id', '=', 'c.id')
                ->where('a.status', '=', 'active')
                ->where('a.type', 'featured')
                ->orderBy('a.id', 'desc')
                ->take(3);

            $result = $query->get()->toArray();
        }


        if ($options['task'] == 'news-list-items-latest') {

            $query = $this->select('a.id', 'a.name', 'a.created_at', 'a.category_id', 'c.name as category_name', 'a.thumb')
                ->leftJoin('categories as c', 'a.category_id', '=', 'c.id')
                ->where('a.status', '=', 'active')
                ->orderBy('id', 'desc')
                ->take(4);;
            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-in-category') {
            $query = $this->select('id', 'name', 'content', 'thumb', 'created_at')
                ->where('status', '=', 'active')
                ->where('category_id', '=', $params['category_id'])
                ->take(4);
            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-related-in-category') {
            $query = $this->select('id', 'name', 'content', 'thumb', 'created_at')
                ->where('status', '=', 'active')
                ->where('a.id', '!=', $params['article_id'])
                ->where('category_id', '=', $params['category_id'])
                ->take(4);
            $result = $query->get()->toArray();
        }

        return $result;
    }

    public function getCategory($params = null, $options  = null)
    {
        $result = null;
        if ($options['task'] == 'get-category') {
            $query = DB::table('categories')->select('id', 'name');
            $query = $query->get()->toArray();
            foreach ($query as $key => $value) {
                $result[$value->id] = $value->name;
            }
        }
        return $result;
    }

    public function getCategoryNestedset($params = null, $options  = null)
    {

        $result = null;
        if ($options['task'] == 'get-category') {
            $category = new CategoryModel();
            $result = $category->getItem(null, ['task' => 'get-item']);
        }
        return $result;
    }

    public function listCategory($params = null, $options  = null, $hasDefault = false, $root = false)
    {
        $result = null;
        if ($hasDefault) $result['all'] = 'Filter by All';
        if ($options['task'] == 'get-category') {
            $query = CategoryModel::withDepth()->defaultOrder()->having('depth', '>', 0);
            $result = $query->get()->pluck('name_category', 'id');
            // foreach ($query as $key => $value) {
            //     $depth = $value->depth <= 1 ? 0 : $value->depth - 1;
            //     $result[$value->id] = str_repeat('-----/ ', $depth) . $value->name;
            // }
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
                } else if (array_key_exists($params['search']['filter'], $this->getCategory(null, ['task' => 'get-category']))) {
                    $query->where('category_id', '=',  $params['search']['filter']);
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
            $result = self::select('id', 'name', 'content', 'status', 'thumb', 'category_id')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'get-thumb') {
            $result = self::select('id', 'thumb')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'news-get-item') {
            $result = self::select('a.id', 'a.name', 'content', 'a.category_id', 'c.name as category_name', 'a.thumb', 'a.created_at', 'c.display')
                ->leftJoin('categories as c', 'a.category_id', '=', 'c.id')
                ->where('a.id', '=', $params['article_id'])
                ->where('a.status', '=', 'active')->first();
            if ($result) $result = $result->toArray();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null)
    {
        $this->table = 'articles';
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'change-type') {
            self::where('id', $params['id'])->update(['type' => $params['currentType']]);
        }


        if ($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d');
            $params['thumb']      = $this->uploadThumb($params['thumb']);
            self::insert($this->prepareParams($params));
        }

        if ($options['task'] == 'edit-item') {
            if (!empty($params['thumb'])) {
                // Xóa hình cũ
                $this->deleteThumb($params['thumb_current']);

                // Up hình mới
                $params['thumb']      = $this->uploadThumb($params['thumb']);
            }

            $params['updated_by']   = "hailan";
            $params['updated_at']      = date('Y-m-d');

            self::where(['id' => $params['id']])->update($this->prepareParams($params));
        }

        if ($options['task'] == 'change-category') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d');
            self::where('id', $params['id'])->update(['category_id' => $params['currentCategory']]);
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        $this->table = 'articles';
        if ($options['task'] == 'delete-item') {
            $item   = $this->getItem($params, ['task' => 'get-thumb']);
            $this->deleteThumb($item['thumb']);
            self::where('id', $params['id'])->delete();
        }
    }
}
