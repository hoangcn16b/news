@extends('admin.main')
@php
use App\Models\CategoryModel;
use App\Helpers\Template as Template;
$xhtmlButtonFilter = Template::showButtonFilter($controllerName, $itemsStatusCount, $params['filter']['status'], $params['search']);
$xhtmlAreaSeach = Template::showAreaSearch($controllerName, $params['search']);
// $categoryConfig['all'] = 'Filter by All';

// foreach ($getCategoryNestedset['list_category'] as $key => $value) {
//     $categoryConfig[$value['id']] = $value->name_category;
// }
$listCategoryFilter = CategoryModel::listCategory(null, ['task' => 'get-category'], true, false);
$xhtmlAreaFilter = Template::showAreaFilter($controllerName, $params['search'], $listCategoryFilter);

@endphp

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => true])
    @include ('admin.templates.zvn_notify')

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'Bộ lọc'])
                <div class="x_content">
                    <div class="row">
                        <div class="col-md-5">{!! $xhtmlButtonFilter !!}</div>
                        <div class="col-md-3">{!! $xhtmlAreaFilter !!}</div>
                        <div class="col-md-4">{!! $xhtmlAreaSeach !!}</div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'Danh sách'])
                @include('admin.pages.article.list')
            </div>
        </div>
    </div>

    @if (count($items) > 0)
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                    @include('admin.templates.x_title', ['title' => 'Phân trang'])
                    @include('admin.templates.pagination')
                </div>
            </div>
        </div>
    @endif
@endsection
