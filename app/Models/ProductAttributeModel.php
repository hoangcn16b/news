<?php

namespace App\Models;

use App\Models\AdminModel;
use Attribute;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use App\Helpers\Helper;

class ProductAttributeModel extends AdminModel
{
    public $settings;
    public function __construct()
    {
        $this->table               = 'product_attributes';
        $this->folderUpload        = 'product attribute';
        // $this->fieldSearchAccepted = ['id', 'username', 'email', 'fullname'];
        $this->crudNotAccepted     = ['_token'];
        $this->guarded = [];
    }

    public function changePrice($params = null)
    {
        $price = str_replace('.', '', $params['price']);
        $price = str_replace(',', '', $price);
        // $price = explode(',', $price);
        // $price = implode('', $price);
        self::where('attribute_value_id', $params['attributeValueId'])->update(['price' => $price]);
    }

    public function changeAmount($params = null)
    {
        $amount = str_replace('.', '', $params['amount']);
        $amount = str_replace(',', '', $amount);
        self::where('attribute_value_id', $params['attributeValueId'])->update(['amount' => $amount]);
    }
    public function listVariant($id = null)
    {
        $resultcombindOld = null;
        $resultcombindOld = self::select('attribute_value_id', 'name')->where('product_id', $id)->get()->toArray();
        // [
        //     ['attribute_value_id' => 12, 'name' => 'ád'],
        //     ['attribute_value_id' => 12, 'name' => 'ád'],
        //     ['attribute_value_id' => 12, 'name' => 'ád'],
        //     ['attribute_value_id' => 12, 'name' => 'ád'],
        // ]

        // combind to same DB
        $arrCombindOld = null;
        foreach ($resultcombindOld as $key => $value) {
            $arrCombindOld[$value['attribute_value_id']] = $value['name'];
        }

        $resultVar = null;
        $variants = null;
        $variantsId = null;
        $arrCombindNew = null;
        // $resultListAttrId = DB::select("SELECT DISTINCT attribute_id FROM attribute_values WHERE product_id = $id");
        // $test1 = AttributeModel::select('id')->where('product_id', $id)->get()->pluck('id')->toArray();
        $attributes = ProductModel::with(['attributes2', 'attributes2.attributeValue'])->find($id)->attributes2;
        // dd($attributes);
        $i = 0;
        
        foreach ($attributes as $attribute) {
            foreach ($attribute->attributeValue as $value) {
                $variants[$i][] = $value->name;
                $variantsId[$i][] = $value->id;
            }
            $i++;
        }

        // $test2 = AttributeValueModel::select('id', 'name', 'attribute_id')->where('product_id', $id)->whereIn('attribute_id', $test1)->get()->groupBy('attribute_id');

        // dd($test2);
        // foreach ($resultListAttrId as $key => $value) {
        //     $resultVar[] = DB::table('attribute_values')->select('id', 'name')->where('product_id', $id)->where('attribute_id', $value->attribute_id)->get()->toArray();
        // }
        // //combind to array

        

        // if ($test2) {
        //     $i = 0;
        //     foreach ($test2 as $key => $value) {
        //         foreach ($value as $key1 => $value1) {
        //             $variants[$i][] = $value1->name;
        //             $variantsId[$i][] = $value1->id;
        //         }
        //         $i++;
        //     }
        // }
        // dd($variants, $variantsId);
        $totalVar = [];
        $totalId = [];
        $totalVar = Helper::combinationVariants($variants, 0);
        $totalId = Helper::combinationVariants($variantsId, 0);
        // dd($totalVar);
        if ($totalVar) {
            foreach ($totalVar as $key => $value) {
                $saveName = '';
                $saveId = '';

                if (is_array($value)) {
                    foreach ($value as $key1 => $value1) {
                        // $saveName .= ' - ' . $value1;
                        $saveName .= ($value1 == null || $value1 == '') ? ' - ?' : ' - ' . $value1;
                        $saveId .= $totalId[$key][$key1] . ',';
                    }
                }
                $arrCombindNew[trim($saveId, ',')] = trim($saveName, ' - ');
            }
        }
        if ($arrCombindNew) {
            foreach ($arrCombindNew as $key => $value) {
                $getThisField = self::where('attribute_value_id', $key)->select('id')->get()->toArray();
                if (!empty($getThisField)) {
                    self::where('id', $getThisField[0]['id'])->update([
                        'product_id' => $id,
                        'attribute_value_id' => $key,
                        'name' => $value
                    ]);
                } else {
                    self::insert([
                        'product_id' => $id,
                        'attribute_value_id' => $key,
                        'name' => $value
                    ]);
                }
            }
        }
        // // get product variant again to sum and sort difficult prod_attr
        $resultProductAttributeNew = self::select('attribute_value_id', 'name')->where('product_id', $id)->get()->toArray();
        $productAttributeNewCombind = null;
        if ($resultProductAttributeNew) {
            foreach ($resultProductAttributeNew as $key => $value) {
                $productAttributeNewCombind[$value['attribute_value_id']] = $value['name'];
            }
        }
        // //delete product_attr which not exist
        $productAttributeResidual = array_diff($productAttributeNewCombind ?? [], $arrCombindNew ?? []);
        if ($productAttributeResidual) {
            foreach ($productAttributeResidual as $key => $value) {
                self::where('attribute_value_id', $key)->delete();
            }
        }
        $listVariantFinal = $resultProductAttributeNew = self::select('attribute_value_id', 'name', 'price', 'amount')->where('product_id', $id)->get()->toArray();
        return $listVariantFinal;
    }
}
