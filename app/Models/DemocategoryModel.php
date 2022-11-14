<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Kalnoy\Nestedset\NodeTrait;

class DemocategoryModel extends AdminModel
{
    use NodeTrait;
    public function __construct()
    {
        $this->table               = 'democategories';
        $this->folderUpload        = 'category';
        $this->fieldSearchAccepted = ['id', 'name'];
        $this->crudNotAccepted     = ['_token'];
    }


    public function getLftName()
    {
        return '_lft';
    }

    public function getRgtName()
    {
        return '_rgt';
    }

    public function getParentIdName()
    {
        return 'parent_id';
    }

    // Specify parent id attribute mutator
    public function setParentAttribute($value)
    {
        $this->setParentIdAttribute($value);
    }

    public function listItems($params = null, $options = null)
    {

        $result = null;


        return $result;
    }
}
