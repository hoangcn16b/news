@extends('news.main')
@section('content')
    <div class="section-category">
        @include('news.block.breadcrumb', ['item' => ['name' => $title]])
        <div class="content_container container_category">
            <div class="featured_title">
                <div class="container">
                    <div class="row">
                        <!-- Main Content -->
                        <div class="col-lg-12">
                            @include('news.pages.contact.child-index.contact')
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
