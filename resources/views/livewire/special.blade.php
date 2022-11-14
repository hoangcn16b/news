{{-- <div style="text-align: center">
    <button wire:click="increment">+</button>
    <h1>{{ $count }}</h1>
</div> --}}
<div>
    <button wire:click="changeSpecial" type="button"
        class="btn btn-round toast-notify
    @if ($thisSpecial == 'active') btn-success
    @else btn-warning  
    @endif
  ">
        @php
            if ($thisSpecial == 'active') {
                echo 'Danh mục đặc biệt';
            } else {
                echo 'Danh mục thường';
            }
        @endphp
    </button>
</div>
