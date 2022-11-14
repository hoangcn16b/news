@php
use App\Helpers\Template as Template;
@endphp
<div>
    {!! Template::selectByLiveWire('thisType', $fieldName) !!}
</div>
{{-- <div>
    <select class="form-control" wire:model="thisType" name="thisType">
        @foreach ($values as $key => $option)
            <option value="{{ $key }}">{{ $option }}</option>
        @endforeach
    </select>
</div> --}}
