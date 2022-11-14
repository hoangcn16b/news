@php
use App\Helpers\Template as Template;
@endphp
<div>
    {!! Template::orderingByLiveWire('ordering', $ordering) !!}
</div>
