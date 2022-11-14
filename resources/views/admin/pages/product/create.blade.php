@extends('admin.main')
@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;
use Illuminate\Support\Facades\DB;
use App\Models\ProductModel;
use App\Models\ProductAttributeModel;
use App\Models\AttributeValueModel;
use App\Models\AttributeModel;
$itemsCategory = ProductModel::listCategory(null, ['task' => 'get-category'], false, false);

$configTagsInput = ['class' => 'some_class_name my-tagify', 'width' => '100', 'height' => 40];
$formInputAttr = config('zvn.template.form_input');
$select2 = config('zvn.template.form_select2');
$select2Attr = ['class' => 'form-control col-md-6 col-xs-12 select-select2 select2-attr'];
$formLabelAttr = config('zvn.template.form_label');
$formCkeditor = config('zvn.template.form_ckeditor');
$statusValue = ['active' => config('zvn.template.status.active.name'), 'inactive' => config('zvn.template.status.inactive.name')];
$itemsSpecial = ['0' => 'Không đặc biệt', '1' => 'Đặc biệt'];
$attrPriceForm = [
    'class' => 'form-control col-md-6 col-xs-12',
    'id' => 'currency-field',
    'data-type' => 'currency',
    'min' => '1',
    'pattern' => '[0-9][0-9,]*[0-9]',
];

$inputHiddenThumb = null;

$elements = [
    [
        'label' => Form::label('name', 'Name', $formLabelAttr),
        'element' => Form::text('name', '', $formInputAttr),
    ],
    [
        'label' => Form::label('price', 'Price(Vnd)', $formLabelAttr),
        'element' => Form::text('price', '', $attrPriceForm),
    ],
    [
        'label' => Form::label('sale_off', 'Sale Off(%)', $formLabelAttr),
        'element' => Form::number('sale_off', '0', $formInputAttr),
    ],
    [
        'label' => Form::label('product_category_id', 'Category', $formLabelAttr),
        'element' => Form::select('product_category_id', $itemsCategory, '', $select2),
    ],
    [
        'label' => Form::label('description', 'Description', $formLabelAttr),
        'element' => Form::textArea('description', '', $formInputAttr),
    ],
    [
        'label' => Form::label('content', 'Content', $formLabelAttr),
        'element' => Form::textArea('content', '', $formCkeditor),
    ],
    [
        'label' => Form::label('ordering', 'Ordering', $formLabelAttr),
        'element' => Form::number('ordering', '10', $formInputAttr),
    ],
    [
        'label' => Form::label('status', 'Status', $formLabelAttr),
        'element' => Form::select('status', $statusValue, 'active', $formInputAttr),
    ],
    [
        'label' => Form::label('special', 'Special', $formLabelAttr),
        'element' => Form::select('special', $itemsSpecial, '0', $formInputAttr),
    ],
];

$listVar = ProductAttributeModel::listVariant($itemId);
$attrModel = new AttributeModel();
$listAttr = null;
$listAttr = $attrModel->lisAttribute($itemId);

@endphp

