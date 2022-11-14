{{-- @php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
use App\Models\CategoryModel;
@endphp

<li class="dd-item dd3-item" data-id="{{ $item->id }}">

    <div class="dd-handle dd3-handle">Drag</div>

    <div class="dd3-content"> {{ $item->name }}

        @if ($item->children->count() > 0)
            <button class="dd-collapse" data-action="collapse" type="button">Collapse</button>
            <button class="dd-expand" data-action="expand" type="button">Expand</button>
            <ol class="dd-list">
                @foreach ($item->children as $itemChildren)
                    @include('admin.pages.category.item', ['item' => $itemChildren])
                @endforeach
            </ol>
        @endif

    </div>

</li> --}}
