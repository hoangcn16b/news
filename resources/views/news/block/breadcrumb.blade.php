@php
use App\Models\CategoryModel as CategoryModel;
use App\Helpers\URL;
$ancestors = CategoryModel::withDepth()
    ->having('depth', '>', 0)
    ->ancestorsOf($item['id'] ?? '');
@endphp

<div class="home">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="{!! asset('news/images/footer.jpg') !!}"
        data-speed="0.8"></div>
    <div class="home_content_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_content">
                        <div class="home_title">{!! $item['name'] !!}</div>
                        <div class="breadcrumbs">
                            <ul class="d-flex flex-row align-items-start justify-content-start">
                                <li><a href="{{ route('home') }}">Trang chủ</a></li>
                                @foreach ($ancestors as $ancestor)
                                    <li> <a
                                            href="{{ URL::linkCategory($ancestor->id, $ancestor->name) }}">{{ $ancestor->name }}</a>
                                    </li>
                                @endforeach
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
