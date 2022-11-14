@extends('admin.main')
@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;
$result = $item ?? '';
$item = $result['item'];
$resultCategory = $result['list_category'];
$parent = $result['parent'];

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');
$statusValue = ['active' => config('zvn.template.status.active.name'), 'inactive' => config('zvn.template.status.inactive.name')];

$specialValue = ['inactive' => 'Danh mục thường', 'active' => 'Danh mục đặc biệt'];
foreach ($resultCategory as $key => $value) {
    $listCategory[$value['id']]  = $value->name_category;
}
$inputHiddenID = Form::hidden('id', @$item['id']);
$inputHiddenThumb = Form::hidden('thumb_current', @$item['thumb']);

$elements = [
    [
        'label' => Form::label('name', 'Name', $formLabelAttr),
        'element' => Form::text('name', @$item['name'], $formInputAttr),
    ],
    [
        'label' => Form::label('status', 'Status', $formLabelAttr),
        'element' => Form::select('status', $statusValue, @$item['status'], $formInputAttr),
    ],
    [
        'label' => Form::label('special', 'Special', $formLabelAttr),
        'element' => Form::select('special', $specialValue, @$item['special'], $formInputAttr),
    ],
    [
        'label' => Form::label('parent_id', 'Category', $formLabelAttr),
        'element' => Form::select('parent_id', $listCategory, $parent, $formInputAttr),
    ],
    [
        'label' => Form::label('thumb', 'Picture', $formLabelAttr),
        'element' => Form::file('thumb', $formInputAttr),
        'thumb' => !empty(@$item['id']) ? Template::showItemThumb($folderFileUpload, @$item['thumb'], @$item['thumb']) : null,
        'type' => 'thumb',
    ],
    [
        'element' => $inputHiddenID . $inputHiddenThumb . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
];
@endphp

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => false])
    @include ('admin.templates.error')

    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'Form'])
                <div class="x_content">
                    {{ Form::open([
                        'method' => 'POST',
                        'url' => route("$controllerName/save"),
                        'accept-charset' => 'UTF-8',
                        'enctype' => 'multipart/form-data',
                        'class' => 'form-horizontal form-label-left',
                        'id' => 'main-form',
                    ]) }}
                    {!! FormTemplate::show($elements) !!}
                    {{ Form::close() }}
                </div>
            </div>
        </div>
    </div>
@endsection
