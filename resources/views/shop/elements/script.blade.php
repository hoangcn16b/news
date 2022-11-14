 <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
 <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>
    <![endif]-->
 <script src="{{ asset('shop/assets/plugins/jquery.min.js') }}" type="text/javascript"></script>
 <script src="{{ asset('shop/assets/plugins/jquery-migrate.min.js') }}" type="text/javascript"></script>
 <script src="{{ asset('shop/assets/plugins/bootstrap/js/bootstrap.min.js') }}" type="text/javascript"></script>
 <script src="{{ asset('shop/assets/corporate/scripts/back-to-top.js') }}" type="text/javascript"></script>
 <script src="{{ asset('shop/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js') }}" type="text/javascript">
 </script>
 <!-- END CORE PLUGINS -->

 <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
 <script src="{{ asset('shop/assets/plugins/fancybox/source/jquery.fancybox.pack.js') }}" type="text/javascript">
 </script><!-- pop up -->
 <script src="{{ asset('shop/assets/plugins/owl.carousel/owl.carousel.min.js') }}" type="text/javascript"></script>
 <!-- slider for products -->
 <script src='{{ asset('shop/assets/plugins/zoom/jquery.zoom.min.js') }}' type="text/javascript"></script><!-- product zoom -->
 <script src="{{ asset('shop/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js') }}" type="text/javascript">
 </script>
 <!-- Quantity -->
 <script src="{{ asset('shop/assets/plugins/uniform/jquery.uniform.min.js') }}" type="text/javascript"></script>
 <script src="{{ asset('shop/assets/plugins/rateit/src/jquery.rateit.js') }}" type="text/javascript"></script>

 <script src="{{ asset('shop/assets/corporate/scripts/layout.js') }}" type="text/javascript"></script>
 <script type="text/javascript">
     jQuery(document).ready(function() {
         Layout.init();
         Layout.initOWL();
         Layout.initTwitter();
         Layout.initImageZoom();
         Layout.initTouchspin();
         Layout.initUniform();
     });
 </script>
