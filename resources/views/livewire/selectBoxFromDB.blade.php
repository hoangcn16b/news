@php
use App\Helpers\Template as Template;
// dd($this->getFieldName());
@endphp
<div wire:ignore style="width: 100%">
    {{-- {!! Template::selectDBByLiveWire('thisVal', $fieldName, false) !!} --}}
    <select name="" class="select2-dropdown" >
        @foreach ($fieldName as $key => $value)
            <option value="{{ $key }}">{{ $value }}</option>
        @endforeach
    </select>
</div>

@push('scripts')
    <script>
        $(document).ready(function() {
            $('.select2-dropdown').select2({
    width: '400px' // need to override the changed default
});

            // $('.select2-dropdown').on('change', function(e) {
            //     const data = e.target.value;
            //     @this.set('thisVal', data);
            // });
        });
    </script>
@endpush
