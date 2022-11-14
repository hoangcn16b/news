<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Models\ProductCategoryModel;

class ProductModel extends AdminModel
{
    public function __construct()
    {
        $this->table               = 'products';
        $this->folderUpload        = 'product';
        $this->fieldSearchAccepted = ['name', 'content'];
        $this->crudNotAccepted     = ['_token', 'thumb_current'];
        date_default_timezone_set('Asia/Ho_Chi_Minh');
    }

    public function productCategory()
    {
        return $this->belongsTo(ProductCategoryModel::class, 'product_category_id');
    }

    public function listItems($params = null, $options = null)
    {

        $result = null;

        if ($options['task'] == "admin-list-items") {
            $query = $this->with('productCategory')->select('id', 'name', 'price', 'sale_off', 'status', 'description', 'content', 'thumb', 'ordering', 'product_category_id')->where('draft', '=', 0);

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
                } else if (array_key_exists($params['search']['filter'], $this->listCategory(null, ['task' => 'get-category']))) {
                    $query->where('product_category_id', '=',  $params['search']['filter']);
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

            $query = $this->select('p.id', 'p.name', 'p.content', 'p.created_at', 'p.category_id', 'c.name as category_name', 'p.thumb')
                ->leftJoin('categories as c', 'p.category_id', '=', 'c.id')
                ->where('p.status', '=', 'active')
                ->where('p.type', 'featured')
                ->orderBy('p.id', 'desc')
                ->take(3);

            $result = $query->get()->toArray();
        }


        if ($options['task'] == 'news-list-items-latest') {

            $query = $this->select('p.id', 'p.name', 'p.created_at', 'p.category_id', 'c.name as category_name', 'p.thumb')
                ->leftJoin('categories as c', 'p.category_id', '=', 'c.id')
                ->where('p.status', '=', 'active')
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
                ->where('p.id', '!=', $params['product_id'])
                ->where('product_category_id', '=', $params['product_category_id'])
                ->take(4);
            $result = $query->get()->toArray();
        }

        return $result;
    }

    public function getCategoryNestedset($params = null, $options  = null)
    {
        $result = null;
        if ($options['task'] == 'get-category') {
            $category = new ProductCategoryModel();
            $result = $category->getItem(null, ['task' => 'get-item']);
        }
        return $result;
    }

    public function listCategory($params = null, $options  = null, $hasDefault = false, $root = false)
    {
        $result = null;
        if ($hasDefault) $result['all'] = 'Filter by All';
        if ($options['task'] == 'get-category') {
            $query = ProductCategoryModel::withDepth()->defaultOrder()->having('depth', '>', 0)->get();
            // $result = $query->get()->pluck('name_category', 'id');
            foreach ($query as $key => $value) {
                $result[$value->id] = str_repeat('-----/ ', $value->depth - 1) . $value->name;
            }
        }
        // if (!$root) unset($result[6]);

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
                } else if (array_key_exists($params['search']['filter'], $this->listCategory(null, ['task' => 'get-category']))) {
                    $query->where('product_category_id', '=',  $params['search']['filter']);
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
            $result = self::select('id', 'name', 'price', 'sale_off', 'description', 'special', 'content', 'status', 'thumb', 'product_category_id')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'get-thumb') {
            $result = self::select('id', 'thumb')->where('id', $params['id'])->first();
        }

        if ($options['task'] == 'news-get-item') {
            $result = self::select('p.id', 'p.name', 'content', 'p.product_category_id', 'c.name as category_name', 'p.thumb', 'p.created_at', 'c.display')
                ->leftJoin('product_categories as c', 'p.product_category_id', '=', 'c.id')
                ->where('p.id', '=', $params['product_id'])
                ->where('p.status', '=', 'active')->first();
            if ($result) $result = $result->toArray();
        }

