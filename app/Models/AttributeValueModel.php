<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Helpers\Helper;

class AttributeValueModel extends AdminModel
{
    public function __construct()
    {
        $this->table                = 'attribute_values';
        $this->guarded              = [];
    }

    public function deleteAttrValue($params = null, $options = null)
    {
        $attributeId = $params['id'];
        self::where('id', $attributeId)->delete();
    }

    public function listVariant($id = null, $options = null)
    {
        $result = null;
        $resultListAttrId = null;
        $resultVar = null;
        $variants = null;
        $variantsId = null;
        $totalVar = null;
        $totalId = null;
        $arr = null;
        $resultListAttrId = DB::select("SELECT DISTINCT attribute_id FROM attribute_values WHERE product_id = $id");
        foreach ($resultListAttrId as $key => $value) {
            $resultVar[] = DB::table('attribute_values')->select('id', 'name')->where('product_id', $id)->where('attribute_id', $value->attribute_id)->get()->toArray();
        }
        // //combind to array
        foreach ($resultVar as $key => $value) {
            foreach ($value as $key1 => $value1) {
                $variants[$key][] = $value1->name;
                $variantsId[$key][] = $value1->id;
            }
        }

        $totalVar = Helper::combinationVariants($variants, 0);
        $totalID = Helper::combinationVariants($variantsId, 0);
        foreach ($totalVar as $key => $value) {
            $saveName = '';
            $saveId = '';
            foreach ($value as $key1 => $value1) {
                $saveName .= ' - ' . $value1;
                $saveId .= $totalID[$key][$key1] . ',';
            }
            $arr[trim($saveId, ',')] = trim($saveName, ' - ');
        }
        if ($options['task'] == 'ajax-list-variant') {
            $resultDbById = DB::table('product_attributes')->select('attribute_value_id', 'name')->get()->toArray();
            $dbArr = null;
            foreach ($resultDbById as $key => $value) {
                $dbArr[$value->attribute_value_id] = $value->name;
            }
            $result = array_diff($arr, $dbArr);

            // xoá và tạo mới các biến thể
            DB::table('product_attributes')->where('product_id', $id)->delete();
            foreach ($arr as $key => $value) {
                DB::table('product_attributes')->insert([
                    'product_id' => $id,
                    'attribute_value_id' => $key,
                    'name' => $value
                ]);
            }
        }
        return $arr;
    }

    public function adminListVariant($id = null)
    {
        $result = null;
        $resultListAttrId = null;
        $resultVar = null;
        $variants = null;
        $variantsId = null;
        $totalVar = null;
        $totalId = null;
        $arr = null;
        $resultListAttrId = DB::select("SELECT DISTINCT attribute_id FROM attribute_values WHERE product_id = $id");
        foreach ($resultListAttrId as $key => $value) {
            $resultVar[] = DB::table('attribute_values')->select('id', 'name')->where('product_id', $id)->where('attribute_id', $value->attribute_id)->get()->toArray();
        }
        // //combind to array
        foreach ($resultVar as $key => $value) {
            foreach ($value as $key1 => $value1) {
                $variants[$key][] = $value1->name;
                $variantsId[$key][] = $value1->id;
            }
        }

        $totalVar = Helper::combinationVariants($variants, 0);
        $totalID = Helper::combinationVariants($variantsId, 0);
        foreach ($totalVar as $key => $value) {
            $saveName = '';
            $saveId = '';
            foreach ($value as $key1 => $value1) {
                $saveName .= ' - ' . $value1;
                $saveId .= $totalID[$key][$key1] . ',';
            }
            $arr[trim($saveId, ',')] = trim($saveName, ' - ');
        }
        return $arr;
    }

    public function draftAttributeValue($params = null)
    {
        $result = null;
        DB::table('attribute_values')->insert(['name' => '', 'product_id' => $params['product_id'], 'attribute_id' => $params['id']]);
        $newId = DB::getPdo()->lastInsertId();
        return $newId;
    }

    public function updateAttrValue($params = null)
    {
        self::find($params['attributeId'])->update(['name' => $params['attributeValue']]);
    }
}
