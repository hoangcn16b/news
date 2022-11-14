<div class="one-attr-val">
    <input name="attribute_values[]" style="margin-botton:10px;margin-top:10px" type="text"
        class="btn btn-default attr-value" data-url-update-value="{{ route('product/updateAttributeValue') }}"
        value="">
    <button class="btn btn-warning btn-del-attr-val" type="button"
        data-url-delete-val="{{ route('product/deleteAttributeValue') }}"> Delete
        Value</button>
    <input type="hidden" name="id-attr-val" value="{{ $newId }}">
</div>
