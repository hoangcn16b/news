@foreach ($items[0] as $key => $val)
    @php
        $linkToDetails = route(lcfirst(str_replace(' ', '', $key)));
    @endphp
    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 ">
        <div class="tile-stats">
            <div class="icon"><i class="fa fa-caret-square-o-right"></i></div>
            <div class="count">{{ $val }}</div>
            <h3>{{ $key }}</h3>
            <a href="{{ $linkToDetails }}">
                <p>Xem chi tiết</p>
            </a>
        </div>
    </div>
@endforeach
