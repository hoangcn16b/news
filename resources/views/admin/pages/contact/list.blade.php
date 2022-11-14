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
                    <th class="column-title" width="20%">Thông tin</th>
                    <th class="column-title" width="30%">Nội dung lời nhắn</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Ngày gửi/Từ Ip</th>
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
                            $name = $val['name'];
                            $email = $val['email'];
                            // $name = Hightlight::show($val['name'], $params['search'], 'name');
                            $content = $val['content'];
                            // $status = Template::showItemStatus($controllerName, $id, $val['status']);
                            $createdHistory = Template::showItemHistory($val['ip'], $val['created']);
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td width="15%">
                                <p>{!! $name !!}</p>
                                <p>{!! $email !!}</p>
                            </td>
                            <td>{!! $content !!}</td>
                            <td>
                                <livewire:contact :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
                            </td>
                            <td>
                                {!! $createdHistory !!}
                            </td>
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
