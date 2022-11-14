<?php

namespace App\Helpers;

use App\Helpers\URL;

use Illuminate\Routing\Route;
use Illuminate\Support\Facades\Config;

class Helper
{
    public static function showCategoryNestedset($item, $categories, $categoryIdCurrent = null)
    {
        $xhtmlMenu = '';

        $xhtmlMenu .= sprintf(
            '<li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false"> %s </a> ',
            $item['name'],
        );
        $xhtmlMenu .= '<ul class="dropdown-menu">';
        $xhtml = '';
        self::showCategory($categories, $categoryIdCurrent, $xhtml);
        $xhtmlMenu .= $xhtml;
        $xhtmlMenu .= ' </ul>';
        $xhtmlMenu .= '</li>';

        return $xhtmlMenu;
    }

    public static function  showCategory($categories, $categoryIdCurrent, &$xhtml)
    {

        foreach ($categories as $category) {
            // $categoryIdCurrent = $idCurrent;

            $linkSubList = URL::linkCategory($category->id, $category->name);
            $classActiveSubList = $categoryIdCurrent == $category->id ? 'active' : '';
            if ($category->children->count() > 0) {
                $xhtml .= sprintf('<li><a class=" %s dropdown-item dropdown-toggle" href="%s">%s</a>', $classActiveSubList, $linkSubList, $category->name);
            } else {
                $xhtml .= sprintf('<li><a class="%s dropdown-item" href="%s">%s</a>', $classActiveSubList, $linkSubList, $category->name);
            }
            if ($category->children->count() > 0) {
                $xhtml .= '<ul class="submenu dropdown-menu">';
                self::showCategory($category->children, $categoryIdCurrent, $xhtml);
                $xhtml .= '</ul>';
            }
            $xhtml .= '</li>';
        }
    }

    public static function combinationVariants($arrays = null, $i = 0)
    {
        if (!isset($arrays[$i])) {
            return array();
        }
        if ($i == count($arrays) - 1) {
            return $arrays[$i];
        }

        // get combinations from subsequent arrays
        $tmp = self::combinationVariants($arrays, $i + 1);

        $result = array();

        // concat each array from tmp with each element from $arrays[$i]
        foreach ($arrays[$i] as $v) {
            foreach ($tmp as $t) {
                $result[] = is_array($t) ?
                    array_merge(array($v), $t) :
                    array($v, $t);
            }
        }

        return $result;
    }
}
