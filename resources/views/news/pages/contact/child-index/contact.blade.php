<div class="posts">
    <div class="col-lg-12">
        @if (session('zvn_notify'))
            {{-- <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="alert alert-info alert-dismissible fade in" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span
                                aria-hidden="true">×</span></button>
                        <strong>{{ session('zvn_notify') }} 123</strong>
                    </div>
                </div>
            </div> --}}
            <div class="alert alert-success">
                <h4><i class="fa fa-success"></i>Chúng tôi đã nhận được thông tin liên hệ. Hãy kiểm tra mail thường xuyên
                    để nhận được thông báo của chúng tôi sớm nhất!</h4>
            </div>
        @endif
        <div class="row">

            <div class="col-lg-7">

                <div class="h600 overflow-hidden" id="map-canvas">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.4435923675937!2d106.62563971474448!3d10.853826360728288!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752bee0b0ef9e5%3A0x5b4da59e47aa97a8!2zQ8O0bmcgVmnDqm4gUGjhuqduIE3hu4FtIFF1YW5nIFRydW5n!5e0!3m2!1svi!2s!4v1658662950923!5m2!1svi!2s"
                        width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>

            </div>
            <div class="col-lg-5 form_grid">
                <h4 class="mb5">Gửi tin nhắn cho chúng tôi</h4>
                <p style="line-height: 25px">Bạn chỉ đầy đủ thông tin cá nhân và vấn đề trao đổi với ZendVN vào form bên
                    dưới, sau khi nhận được thông tin này chúng tôi sẽ liên hệ với các bạn trong thời gian sớm nhất.</p>

                <form class="contact_form" id="contact_form" name="contact_form"
                    action="{{ route("$controllerName/save") }}" method="post" accept-charset="UTF-8">
                    @csrf
                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <h4><i class="fa fa-warning"></i>Warning!</h4>
                            @foreach ($errors->all() as $error)
                                <p>{{ $error }}</p>
                            @endforeach
                        </div>
                    @endif
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="form-group"><label for="exampleInputName">Họ tên</label>
                                <input id="form_name" name="name" class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group"><label for="exampleInputEmail">Email</label>
                                <input id="form_email" name="email" class="form-control email" type="email">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group"><label for="exampleInputPhone">Phone</label>
                                <input id="form_phone" name="phone" class="form-control" type="text">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="form-group"><label for="exampleInputEmail1">Lời nhắn</label>
                                <textarea id="form_message" name="content" class="form-control" rows="5">
                                    
                                </textarea>
                            </div>
                            <div class="form-group ui_kit_button mb0"><button type="submit"
                                    class="btn dbxshad btn-md btn-thm circle white">Gửi ngay</button></div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
