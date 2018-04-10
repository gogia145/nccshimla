<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.2
 */
?>
<footer class="site-footer">
	<div class="container">
		<div class="footer-text text-center">
			Copyright &copy; All Rights Reserved.
		</div>
	</div>
</footer>


<!-- JQuery Declaration -->


<?php wp_footer(); ?>
<script>
	$('.leader-slider').owlCarousel({
		navigation : false, 
		slideSpeed : 300,
		singleItem:true,
		items:1,
		autoPlay:1000
	  
 
      // "singleItem:true" is a shortcut for:
      // items : 1, 
      // itemsDesktop : false,
      // itemsDesktopSmall : false,
      // itemsTablet: false,
      // itemsMobile : false
})
</script>
</body>
</html>