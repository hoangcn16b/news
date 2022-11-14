{{-- <div style="text-align: center">
    <button wire:click="increment">+</button>
    <h1>{{ $count }}</h1>
</div> --}}
<div>
    <button wire:click="changeContact" type="button"
        class="btn btn-round toast-notify
    @if ($isStatus == 'active') btn-success
    @else btn-warning @endif
  ">
        @php
            if ($isStatus == 'active') {
                echo 'Đã liên hệ';
            } else {
                echo 'Chưa liên hệ';
            }
        @endphp
    </button>
</div>
