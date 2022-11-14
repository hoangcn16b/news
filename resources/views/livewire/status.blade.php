{{-- <div style="text-align: center">
    <button wire:click="increment">+</button>
    <h1>{{ $count }}</h1>
</div> --}}
<div>
    <button wire:click="changeStatus" type="button"
        class="btn btn-round toast-notify
    @if ($isStatus == 'active') btn-success
    @else btn-warning  
    @endif
  ">
        @php
            if ($isStatus == 'active') {
                echo 'Kích hoạt';
            } else {
                echo 'Không kích hoạt';
            }
        @endphp
    </button>
</div>
