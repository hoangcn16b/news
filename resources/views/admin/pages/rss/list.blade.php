@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
$fieldNameTypeOpen = 'source';
$fieldNameSource = 'rss_source';
@endphp
<div class="x_content">
    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Name</th>
                    <th class="column-title">Link</th>
                    <th class="column-title">Ordering</th>
                    <th class="column-title">Source</th>
                    <th class="column-title">Trạng thái</th>
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
                            $source = $val['source'];
                            $ordering = $val['ordering'];
                            $name = Hightlight::show($val['name'], $params['search'], 'name');
                            $link = Hightlight::show($val['link'], $params['search'], 'link');
                            // $status          = Template::showItemStatus($controllerName, $id, $val['status']); ;
                            // $createdHistory = Template::showItemHistory($val['created_by'], $val['created']);
                            // $modifiedHistory = Template::showItemHistory($val['modified_by'], $val['modified']);
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                            $ordering = 'ordering';
                            $thisColumnSource = 'source';
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td>{{ $name }}</td>
                            <td>{{ $link }}</td>
                            <td style=" width:5%;">
                                <livewire:ordering :thisColumn="$ordering" :ordering="$val['ordering']" :rowId="$id"
                                    :inTable="$inTable" />
                            </td>
                            <td width="15%" align="center">
                                <livewire:select :thisColumn="$thisColumnSource" :thisType="$val['source']" :rowId="$id" :fieldName="$fieldNameSource"
                                    :inTable="$inTable" />
                            </td>
                            <td>
                                <livewire:status :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
                            </td>
                            {{-- <td>{!! $createdHistory !!}</td> --}}
                            {{-- <td>{!! $modifiedHistory !!}</td> --}}
                            <td class="last">{!! $listBtnAction !!}</td>
                        </tr>
                    @endforeach
                @else
                    @include('admin.templates.list_empty', ['colspan' => 9])
                @endif
            </tbody>
        </table>
    </div>
</div>
