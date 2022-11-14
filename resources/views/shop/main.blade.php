<!DOCTYPE html>
<html lang="en">

<head>
    @include('shop.elements.head')
    <!-- Theme styles END -->
</head>

<!-- Body BEGIN -->

<body class="ecommerce">
    <!-- BEGIN STYLE CUSTOMIZER -->
    <div class="color-panel hidden-sm">
        <div class="color-mode-icons icon-color"></div>
        <div class="color-mode-icons icon-color-close"></div>
        <div class="color-mode">
            <p>THEME COLOR</p>
            <ul class="inline">
                <li class="color-red current color-default" data-style="red"></li>
                <li class="color-blue" data-style="blue"></li>
                <li class="color-green" data-style="green"></li>
                <li class="color-orange" data-style="orange"></li>
                <li class="color-gray" data-style="gray"></li>
                <li class="color-turquoise" data-style="turquoise"></li>
            </ul>
        </div>
    </div>
    <!-- END BEGIN STYLE CUSTOMIZER -->

    <!-- BEGIN TOP BAR -->
    @include('shop.elements.pre-header')
    <!-- END TOP BAR -->

    <!-- BEGIN HEADER -->
    @include('shop.elements.header')
    <!-- Header END -->

    @yield('content')

    <!-- BEGIN BRANDS -->
    @include('shop.elements.brand')
    <!-- END BRANDS -->

    <!-- BEGIN STEPS -->
    @include('shop.elements.step')
    <!-- END STEPS -->

    <!-- BEGIN PRE-FOOTER -->
    {{-- @include('shop.elements.pre-footer') --}}
    <!-- END PRE-FOOTER -->

    <!-- BEGIN FOOTER -->
    @include('shop.elements.footer')
    <!-- END FOOTER -->

    <!-- BEGIN fast view of a product -->
    
    <!-- product pop up -->

    <!-- END fast view of a product -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    @include('shop.elements.script')
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
