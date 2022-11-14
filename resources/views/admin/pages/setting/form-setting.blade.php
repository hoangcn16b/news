@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');
$formCkeditor = config('zvn.template.form_ckeditor');
$configTagsInput = ['class' => 'some_class_name my-tagify', 'width'=>'100'];

// $inputHiddenID = Form::hidden('id', @$itemGeneralSetting['id']);
$inputHiddenAvatar = Form::hidden('avatar_current', @$itemGeneralSetting['logo']);
$inputHiddenTask = Form::hidden('task_general_setting', 'general-setting');

$elementsGeneralSetting = [
    [
        'label' => Form::label('logo', 'Logo', $formLabelAttr),
        'element' => Form::file('logo', $formInputAttr),
        'avatar' => !empty(@$itemGeneralSetting['logo']) ? Template::showItemThumb($controllerName, @$itemGeneralSetting['logo'], @$itemGeneralSetting['logo']) : null,
        'type' => 'avatar',
    ],
    [
        'label' => Form::label('hotline', 'Hotline', $formLabelAttr),
        'element' => Form::text('hotline', @$itemGeneralSetting['hotline'], $configTagsInput),
    ],
    [
        'label' => Form::label('timezone', 'Thời gian làm việc', $formLabelAttr),
        'element' => Form::text('timezone', @$itemGeneralSetting['timezone'], $formInputAttr),
    ],
    [
        'label' => Form::label('copyright', 'Copyright', $formLabelAttr),
        'element' => Form::text('copyright', @$itemGeneralSetting['copyright'], $formInputAttr),
    ],
    [
        'label' => Form::label('address', 'Địa chỉ', $formLabelAttr),
        'element' => Form::text('address', @$itemGeneralSetting['address'], $formInputAttr),
    ],
    [
        'label' => Form::label('introduction', 'Giới thiệu', $formLabelAttr),
        'element' => Form::textArea('introduction', @$itemGeneralSetting['introduction'], $formCkeditor),
    ],
    // [
    //     'label' => Form::label('introduction', 'Giới thiệu', $formLabelAttr),
    //     'element' => Form::text('introduction', @$itemGeneralSetting['introduction'], $formInputAttr),
    // ],
    [
        'element' => $inputHiddenAvatar . $inputHiddenTask . Form::submit('Save', ['class' => 'btn btn-success']),
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
    'id' => 'main-form-general-setting',
]) }}
{!! FormTemplate::show($elementsGeneralSetting) !!}
{{ Form::close() }}
</div>
