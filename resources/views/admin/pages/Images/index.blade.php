@extends('admin.main')
@section('content')
    <div class="page-header zvn-page-header clearfix">
        <div class="zvn-page-header-title">
            <h3>Danh sách hình ảnh</h3>
        </div>
    </div>
    @include ('admin.templates.zvn_notify')
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <div class="x_panel">
                {{-- <div>
                    @include('ckfinder::setup')
                    <script>
                        CKFinder.start();
                        // CKFinder.widget('ckfinder-widget', {
                        //     language: 'pt-br',
                        //     width: '100%',
                        //     height: 500
                        // });
                    </script>
                </div> --}}
                @include('admin.templates.x_title', ['title' => 'Upload hình ảnh'])
                @include('admin.pages.images.list')
            </div>
        </div>
    </div>
@endsection
