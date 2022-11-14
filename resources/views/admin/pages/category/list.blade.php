@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
use App\Models\CategoryModel;
// dd($items);
@endphp
<div class="x_content">

    {{-- <div class="dd" id="nestable3">
        <ol class="dd-list"> --}}
    {{-- <div class="dd-handle dd3-handle">Drag</div> --}}
    {{-- @foreach ($items as $item)
                @include('admin.pages.category.item', ['item' => $item])
            @endforeach --}}

    {{-- </ol>
    </div> --}}

    {{-- @php
        function showCategory($items, &$xhtml)
        {
            foreach ($items as $item) {
                $xhtml .= sprintf('class="dd-item dd3-item" data-id="%s">', $item->id);
        
                if ($item->children->count() > 0) {
                    $xhtml .= '<ol class="dd-list">';
                    showCategory($item->children, $xhtml);
                    $xhtml .= '</ol>';
                }
        
                $xhtml .= '</li>';
            }
        }
        
        $xhtml = '';
        showCategory($items, $xhtml);
    @endphp --}}
    {{-- <div class="dd" id="nestable3">
        <ol class="dd-list">
            <li class="dd-item dd3-item" data-id="13">
                <div class="dd-handle dd3-handle">Drag</div>
                <div class="dd3-content">Item 13</div>
            </li>
            <li class="dd-item dd3-item" data-id="14">
                <div class="dd-handle dd3-handle">Drag</div>
                <div class="dd3-content">Item 14</div>
            </li>
            <li class="dd-item dd3-item" data-id="15">
                <button class="dd-collapse" data-action="collapse" type="button">Collapse</button>
                <button class="dd-expand" data-action="expand" type="button">Expand</button>
                <div class="dd-handle dd3-handle">Drag</div>
                <div class="dd3-content">Item 15</div>
                <ol class="dd-list">
                    <li class="dd-item dd3-item" data-id="16">
                        <div class="dd-handle dd3-handle">Drag</div>
                        <div class="dd3-content">Item 16</div>
                    </li>
                    <li class="dd-item dd3-item" data-id="17">
                        <div class="dd-handle dd3-handle">Drag</div>
                        <div class="dd3-content">Item 17</div>
                    </li>
                    <li class="dd-item dd3-item" data-id="18">
                        <div class="dd-handle dd3-handle">Drag</div>
                        <div class="dd3-content">Item 18</div>
                    </li>
                </ol>
            </li>
        </ol>
    </div> --}}



    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Name</th>
                    <th class="column-title">Ordering</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Hiện thị Home</th>
                    <th class="column-title">Kiểu hiện thị</th>
                    <th class="column-title">Tạo mới</th>
                    <th class="column-title">Chỉnh sửa</th>
                    <th class="column-title">Hành động</th>
                </tr>
            </thead>
            <tbody>


                @if (count($items) > 0)
                    @foreach ($items as $key => $val)
                        @php
                            $id = $val['id'];
                            
                            $index = $key + 1;
                            $class = $index % 2 == 0 ? 'even' : 'odd';
                            $name = Hightlight::show($val['name'], $params['search'], 'name');
                            $name = str_repeat('-----/ ', $val['depth'] - 1) . $name;
                            // $status          = Template::showItemStatus($controllerName, $id, $val['status']);
                            // $isHome          = Template::showItemIsHome($controllerName, $id, $val['is_home']);
                            // $display         = Template::showItemSelect($controllerName, $id, $val['display'], 'display');
                            $createdHistory = Template::showItemHistory($val['created_by'], $val['created']);
                            $modifiedHistory = Template::showItemHistory($val['modified_by'], $val['modified']);
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                            $fieldName = 'display';
                            $thisColumn = 'display';
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td width="25%">{!! $name !!}</td>
                            <td width="10%">
                                @if (!empty($val->getPrevSibling()))
                                    <a href="{{ route('category/ordering', ['ordering' => 'up', 'id' => $id]) }}"><i
                                            class="fa fa-arrow-up"></i></a>
                                @endif
                                &nbsp; &nbsp; &nbsp; &nbsp;
                                @if (!empty($val->getNextSibling()))
                                    <a href="{{ route('category/ordering', ['ordering' => 'down', 'id' => $id]) }}"><i
                                            class="fa fa-arrow-down"></i></a>
                                @endif
                            </td>
                            {{-- <td>{!! $status !!}</td> --}}
                            {{-- <td>{!! $isHome  !!}</td> --}}
                            <td>
                                <livewire:status :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
                            </td>
                            <td>
                                <livewire:changehome :isHome="$val['is_home']" :rowId="$id" />
                            </td>
                            <td>
                                <livewire:select :thisColumn="$thisColumn" :thisType="$val['display']" :rowId="$id" :fieldName="$fieldName"
                                    :inTable="$inTable" />
                            </td>
                            {{-- <td>{!! $display !!}</td> --}}
                            <td>{!! $createdHistory !!}</td>
                            <td>{!! $modifiedHistory !!}</td>
                            <td class="last">{!! $listBtnAction !!}</td>
                        </tr>
                    @endforeach
                @else
                    @include('admin.templates.list_empty', ['colspan' => 6])
                @endif

            </tbody>
        </table>
    </div>
</div>
