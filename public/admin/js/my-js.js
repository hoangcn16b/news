$(document).ready(function () {

    let $btnSearch = $("button#btn-search");
    let $btnClearSearch = $("button#btn-clear-search");
    let $btnFilterCategory = $("a.btn-filter");

    let $inputSearchField = $("input[name  = search_field]");
    let $inputSearchValue = $("input[name  = search_value]");
    let $selectChangeAttr = $("select[name = select_change_attr]");
    let $inputSearchFilter = $("input[name  = search_filter]");

    $("a.select-field").click(function (e) {
        e.preventDefault();

        let field = $(this).data("field");
        let fieldName = $(this).html();
        $("button.btn-active-field").html(
            fieldName + ' <span class="caret"></span>'
        );
        $inputSearchField.val(field);
    });

    $("a.select-filter").click(function () {
        // e.preventDefault();

        let filter = $(this).data("filter");
        let filterName = $(this).html();
        $("button.btn-active-filter").html(
            filterName + ' <span class="caret"></span>'
        );
        $inputSearchFilter.val(filter);
        $(this).submit();
        // console.log($inputSearchFilter.val(filter));
    });

    $btnFilterCategory.click(function () {
        var pathname = window.location.pathname;
        let params = ["filter_status"];
        let searchParams = new URLSearchParams(window.location.search); // ?filter_status=active

        let link = "";
        $.each(params, function (key, param) {
            // filter_status
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&"; // filter_status=active
            }
        });

        let search_field = $inputSearchField.val();
        let search_value = $inputSearchValue.val();
        let search_filter = $inputSearchFilter.val();

        window.location.href =
            pathname +
            "?" +
            link +
            "search_field=" +
            search_field +
            "&search_value=" +
            search_value +
            "&search_filter=" +
            search_filter;

    });

    $btnSearch.click(function () {
        var pathname = window.location.pathname;
        let params = ["filter_status"];
        let searchParams = new URLSearchParams(window.location.search); // ?filter_status=active

        let link = "";
        $.each(params, function (key, param) {
            // filter_status
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&"; // filter_status=active
            }
        });

        let search_field = $inputSearchField.val();
        let search_value = $inputSearchValue.val();
        let search_filter = $inputSearchFilter.val();

        // if (search_value.replace(/\s/g, "") == "") {
        //     alert("Nhập vào giá trị cần tìm !!");
        // } else {

        window.location.href =
            pathname +
            "?" +
            link +
            "search_field=" +
            search_field +
            "&search_value=" +
            search_value +
            "&search_filter=" +
            search_filter;
        // }
    });

    $btnClearSearch.click(function () {
        var pathname = window.location.pathname;
        let searchParams = new URLSearchParams(window.location.search);

        params = ["filter_status"];

        let link = "";
        $.each(params, function (key, param) {
            if (searchParams.has(param)) {
                link += param + "=" + searchParams.get(param) + "&";
            }
        });

        window.location.href = pathname + "?" + link.slice(0, -1);
    });

    $(".btn-delete").on("click", function () {
        if (!confirm("Bạn có chắc muốn xóa phần tử?")) return false;
    });

    $(".status-ajax").on("click", function () {
        // let url = $(this).data("url");
        // let btn = $(this);
        // let currentClass = btn.data("class");
        // $.ajax({
        //     type: "GET",
        //     url: url,
        //     dataType: "json",
        //     success: function (response) {
        //         btn.removeClass(currentClass);
        //         btn.addClass(response.statusObj.class);
        //         btn.html(response.statusObj.name);
        //         btn.data("url", response.link);
        //         btn.data("class", response.statusObj.class);
        //         btn.notify("Cập nhật thành công", {
        //             position: "top center",
        //             className: "success",
        //         });
        //     },
        // });
    });

    $(".is-home-ajax").on("click", function () {
        let url = $(this).data("url");
        let btn = $(this);
        let currentClass = btn.data("class");
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                btn.removeClass(currentClass);
                btn.addClass(response.isHomeObj.class);
                btn.html(response.isHomeObj.name);
                btn.data("url", response.link);
                btn.data("class", response.isHomeObj.class);
                btn.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    $selectChangeAttr.on("change", function () {
        let ele = $(this);
        let selectValue = $(this).val();
        let url = $(this).data("url");
        url = url.replace("value_new", selectValue);
        // console.log(url);
        $.ajax({
            type: "GET",
            url: url,
            dataType: "json",
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            },
        });
    });

    window.addEventListener('alert', event => {

        let ele = $(event.target);
        ele.notify(event.detail.message, {
            position: "top center",
            className: event.detail.type,
        });
    });

    let myTagify = document.querySelectorAll('.my-tagify');
    myTagify.forEach(ele => {
        new Tagify(ele);
    });

    $('.select-select2').select2();

    //sortable
    $("#sortable").sortable();
    $('#btn-add-image').on('click', function () {
        let imageItem = `
        <div class="mb-3 d-flex p-2 bg-warning">
            <input class="form-control col-md-3 col-sm-3 col-xs-12" type="file" name="thumb1[]" id="formFile">
            <input class=" col-md-3 col-sm-3 col-xs-12" type="text" name="alt[]">
            <button type="button" class="btn btn-danger btn-delete-image">X</button>
        </div>
        `;
        $('.image-wrapper').append(imageItem);

        $("#sortable").sortable();
    });
    $(document).on('click', '.btn-delete-image', function (e) {
        e.preventDefault();
        $(this).parent().remove();
    });

    //currency
    $("input[data-type='currency']").on({
        keyup: function () {
            formatCurrency($(this));
        },
        blur: function () {
            formatCurrency($(this), "blur");
        }
    });
    function formatNumber(n) {
        // format number 1000000 to 1,234,567
        return n.replace(/\D/g, "").replace(/\B(?=(\d{3})+(?!\d))/g, ",")
    }
    function formatCurrency(input, blur) {
        // appends $ to value, validates decimal side
        // and puts cursor back in right position.

        // get input value
        var input_val = input.val();

        // don't validate empty input
        if (input_val === "") { return; }

        // original length
        var original_len = input_val.length;

        // initial caret position 
        var caret_pos = input.prop("selectionStart");

        // no decimal entered
        // add commas to number
        // remove all non-digits
        input_val = formatNumber(input_val);
        input_val = "" + input_val;

        // final formatting
        if (blur === "blur") {
            input_val += "";
        }

        // send updated string to input
        input.val(input_val);

        // put caret back in the right position
        var updated_len = input_val.length;
        caret_pos = updated_len - original_len + caret_pos;
        input[0].setSelectionRange(caret_pos, caret_pos);
    }

    $(".btn-add-image").click(function () {
        // console.log('clicked btn-add-image')
        $('#file_upload').trigger('click');
    });

    // event delegation
    $('.list-input-hidden-upload').on('change', '#file_upload', function (event) {
        let today = new Date();
        let time = today.getTime();
        let image = event.target.files[0];
        let name = $("input[name='name']").val();
        let alt = name.replace(/\s/g, '+');
        let file_name = event.target.files[0].name;
        // console.log(alt);
        let box_image = $('<div class="box-image"></div>');
        box_image.append('<img src="' + URL.createObjectURL(image) + '" class="picture-box" width="150" height="180">');
        box_image.append('<input type="text" name="altNewImg[]" value="' + alt + '" id="alt-{{ $key }}" class="images_alt">');
        box_image.append('<div class="wrap-btn-delete"><button class="btn btn-danger btn-delete-image" type="button" data-id=' + time + '><i class="fldemo glyphicon glyphicon-remove"></i> Remove</button></div>');
        $(".list-images").append(box_image);
        $(this).removeAttr('id');
        $(this).attr('id', time);
        let input_type_file = '<input type="file" name="filenames[]" id="file_upload" class="myfrm form-control hidden">';
        $('.list-input-hidden-upload').append(input_type_file);
    });

    $(".list-images").on('click', '.btn-delete-image', function () {
        let id = $(this).data('id');
        $('#' + id).remove();
        $(this).parents('.box-image').remove();
    });

    //----------------------------------------------------------------------------------------------------------------

    
});
