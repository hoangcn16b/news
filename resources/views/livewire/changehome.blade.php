{{-- <div style="text-align: center">
    <button wire:click="increment">+</button>
    <h1>{{ $count }}</h1>
</div> --}}
<div>
    <button wire:click="changeIsHome" type="button"
        class="btn btn-round 
    @if ($isHome == 'yes') btn-primary
    @else btn-warning  
    @endif
  ">
        @php
            if ($isHome == 'yes') {
                echo 'Hiển thị';
            } else {
                echo 'Không hiển thị';
            }
        @endphp
    </button>
</div>
