<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Kalnoy\Nestedset\NodeTrait;
// use Illuminate\Database\Eloquent\Factories\HasFactory;

class CategoryModel extends AdminModel
{
    // use HasFactory;
    use NodeTrait;
    // protected $fillable = ['name', 'status', 'is_home', 'display'];
    protected $guarded = [];
    protected $table               = 'categories';
    protected $folderUpload        = 'category';
    protected $fieldSearchAccepted = ['id', 'name'];
    protected $crudNotAccepted     = ['_token', 'parent_id'];

    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            // $query = $this->select('id', 'name', 'status', 'is_home', 'display', 'created_at', 'created_by', 'updated_at', 'updated_by');
            $query = $this->select('id', 'name', 'status', 'is_home', 'display', 'created_at', 'created_by', 'updated_at', 'updated_by', '_lft', '_rgt', 'parent_id')->withDepth()->defaultOrder()->having('depth', '>', 0);
            // withDepth()->having('depth', '>', 0)->defaultOrder()->get()->toTree();
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
            $result =  $query->get();
            // ->paginate($params['pagination']['totalItemsPerPage']);
            // dd($result);

        }

        if ($options['task'] == 'news-list-items') {
            $query = $this->select('id', 'name')
                ->where('status', '=', 'active')
                ->limit(8);

            $result = $query->get()->toArray();
        }

        if ($options['task'] == 'news-list-items-is-home') {
            $query = $this->select('id', 'name', 'display')
                ->where('status', '=', 'active')
                ->where('is_home', '=', 'yes');

            $result = $query->get()->toArray();
        }

        if ($options['task'] == "admin-list-items-in-selectbox") {
            $query = $this->select('id', 'name')
                ->orderBy('name', 'asc')
                ->where('status', '=', 'active');

            $result = $query->pluck('name', 'id')->toArray();
        }


        if ($options['task'] == "admin-list-items-category-nestedset") {
            $query = $this->find($params['id']);
            // dd($query);
            // $result = $query->pluck('name', 'id')->toArray();
        }

        return $result;
    }

    public function countItems($params = null, $options  = null)
    {

        $result = null;

        if ($options['task'] == 'admin-count-items-group-by-status') {

            $query = $this::groupBy('status')
                ->select(DB::raw('status , COUNT(id) as count'))->where('id', '<>', 1);

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
            if (isset($params['id'])) {
                $result['item'] = self::select('id', 'name', 'status')->where('id', $params['id'])->where('id', '<>', '1')->first();
                $query = $this->find($params['id']);
                $parentThisId = $query['parent_id'];
                $query = $this->select('id', 'name', '_lft', '_rgt', 'parent_id')->withDepth()->defaultOrder()->where('_lft', '<', $query->_lft)->orWhere('_rgt', '>', $query->_rgt)->get();
                $result['parent'] = $this->find($parentThisId)->id;
                // foreach ($query as $key => $value) {
                //     $result['list_category'][$value['id']] = $value['name'];
                // }
                $result['list_category'] = $query;
                // $result = self::select('id', 'name', 'status')->where('id', $params['id'])->first();
            } else {
                $result['item'] = [];
                $query = $this->select('id', 'name', '_lft', '_rgt', 'parent_id')->withDepth()->defaultOrder()->having('depth', '>', '0')->get();
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
            $query = CategoryModel::withDepth()->defaultOrder();
            $query = $query->get();
            foreach ($query as $key => $value) {
                $depth = $value->depth <= 1 ? 0 : $value->depth - 1;
                $result[$value->id] = str_repeat('-----/ ', $depth) . $value->name;
            }
        }
        if (!$root) unset($result[1]);
        return $result;
    }

    public function saveItem($params = null, $options = null)
    {
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'change-is-home') {
            $isHome = ($params['currentIsHome'] == "yes") ? "no" : "yes";
            self::where('id', $params['id'])->update(['is_home' => $isHome]);
        }

        if ($options['task'] == 'change-display') {
            $display = $params['currentDisplay'];
            self::where('id', $params['id'])->update(['display' => $display]);
        }

        if ($options['task'] == 'add-item') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d');

            $parent = CategoryModel::find($params['parent_id']);

            $params = $this->prepareParams($params);
            $parent->children()->create($params);
        }

        if ($options['task'] == 'edit-item') {
            $params['updated_by']   = "hailan";
            $params['updated_at']      = date('Y-m-d');

            $currentParentId = $this->find($params['id'])->parent_id;
            $parentId = $params['parent_id'];
            $params = $this->prepareParams($params);
            self::where('id', $params['id'])->update($params);

            if ($currentParentId != $parentId) {
                $parent = $this->find($parentId);
                $node = $this->find($params['id']);
                $node->appendToNode($parent)->save();
            }
            // $parent = CategoryModel::find($params['parent_id']);
            // $this->afterNode($params['parent_id'])->save();
            // $parent->children()->where('id', $params['id'])->update($this->prepareParams($params));
            // self::where('id', $params['id'])->update($this->prepareParams($params));
        }

        if ($options['task'] == 'change-ordering') {
            $node = $this->find($params['id']);
            if ($params['currentOrdering'] == 'up') {
                $node->up();
            } elseif ($params['currentOrdering'] == 'down') {
                $node->down();
            }
        }
    }

    public function deleteItem($params = null, $options = null)
    {

        if ($options['task'] == 'delete-item') {
            $node = $this->find($params['id']);
            $node->delete();
            // $lft = $node->_lft;
            // $rgt = $node->_rgt;
            // $getListToDelete = self::select()->where('_lft', '>', $lft)->Where('_rgt', '<', $rgt)->get();
            // $ids = [];
            // if (!empty($getListToDelete)) {
            //     foreach ($getListToDelete as $key => $value) {
            //         $ids[] = $value->id;
            //     }
            //     self::whereIn('id', $ids)->delete();
            // }
            // self::where('id', $params['id'])->delete();
            // $this->fixTree();
        }
    }

    public function getNameCategoryAttribute()
    {
        return str_repeat('-----/ ', $this->depth -1) . $this->name;
    }
}
