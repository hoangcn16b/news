$(document).ready(function () {

    //----------------------------------------------------------------------------------------------------------------
    $(document).on('click', '.add-attr', function (e) {
        e.preventDefault();
        $('.every-attr').remove();
        let ele = $(this);
        let url = $(this).data('url-attr');
        let productId = $("input[name=id]").val();
        url = url + '?id=' + productId;
        $.ajax({
            type: "get",
            url: url,
            success: function (response) {
                $('.add-new-attr').append(response);
                ele.notify("Đã thêm mới", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    $(document).on('click', '.btn-del-attr-val', function (e) {
        e.preventDefault();
        $('.every-attr').remove();
        let url = $(this).data('url-delete-val');
        // let attrId = $(this).data('id-delete-val');
        let attrId = $(this).siblings("input[name=id-attr-val]").val();
        let productId = $("input[name=id]").val();
        url = url + '?product_id=' + productId + '&id=' + attrId;
        $(this).parent('.one-attr-val').remove();
        $.ajax({
            type: "get",
            url: url,
            success: function (response) {
            }
        });
    });

    $(document).on('click', '.btn-del-attr-all', function (e) {
        e.preventDefault();
        $('.every-attr').remove();
        let url = $(this).data('url-delete-attr');
        let attrId = $(this).data('id-delete-attr');
        let productId = $("input[name=id]").val();
        url = url + '?product_id=' + productId + '&id=' + attrId;
        $(this).parent('.child-attr').remove();
        $.ajax({
            type: "get",
            url: url,
            success: function (response) {
            }
        });
    });

    $(document).on('click', '.btn-add-attr-val', function (e) {
        e.preventDefault();
        $('.every-attr').remove();
        let ele = $(this);
        let url = ele.data('url-add-attr-val');
        // let attrId = $(this).data('id-add-attr-val');
        let attrId = $(this).siblings("input[name=id-attr]").val();
        let productId = $("input[name=id]").val();
        url = url + '?product_id=' + productId + '&id=' + attrId;
        $.ajax({
            type: "get",
            url: url,
            success: function (response) {
                console.log(response);
                ele.parent('.child-attr-val').append(response);
            }
        });
    });

    $(document).on('change', '.attr-name', function (e) {
        e.preventDefault();
        let ele = $(this);
        let attrName = ele.val();
        let url = ele.data('url-update-name');
        let productId = $("input[name=id]").val();
        let attrId = ele.data('id-update-name');
        $.ajax({
            type: "get",
            url: url,
            data: { productId: productId, attributeName: attrName, attributeId: attrId },
            success: function (response) {
                console.log(response);
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    $(document).on('change', '.attr-value', function (e) {
        e.preventDefault();
        $('.every-attr').remove();
        let ele = $(this);
        let attrValue = ele.val();
        let url = ele.data('url-update-value');
        let productId = $("input[name=id]").val();
        let attrId = $(this).siblings("input[name=id-attr-val]").val();
        $.ajax({
            type: "get",
            url: url,
            data: { productId: productId, attributeValue: attrValue, attributeId: attrId },
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    $(document).on('click', '.refresh-variant', function (e) {
        e.preventDefault();
        let ele = $(this);
        $('.every-attr').remove();
        let productId = $("input[name=id]").val();
        let url = ele.data('url-refresh-variant');
        $.ajax({
            type: "get",
            url: url,
            data: { productId: productId },
            success: function (response) {
                $('.add-all-variant').append(response);
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    $(document).on('change', '.price-variant', function (e) {
        e.preventDefault();
        let ele = $(this);
        let productId = $("input[name=id]").val();
        let price = ele.val();
        let attributeValueId = ele.siblings("input[name=id_combination]").val();
        let url = ele.data('url-update-price');
        $.ajax({
            type: "get",
            url: url,
            data: { attributeValueId: attributeValueId, price: price },
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    $(document).on('change', '.amount-variant', function (e) {
        e.preventDefault();
        let ele = $(this);
        let productId = $("input[name=id]").val();
        let amount = ele.val();
        let attributeValueId = ele.siblings("input[name=id_combination]").val();
        let url = ele.data('url-update-amount');
        $.ajax({
            type: "get",
            url: url,
            data: { attributeValueId: attributeValueId, amount: amount },
            success: function (response) {
                ele.notify("Cập nhật thành công", {
                    position: "top center",
                    className: "success",
                });
            }
        });
    });

    //-------------------------------------------------------------------------------------

    // $(document).on('click', '.add-attr', function () {
    //     // $('.add-variant').remove();
    //     // let addNewAttr = `
    //     //     <div class="form-group" style="margin-top: 50px">
    //     //         <label for="new_attribute"
    //     //             class="control-label col-md-3 col-sm-3 col-xs-6">Name/Value</label>
    //     //         <input name="attribute_name[]" type="text" value="" style="width:100px" class="btn btn-default">
    //     //         <input name="attribute_value[]" type="text" value="" class="my-tagify btn btn-default"
    //     //             style="width:200px">
    //     //         <button class="btn btn-danger btn-del-attr" type="button"> Delete</button>
    //     //     </div>
    //     // `;
    //     // $('.add-all-attr').append(addNewAttr);
    //     let ele = $(this);
    //     $('.attr-variant').remove();
    //     let url = $(this).data('url-attr');
    //     let id = $("input[name=id]").val();
    //     let qryString = $("#this-form-add-attr").serialize();
    //     url = url + '?' + qryString;
    //     let attributeName = $("input[name='attribute_names[]']").map(function () { return $(this).val(); }).get();
    //     let attributeValue = $("input[name='attribute_values[]']").map(function () { return $(this).val(); }).get();
    //     let attributeIds = $("input[name='attribute_ids[]']").map(function () { return $(this).val(); }).get();
    //     let jsonName = JSON.stringify(attributeName);
    //     let jsonValue = JSON.stringify(attributeValue);
    //     let jsonId = JSON.stringify(attributeIds);
    //     // console.log(jsonValue);
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         data: { jsonName: jsonName, jsonValue: jsonValue, jsonId: jsonId, id: id },
    //         success: function (response) {
    //             $('.child-attr').remove();
    //             $('.add-new-attr').append(response);
    //             // let myTagify = document.querySelectorAll('.my-tagify');
    //             // new Tagify(myTagify[myTagify.length - 1])
    //             ele.notify("Thêm mới thuộc tính thành công", {
    //                 position: "top center",
    //                 className: "success",
    //             });
    //         },
    //         error: function (response) {
    //             // alert("Nhập đẩy đủ các trường");
    //         }
    //     });

    // });

    // $(document).on('change', '.attr-name', function (e) {
    //     e.preventDefault();
    //     let ele = $(this);
    //     let url = $(this).data('url-update-name');
    //     let id = $(this).siblings(".input-id-hidden").data('id');
    //     let attributeName = $(this).val();
    //     url = url + '?id=' + id + '&attribute_name=' + attributeName;
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         success: function (response) {
    //             // console.log(response);
    //             ele.notify("Cập nhật thành công", {
    //                 position: "top center",
    //                 className: "success",
    //             });
    //         }
    //     });
    // });
    // $(document).on('change', '.attr-value', function (e) {
    //     e.preventDefault();
    //     let ele = $(this);
    //     $('.attr-variant').remove();
    //     let url = $(this).data('url-update-value');
    //     let id = $(this).siblings(".input-id-hidden").data('id');
    //     let productId = $("input[name=id]").val();
    //     let attributeValue = $(this).val();
    //     // url = url + '?id=' + id;
    //     let jsonValue = JSON.stringify(attributeValue);
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         data: { id: id, jsonValue: jsonValue, productId: productId },
    //         dataType: 'json',
    //         success: function (response) {
    //             console.log(response);
    //             ele.parent().notify("Thay đổi thành công, Hãy cập nhật lại giá", {
    //                 position: "top center",
    //                 className: "success",
    //             });
    //         }
    //     });
    // });
    // $(document).on('click', '.btn-del-attr', function (e) {
    //     e.preventDefault();
    //     $(this).parent().remove();
    //     $('.attr-variant').remove();
    //     let url = $(this).data('url-delete');
    //     let id = $(this).siblings(".input-id-hidden").data('id');
    //     url = url + '?id=' + id;
    //     // console.log(url);
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         // data: { id: id },
    //         success: function (response) {
    //             // console.log(response);
    //         }
    //     });
    // });

    // // $(document).on('click', '.save-attr', function (e) {
    // //     e.preventDefault();
    // //     $('.add-variant').remove();
    // //     let url = $(this).data('url-add-attr');
    // //     let id = $("input[name=id]").val();
    // //     let attribute_name = $("input[name='attribute_name[]']").map(function () { return $(this).val(); }).get();
    // //     let attribute_value = $("input[name='attribute_value[]']").map(function () { return $(this).val(); }).get();
    // //     let jsonName = JSON.stringify(attribute_name);
    // //     let jsonValue = JSON.stringify(attribute_value);

    // //     let urlAction = $('#this-form-add-attr').attr('action');
    // //     let qryString = $("#this-form-add-attr").serialize();
    // //     url = urlAction + '?' + qryString;
    // //     $('.attr-variant').remove();
    // //     // console.log(urlAction + '?' + qryString);
    // //     $.ajax({
    // //         type: "get",
    // //         url: url,
    // //         success: function (response) {
    // //             $('.add-all-variant').append(response);
    // //         },
    // //         error: function (response) {
    // //             // alert("Nhập đẩy đủ các trường");
    // //         }
    // //     });
    // // });
    // $(document).on('click', '.make-variant', function (e) {
    //     e.preventDefault();
    //     $('.attr-variant').remove();
    //     let ele = $(this);
    //     let url = $(this).data('url-make-variant');
    //     let productId = $("input[name=id]").val();
    //     url = url + '?id=' + productId;
    //     console.log(url);
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         success: function (response) {
    //             $('.add-all-variant').append(response);
    //             ele.notify("Đã làm mới biến thể, hãy cập nhật lại giá", {
    //                 position: "top center",
    //                 className: "success",
    //             });
    //         }
    //     });
    // })

    // $(document).on('change', '.price-variant', function (e) {
    //     e.preventDefault();
    //     let ele = $(this);
    //     price = $(this).val();
    //     url = $(this).data('url-update-price');
    //     let idVariant = $(this).siblings("input[name=id_combination]").val();
    //     $.ajax({
    //         type: "get",
    //         url: url,
    //         data: { idVariant: idVariant, price: price },

    //         success: function (response) {
    //             ele.notify("Cập nhật thành công", {
    //                 position: "right center",
    //                 className: "success",
    //             });
    //         }
    //     });
    // })
});
