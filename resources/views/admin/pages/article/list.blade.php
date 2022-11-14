@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
// foreach ($getCategoryNestedset['list_category'] as $key => $value) {
//     $listCategory[$value['id']] = $value->name_category;
// }
@endphp
<div class="x_content">
    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Article Info</th>
                    <th class="column-title">Thumb</th>
                    <th class="column-title">Category</th>
                    <th class="column-title">Kiểu bài viết</th>
                    <th class="column-title">Trạng thái</th>
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
                            $content = Hightlight::show($val['content'], $params['search'], 'content');
                            $thumb = Template::showItemThumb($controllerName, $val['thumb'], $val['name']);
                            // $categoryName = $val['category_name'];
                            // $status          = Template::showItemStatus($controllerName, $id, $val['status']);
                            $selectCategory = Template::showSelectFromModel($controllerName, $listCategory, $id, $val['category_id'], 'category');
                            $category = $val->category->name;
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                            $fieldNameType = 'type';
                            $categoryCol = 'category_id';
                            $ColType = 'type';
                        @endphp

                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td width="40%">
                                <p><strong>Name:</strong> {!! $name !!}</p>
                                <p><strong>Content:</strong> {!! $content !!}</p>
                            </td>
                            <td width="14%">
                                <p>{!! $thumb !!}</p>
                            </td>
                            <td width="15%">
                                {!! $selectCategory !!}
                                {{-- <livewire:selectdb wire:key="$id" :thisCol="$categoryCol" :thisVal="$val->category->id" :rowId="$id"
                                    :fieldName="$listCategory" :inTable="$inTable" /> --}}
                            </td>
                            <td width="10%">
                                <livewire:select :thisColumn="$ColType" :thisType="$val['type']" :rowId="$id" :fieldName="$fieldNameType"
                                    :inTable="$inTable" />
                            </td>
                            <td>
                                <livewire:status :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
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
