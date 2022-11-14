@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
// $listCategory = array_flip($listCategory);
// dd($items);
@endphp
<div class="x_content">
    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Product Info</th>
                    <th class="column-title">Content</th>
                    <th class="column-title">Thumb</th>
                    <th class="column-title">Category Product</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Sắp xếp</th>
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
                            $content = Template::collapseString($content, 80);
                            $thumbDecode = json_decode($val['thumb'], true);
                            $thumb = $thumbDecode['image'][0] ?? '';
                            $thumb = Template::showItemThumb($folderFileUpload, $thumb ?? '', $thumbDecode['alt'][0] ?? $val['name']);
                            // $price = number_format(((float) $val['price']), 0, '.', ',');
                            // $categoryName = $val['category_name'];
                            // $status          = Template::showItemStatus($controllerName, $id, $val['status']);
                            $selectCategory = Template::showSelectFromModel($controllerName, $listCategory, $id, $val['product_category_id'], 'category');
                            $description = Template::collapseString($val['description'], 10);
                            // dd($val);
                            $category = $val->productCategory->name;
                            
                            $listBtnAction = Template::showButtonAction($controllerName, $id);
                            $categoryCol = 'product_category_id';
                            $colOrdering = 'ordering';
                        @endphp
                        <tr class="{{ $class }} pointer">
                            <td>{{ $index }}</td>
                            <td width="30%">
                                <p><strong>Name:</strong> {!! $name !!}</p>
                                <p><strong>Price:</strong> {!! $val->price_product !!} đ</p>
                                <p><strong>Sale Off:</strong> {!! $val['sale_off'] !!} %</p>
                                <p><strong>Description:</strong> {!! $description !!}</p>
                            </td>
                            <td width="30%">
                                <p>{!! $content !!}</p>
                            </td>
                            <td width="10%">
                                <p>{!! $thumb !!}</p>
                            </td>
                            <td width="15%">
                                {!! $selectCategory !!}
                                {{-- <livewire:selectdb :thisCol="$categoryCol" :thisVal="$val->productCategory->id" :rowId="$id"
                                    :fieldName="$listCategory" :inTable="$inTable" /> --}}
                            </td>
                            <td>
                                <livewire:status :isStatus="$val['status']" :rowId="$id" :inTable="$inTable" />
                            </td>
                            <td style=" width:8%">
                                <livewire:ordering :thisColumn="$colOrdering" :ordering="$val['ordering']" :rowId="$id"
                                    :inTable="$inTable" />
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
