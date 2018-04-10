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

<div class="html-overlay"></div>


<section class="lattest-portfilio-wrapper">
	<div class="lattest-portfilio-title text-center">
		<h2 class="main-title"> Lattest Activity</h2>
	</div>
	<div class="center" id="lattest_portfilio_silder">
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-1.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-2.jpg" />
			</div>
		</div>
		
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-3.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-4.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-5.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-6.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-7.jpg" />
			</div>
		</div>
		
		<!--<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-8.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-9.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-10.jpg" />
			</div>
		</div>
		
		<div class="porifilio-item">
			<div class="porifilio-thumb">
				<img src="<?php echo theme_url; ?>/images/ncc-slider-img/ncc-slider-11.jpg" />
			</div>
		</div> -->
	</div>
</section>




<footer class="site-footer">
<div class="top-footer">
	<div class="container">
		<div class="row">
		<?php echo get_sidebar('Footer Text Widget 1');?>
		<?php dynamic_sidebar('Footer Quick Link');?>
		<?php dynamic_sidebar('Footer Latest News');?>
		<?php /*?>
			<div class="col-md-4 col-sm-5 col-xs-12 footer-about-us">
				<div class="logo-container">
					<a href="">
						<img src="<?php echo theme_url; ?>/images/logo.png" alt="site-logo"/>
						<span class="logo-text"> National Cadet Corps</span>
					</a>
				</div>
				
				<p> Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore 
				veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem...</p>
				
			</div>
			
			<div class="col-md-3 col-sm-3 col-xs-12 footer-quick-link-outer">
				<h2 class="footer-link"> Quick Link</h2>
				<ul class="link">
					<li><a href=""> About units </a></li>
					<li><a href=""> FAQ </a></li>
					<li><a href=""> ENROLMENT </a></li>
					<li><a href=""> Login </a></li>
					<li><a href=""> Contact Us </a></li>
				</ul>
			</div>
			
			<div class="col-md-5 col-sm-4 col-xs-12 footer-lattest-news-outer">
				<h2 class="footer-link"> LATTEST NEWS </h2>
				<div class="lattest-new-inner">
						<ul>
							<li>
								<a href="">
									<span class="title"> Today I choose lifes, Every moon when discovery time.</span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title">  Dependent certainty off discovery times tolerably offending. </span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title"> Ham for attention is remainde sometime addition recommes Direction has strangers now believing</span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title"> Today I choose lifes, Every moon when discovery time.</span>
								</a>
							</li>
						</ul>
					</div>
			</div>
			<?php */?>
		</div>
	</div>
</div>
<div class="bottom-footer">
	<div class="container">
		<div class="footer-text text-center">
			Copyright &copy; All Rights Reserved.
		</div>
	</div>
</div>	
	
</footer>




<?php wp_footer(); ?>


<script>

jQuery('.center').slick({
  centerMode: true,
  centerPadding: '60px',
  slidesToShow:5,
  dots: true,
  autoplay: true,
  autoplaySpeed:2000,
  responsive: [
    {
      breakpoint: 768,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow:3
      }
    },
    {
      breakpoint: 480,
      settings: {
        arrows: false,
        centerMode: true,
        centerPadding: '40px',
        slidesToShow: 2
      }
    }
  ]
});

// Lead Sldier

	jQuery('.leader-slider').slick({
		dots: true,
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		autoplay: true,
		autoplaySpeed:3000,
		adaptiveHeight: true
	});

	// Top Header Marquee
	
    jQuery('#top_header_marquee').marquee({direction: 'horizontal', delay: 0, timing: 15});
	

	// For Responsive Navigation Navigation 

	jQuery("#nav-toggle").click(function(event){
		event.stopPropagation();
		jQuery(this).toggleClass("open");
		jQuery("#mobile-menu").toggleClass("open-menu");
		jQuery(".html-overlay").toggleClass("active");
		jQuery("body").toggleClass("overflow-hidden");
	});

	jQuery("#mobile-menu").click(function(event){
		event.stopPropagation();
	});

	jQuery(".html-overlay").click(function(event){
		event.stopPropagation();
		jQuery("#nav-toggle").removeClass("open");
		jQuery("#mobile-menu").removeClass("open-menu");
		jQuery(".html-overlay").removeClass("active");
		jQuery("body").removeClass("overflow-hidden");
	});


</script>






</body>
</html>