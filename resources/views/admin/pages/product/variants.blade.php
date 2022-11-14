@php
$i = 1;
$labelClass = 'control-label col-md-3 col-sm-3 col-xs-12';

@endphp
<div class="every-attr">
    {{ Form::label('add_attribute_odd', 'List Variants', ['class' => $labelClass]) }}
    {{ Form::label('add_attribute_name', 'Variant Name', ['class' => $labelClass]) }}
    {{ Form::label('add_attribute_price', 'Price', ['class' => $labelClass, 'style' => 'text-align:center']) }}
    {{ Form::label('add_attribute_amount', 'Amount', ['class' => $labelClass]) }}
    @foreach ($listVariant as $variant)
        <div class="form-group attr-variant" style="margin-top: 25px;margin-bottom:20px">
            {{ Form::label('add_attribute', $i++, ['class' => $labelClass]) }}
            <input class="btn btn-default" type="text" value="{{ $variant['name'] }}" readonly>

            <input type="text" name="price" class="btn btn-default price-variant" style="width:100px"
                id="currency-field" pattern="[0-9][0-9,]*[0-9]" data-type="currency"
                data-url-update-price="{{ route('product/changePrice') }}"
                value="{{ number_format(((float) $variant['price']), 0, '.', ',') }}">

            <input type="text" name="amount" class="btn btn-default amount-variant" style="width:100px"
                id="currency-field" pattern="[0-9][0-9,]*[0-9]" data-type="currency"
                data-url-update-amount="{{ route('product/changeAmount') }}" value="{{ $variant['amount'] }}">

            <input type="hidden" name="id_combination" value="{{ $variant['attribute_value_id'] }}">
        </div>
    @endforeach
</div>

<script type="text/javascript">
    //currency
    $("input[data-type='currency']").on({
        keyup: function() {
            formatCurrency($(this));
        },
        blur: function() {
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
        if (input_val === "") {
            return;
        }

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
</script>
