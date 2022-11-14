@php
use App\Helpers\Form as FormTemplate;
use App\Helpers\Template;

$formInputAttr = config('zvn.template.form_input');
$formLabelAttr = config('zvn.template.form_label');
$configTagsInput = ['class' => 'some_class_name my-tagify', 'width'=>'100'];

$inputTaskEmailAccount = Form::hidden('task_email_setting', 'email-setting');
$inputTaskEmailBcc = Form::hidden('task_email_bcc', 'email-bcc');

$elementsEmailAccount = [
    [
        'label' => Form::label('email', 'Email', $formLabelAttr),
        'element' => Form::text('email', @$itemEmailAccount['email'], $formInputAttr),
    ],
    [
        'label' => Form::label('password', 'Mật khẩu ứng dụng', $formLabelAttr),
        'element' => Form::text('password', @$itemEmailAccount['password'], $formInputAttr),
    ],
    [
        'element' => $inputTaskEmailAccount . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
];

$elementsEmailBcc = [
    [
        'label' => Form::label('bcc', 'Email', $formLabelAttr),
        'element' => Form::text('bcc', @$itemEmailBcc['bcc'], $configTagsInput),
    ],
    
    [
        'element' => $inputTaskEmailBcc . Form::submit('Save', ['class' => 'btn btn-success']),
        'type' => 'btn-submit',
    ],
];
@endphp

{{-- setting Account Email --}}

<div class="x_title" style="margin-top: 20px">
    <h2>Tài khoản</h2>
    <div class="clearfix"></div>
</div>
<div class="x_content">
    {{ Form::open([
        'method' => 'POST',
        'url' => route("$controllerName/save"),
        'accept-charset' => 'UTF-8',
        'enctype' => 'multipart/form-data',
        'class' => 'form-horizontal form-label-left',
        'id' => 'main-form-email-setting',
    ]) }}
    {!! FormTemplate::show($elementsEmailAccount) !!}
    {{ Form::close() }}
    <div class="ln_solid"></div>

</div>

{{-- setting BCC Email --}}
<div>
    <div class="x_title" style="margin-top: 50px">
        <h2>BCC</h2>
        <div class="clearfix"></div>
    </div>
    <div class="x_content" style="margin-top: 50px">
        {{ Form::open([
            'method' => 'POST',
            'url' => route("$controllerName/save"),
            'accept-charset' => 'UTF-8',
            'enctype' => 'multipart/form-data',
            'class' => 'form-horizontal form-label-left',
            'id' => 'main-form-account-setting',
        ]) }}
        {!! FormTemplate::show($elementsEmailBcc) !!}
        {{ Form::close() }}
    </div>
</div>
