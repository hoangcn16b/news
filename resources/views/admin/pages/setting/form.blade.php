@include ('admin.templates.error')

<div class="x_content">
    <ul class="nav nav-tabs bar_tab" id="myTab" role="tablist">
        <li class="nav-item active" id="home-tab-wrapper">
            <a class="nav-link " id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home"
                aria-selected="false">Cấu hình chung</a>
        </li>
        <li class="nav-item" id="profile-tab-wrapper">
            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab"
                aria-controls="profile" aria-selected="false">Email</a>
        </li>
        <li class="nav-item" id="contact-tab-wrapper">
            <a class="nav-link " id="contact-tab" data-toggle="tab" href="#contact" role="tab"
                aria-controls="contact" aria-selected="true">Social</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade in active" id="home" role="tabpanel" aria-labelledby="home-tab">
            @include('admin.pages.setting.form-setting')
        </div>
        <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
            @include('admin.pages.setting.form-email')
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            @include('admin.pages.setting.form-social')
        </div>
    </div>
</div>
