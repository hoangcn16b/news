@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
@endphp
<div class="x_content">
    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Slider Info</th>
                    <th class="column-title">Hình ảnh</th>
                    <th class="column-title">Special</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Sắp xếp</th>
                    {{-- <th class="column-title">Tạo mới</th> --}}
                    {{-- <th class="column-title">Chỉnh sửa</th> --}}
                    <th class="column-title">Hành động</th>
                </tr>
            </thead>
            <tbody>
                @if (count($items) > 0)
                    @foreach ($items as $key => $val)
                        @php
                            $index = $key + 1;
                            $class = $index % 2 == 0 ? 'even' : 'odd';
                            $id = $val['id'];
                            $name = Hightlight::show($val['name'], $params['search'], 'name');
                            $name = $val->name_category;
                            // $description = Hightlight::show($val['description'], $params['search'], 'description');
                            // $link = Hightlight::show($val['link'], $params['search'], 'link');
                            $thumb = Template::showItemThumb($folderFileUpload, $val['thumb'], $val['name']);
                            // $status          = Template::showItemStatus($controllerName, $id, $val['status']); ;
                            // $createdHistory = Template::showItemHistory($val['created_by'], $val['created_at']);
                            // $modifiedHistory = Template::showItemHistory($val['updated_by'], $val['updated_at']);
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                            $colSpecial = 'special';
                            $ordering = 'ordering';
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td width="20%">
                                {!! $name !!}
                            </td>
                            <td width="10%">
                                {!! $thumb !!}
                            </td>
                            <td>
                                <livewire:special :thisCol="$colSpecial" :thisSpecial="$val['special']" :rowId="$id"
                                    :inTable="$inTable" />
                            </td>
                            <td>
                                <livewire:status :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
                            </td>
                            <td style=" width:7%">
                                <livewire:ordering :thisColumn="$ordering" :ordering="$val['ordering']" :rowId="$id"
                                    :inTable="$inTable" />
                            </td>
                            {{-- <td>{!! $createdHistory !!}</td> --}}
                            {{-- <td>{!! $modifiedHistory !!}</td> --}}
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
