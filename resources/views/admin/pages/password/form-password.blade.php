@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');


$inputHiddenID = Form::hidden('id', session('userInfo.id'));

$elements = [
    [
        'label' => Form::label('password', 'Old password', $formLabelAttr),
        'element' => Form::password('password', $formInputAttr),
    ],
    [
        'label' => Form::label('name', 'New password', $formLabelAttr),
        'element' => Form::password('new_password', $formInputAttr),
    ],
    [
        'label' => Form::label('name', 'Confirm new password', $formLabelAttr),
        'element' => Form::password('new_confirm_password', $formInputAttr),
    ],
    [
        'element' => $inputHiddenID . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
];
@endphp

@include ('admin.templates.error')

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
