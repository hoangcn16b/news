<?php

namespace App\Models;

use App\Models\AdminModel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;

class DashboardModel extends AdminModel
{

    public function listItems($options = null)
    {
        $query = null;
        if ($options['task'] == 'dashboard-list-items') {
            $query = DB::select("SELECT
                (SELECT COUNT(id) FROM users) AS User, 
                (SELECT COUNT(id) FROM categories where id != 1) AS Category,
                (SELECT COUNT(id) FROM articles) AS Article,
                (SELECT COUNT(id) FROM sliders) AS Slider,
                (SELECT COUNT(id) FROM rsses) AS Rss,
                (SELECT COUNT(id) FROM menus) AS Menu,
                (SELECT COUNT(id) FROM product_categories where id != 6) AS 'Product Category',
                (SELECT COUNT(id) FROM products) AS 'Product'
            ");
        }
        
        return $query;
    }
}

