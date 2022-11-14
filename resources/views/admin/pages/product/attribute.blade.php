<div class="form-group child-attr" style="margin-top: 50px">
    <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Name</label>

    <input name="attribute_names[]" type="text" value="" class="btn btn-default attr-name"
        style="margin-botton:10px" data-url-update-name="{{ route('product/updateAttributeName') }}"
        data-id-update-name="{{ $newId }}">

    <button class="btn btn-danger btn-del-attr-all" type="button"
        data-url-delete-attr="{{ route('product/deleteAttribute') }}" data-id-delete-attr="{{ $newId }}">
        Delete Attribute</button>

    <label for="name" class="control-label col-md-3 col-sm-3 col-xs-12">Value</label>
    <div class="input-group input-group-sm mb-3 child-attr-val" style="margin-top: 10px">
        <button class="btn btn-primary btn-add-attr-val" type="button"
            data-url-add-attr-val="{{ route('product/addAttributeValue') }}">
            New
            Value</button>
        <input type="hidden" name="id-attr" value="{{ $newId }}">
    </div>
</div>
