@include ('admin.templates.error')

@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');
$formCkeditor = config('zvn.template.form_ckeditor');
$configTagsInput = ['class' => 'some_class_name my-tagify', 'width' => '100', 'height' => 40];

$inputHiddenTask = Form::hidden('task_general_setting', 'general-setting');

$elements = [
    [
        'label' => Form::label('hotline', 'Hotline', $formLabelAttr),
        'element' => Form::textarea('hotline', @$itemGeneralSetting['hotline'], $configTagsInput),
    ],
    [
        'element' => $inputHiddenTask . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
];
@endphp

<div class="x_content">
    {{ Form::open([
        'method' => 'POST',
        'url' => route("$controllerName/save"),
        'accept-charset' => 'UTF-8',
        'enctype' => 'multipart/form-data',
        'class' => 'form-horizontal form-label-left',
        'id' => 'main-form-product-attribute',
    ]) }}
    {!! FormTemplate::show($elements) !!}
    {{ Form::close() }}
</div>