@section('content')
    @include ('admin.templates.page_header', ['pageIndex' => false])
    @include ('admin.templates.error')

    <div class="row">
        <div class="col-md-6 col-sm-12 col-xs-12">
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

                    <div class="form-group">
                        {{ Form::label('thumb', 'Thumb', ['class' => 'control-label col-md-3 col-sm-3 col-xs-6']) }}
                        <div class="input-group hdtuto control-group lst increment col-md-3 col-sm-3 col-xs-6">
                            <div class="list-input-hidden-upload">
                                <input type="file" name="filenames[]" id="file_upload" class="myfrm form-control hidden">
                            </div>
                            <div class="input-group-btn col-md-3 col-sm-3 col-xs-12'">
                                <button class="btn btn-primary btn-add-image" type="button"><i
                                        class="fldemo glyphicon glyphicon-plus"></i> Add image</button>
                            </div>
                        </div>
                        <div class="list-images col-md-offset-3 col-md-6 col-xs-12">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <div class="ln_solid"></div>
                            {!! $inputHiddenThumb !!}
                            <input name="id" type="hidden" value="{{ $itemId }}">
                            <input class="btn btn-success" type="submit" value="Save">
                        </div>
                    </div>
                    {{ Form::close() }}
                </div>
            </div>
        </div>
        <div class="col-md-6 col-sm-12 col-xs-12">
            <div class="x_panel">
                @include('admin.templates.x_title', ['title' => 'Add attribute'])
                <div class="x_content">
                    <div class="x_content add-all-attr">
                        <div class="form-group">
                            {{ Form::label('add_attribute', 'Add attribute', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) }}
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <button class="btn btn-info add-attr" type="button"
                                    data-url-attr="{{ route('product/createAttribute') }}">+Add attribute</button>
                                <button class="btn btn-success refresh-variant" type="button"
                                    data-url-refresh-variant="{{ route('product/refreshVariant') }}">Refresh List
                                    Variant</button>
                            </div>
                        </div>
                        <div class="add-new-attr">
                            {{-- {!! $xhtmlListAttr !!} --}}
                            @foreach ($listAttr as $attribute)
                                <div class="form-group child-attr" style="margin-top: 50px">
                                    <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Name</label>

                                    <input name="attribute_names[]" type="text" value="{{ $attribute['name'] }}"
                                        class="btn btn-default attr-name" style="margin-botton:10px"
                                        data-url-update-name="{{ route('product/updateAttributeName') }}"
                                        data-id-update-name="{{ $attribute['id'] }}">

                                    <button class="btn btn-danger btn-del-attr-all" type="button"
                                        data-url-delete-attr="{{ route('product/deleteAttribute') }}"
                                        data-id-delete-attr="{{ $attribute['id'] }}"> Delete
                                        Attribute</button>

                                    <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Value</label>

                                    <div class="input-group input-group-sm mb-3 child-attr-val" style="margin-top: 10px">
                                        <button class="btn btn-primary btn-add-attr-val" type="button"
                                            data-url-add-attr-val="{{ route('product/addAttributeValue') }}"> New
                                            Value</button>
                                        @if ($attribute['attribute_value'])
                                            @foreach ($attribute['attribute_value'] as $attributeVal)
                                                <div class="one-attr-val">
                                                    <input name="attribute_values[]"
                                                        style="margin-botton:10px;margin-top:10px" type="text"
                                                        class="btn btn-default attr-value"
                                                        data-url-update-value="{{ route('product/updateAttributeValue') }}"
                                                        value="{{ $attributeVal['name'] }}">
                                                    <button class="btn btn-warning btn-del-attr-val" type="button"
                                                        data-url-delete-val="{{ route('product/deleteAttributeValue') }}">
                                                        Delete Value</button>
                                                    <input type="hidden" name="id-attr-val"
                                                        value="{{ $attributeVal['id'] }}">
                                                </div>
                                            @endforeach
                                        @endif
                                        <input type="hidden" name="id-attr" value="{{ $attribute['id'] }}">
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>

                    <div class="x_content add-all-variant" style="margin-top: 50px">
                        <div class="form-group attr-variant" style="margin-top: 25px;margin-bottom:20px">
                            <div class="every-attr">
                                {{ Form::label('add_attribute', 'List Variants', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) }}
                                {{ Form::label('add_attribute', 'Variant Name', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) }}
                                {{ Form::label('add_attribute', 'Price', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12', 'style' => 'text-align:center']) }}
                                {{ Form::label('add_attribute', 'Amount', ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) }}
                                @php
                                    $i = 1;
                                @endphp
                                @foreach ($listVariant as $variant)
                                    <div class="form-group attr-variant" style="margin-top: 25px;margin-bottom:20px">
                                        {{ Form::label('add_attribute', $i++, ['class' => 'control-label col-md-3 col-sm-3 col-xs-12']) }}
                                        <input class="btn btn-default" type="text" value="{{ $variant['name'] }}"
                                            readonly>
                                        <input type="text" name="price" class="btn btn-default price-variant"
                                            style="width:100px" id="currency-field" pattern="[0-9][0-9,]*[0-9]"
                                            data-type="currency" data-url-update-price="{{ route('product/changePrice') }}"
                                            value="{{ number_format(((float) $variant['price']), 0, '.', ',') }}">

                                        <input type="text" name="amount" class="btn btn-default amount-variant"
                                            style="width:100px" id="currency-field" pattern="[0-9][0-9,]*[0-9]"
                                            data-type="currency"
                                            data-url-update-amount="{{ route('product/changeAmount') }}"
                                            value="{{ $variant['amount'] }}">
                                        <input type="hidden" name="id_combination"
                                            value="{{ $variant['attribute_value_id'] }}">
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                </div>
                <input name="id" type="hidden" value="{{ $itemId }}">
            </div>
        </div>
    </div>

@endsection