        return $result;
    }

    public function saveItem($params = null, $options = null)
    {

        $this->table = 'products';
        if ($options['task'] == 'change-status') {
            $status = ($params['currentStatus'] == "active") ? "inactive" : "active";
            self::where('id', $params['id'])->update(['status' => $status]);
        }

        if ($options['task'] == 'change-type') {
            self::where('id', $params['id'])->update(['type' => $params['currentType']]);
        }

        if ($options['task'] == 'add-item') {

            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d H:i:s');
            if (!empty($params['filenames'])) {
                $arrJson = [];
                foreach ($params['filenames'] as $key => $value) {
                    // $thumbName        = Str::random(10) . '.' . $params['filenames'][$key]->clientExtension();
                    $thumbName = $this->uploadMultiThumb($params['filenames'][$key]);
                    $arrJson['image'][] = $thumbName;
                    $arrJson['alt'][] = $params['altNewImg'][$key];
                }
                $arrJson = json_encode($arrJson);
                $params['thumb'] = $arrJson;
            }

            unset($params['filenames']);
            unset($params['images_uploaded']);
            unset($params['alt']);
            unset($params['altNewImg']);
            unset($params['images_uploaded_origin']);
            unset($params['attr_value']);
            $price = explode(',', $params['price']);
            $params['price'] = implode('', $price);

            $params['draft'] = 0;

            // $params['thumb']      = $this->uploadThumb($params['thumb']);
            self::insert($this->prepareParams($params));
            $newId = DB::getPdo()->lastInsertId();
            $this->where('id', $newId)->update(['draft' => '1']);
        }

        if ($options['task'] == 'edit-item') {

            //lấy ra danh sách thông tin ảnh đã chỉnh sửa.
            $newThumbCur = [];
            if (isset($params['images_uploaded'])) {
                foreach ($params['images_uploaded'] as $keyThumbCur => $valueThumbCur) {
                    $newThumbCur['image'][] = $valueThumbCur;
                    $newThumbCur['alt'][] = $params['alt'][$keyThumbCur];
                }
            }

            //lấy ra ảnh đã bị loại bỏ
            // echo '<pre>';
            // print_r($params);
            // echo '</pre>';
            // die;
            if (!empty($params['thumb_current'])) {
                $thumbDecode = json_decode(($params['thumb_current'] ?? []), true);
                $removeThumb = array_diff($thumbDecode['image'] ?? [], $newThumbCur['image'] ?? []);
                // $removeAlt = array_diff($thumbDecode['alt'], $newThumbCur['alt']);

                //xoá ảnh đã bị loại bỏ 
                if (!empty($removeThumb)) {
                    foreach ($removeThumb as $key1 => $curImg) {
                        $this->deleteThumb($curImg);
                    }
                }
            }
            //upload 
            if (!empty($params['filenames'])) {
                foreach ($params['filenames'] as $key => $value) {
                    // $thumbName        = Str::random(10) . '.' . $params['filenames'][$key]->clientExtension();
                    $thumbName = $this->uploadMultiThumb($params['filenames'][$key]);
                    $newThumbCur['image'][] = $thumbName;
                    $newThumbCur['alt'][] = $params['altNewImg'][$key];
                }
                $params['thumb'] = $newThumbCur;
            } else {
                // $tmp = [];
                // foreach ($newThumbCur['image'] as $keyNewThumb => $valueNewThumb) {
                //     $tmp['image'][] = $valueNewThumb;
                //     $tmp['alt'][] = $newThumbCur['alt'][$keyNewThumb];
                // }
                $params['thumb'] = $newThumbCur;
            }

            $params['thumb'] = json_encode($params['thumb']);
            unset($params['filenames']);
            unset($params['images_uploaded']);
            unset($params['alt']);
            unset($params['altNewImg']);
            unset($params['images_uploaded_origin']);
            unset($params['attr_value']);

            $price = explode(',', $params['price']);
            $params['price'] = implode('', $price);
            $params['updated_by']   = "hailan";
            $params['updated_at']      = date('Y-m-d H:i:s');
            $params['draft'] = 0;

            self::where(['id' => $params['id']])->update($this->prepareParams($params));
        }

        if ($options['task'] == 'change-category') {
            $params['created_by'] = "hailan";
            $params['created_at']    = date('Y-m-d H:i:s');
            self::where('id', $params['id'])->update(['product_category_id' => $params['currentCategory']]);
        }
    }

    public function deleteItem($params = null, $options = null)
    {
        $this->table = 'products';
        if ($options['task'] == 'delete-item') {
            $item   = $this->getItem($params, ['task' => 'get-thumb']);
            $this->deleteThumb($item['thumb']);
            self::where('id', $params['id'])->delete();
            DB::table('product_attributes')->where('product_id',$params['id'])->delete();
            DB::table('attributes')->where('product_id',$params['id'])->delete();
            DB::table('attribute_values')->where('product_id',$params['id'])->delete();
        }
    }

    public function createItemDraft()
    {
        $this->table = 'products';
        $item = $this->create([
            'draft' => '1'
        ]);
        $this->where('id', $item->id)->update(['draft' => '1']);
        return $item->id;
    }


    public function getPriceProductAttribute()
    {
        return number_format(((float) $this->price), 0, '.', ',');
    }

    public function getNameCategoryAttribute()
    {
        // $depth = $this->depth <= 1 ? 0 : $this->depth - 1;
        return str_repeat('-----/ ', $this->depth - 1) . $this->name;
    }

    public function attributes2() {
        return $this->hasMany(AttributeModel::class, 'product_id', 'id');
    }
}
