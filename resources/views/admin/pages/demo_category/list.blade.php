@php
use App\Helpers\Template as Template;
use App\Helpers\Hightlight as Hightlight;
// echo '<pre>';
// print_r ($categories);
// echo '</pre>';
@endphp
<div class="x_content">

    <div class="table-responsive">
        <table class="table table-striped jambo_table bulk_action">
            <thead>
                <tr class="headings">
                    <th class="column-title">#</th>
                    <th class="column-title">Name</th>
                    <th class="column-title">Trạng thái</th>
                    <th class="column-title">Hiện thị Home</th>
                    <th class="column-title">Kiểu hiện thị</th>
                    <th class="column-title">Tạo mới</th>
                    <th class="column-title">Chỉnh sửa</th>
                    <th class="column-title">Hành động</th>
                </tr>
            </thead>
            <tbody>
                @php
                    echo '<pre>';
                    print_r ($categories);
                    echo '</pre>';
                @endphp
            </tbody>
        </table>
    </div>
</div>
