<section class="lead-slider-wrapper">
	<div class="leader-slider owl-carousel">
	<?php 
	$args = array(
    'post_type'=> 'header-slider','order'    => 'ASC');
query_posts( $args );
while(have_posts()):the_post();
?>
		<div class="item">
		<?php if (has_post_thumbnail( $post->ID ) ): ?>
  <?php $image = wp_get_attachment_image_src( get_post_thumbnail_id( $post->ID ), 'full' ); ?>
  	<div class="slider-item" style="background:url('<?php echo $image[0]; ?>')">
  	</p>
<?php endif; ?>
				<div class="intro-text-outer">
					<div class="intro-text-inner text-center">
						<h2 ><?php the_title();?></h2>
                       <?php the_content();?>
						
                    
					</div>
				</div>
			</div>
		</div>
		<?php endwhile; wp_reset_query(); ?>
		<!--div class="item">
			<div class="slider-item" style="background:url('<?php echo theme_url; ?>/images/slider-three.jpg')">
				<div class="intro-text-outer">
					<div class="intro-text-inner text-center">
						<h2 >The <span> Feature </span> of Financing </h2>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when.
						<br> looking at its layout The point of using Lorem Ipsum is that</p>
						<div class="slide-buttons">
							<a href="#" class="btn btn-primary">Get in touch</a>
						</div>
                    
					</div>
				</div>
			</div>
		</div>
		
		<div class="item">
			<div class="slider-item" style="background:url('<?php echo theme_url; ?>/images/slider-two.jpg')">
				<div class="intro-text-outer">
					<div class="intro-text-inner text-center">
						<h2 >The <span> Feature </span> of Financing </h2>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when.
						<br> looking at its layout The point of using Lorem Ipsum is that</p>
						<div class="slide-buttons">
							<a href="#" class="btn btn-primary">Get in touch</a>
						</div>
                    
					</div>
				</div>
			</div>
		</div>
		
		<div class="item">
			<div class="slider-item" style="background:url('<?php echo theme_url; ?>/images/slider-four.jpg')">
				<div class="intro-text-outer">
					<div class="intro-text-inner text-center">
						<h2 >The <span> Feature </span> of Financing </h2>
                        <p>It is a long established fact that a reader will be distracted by the readable content of a page when.
						<br> looking at its layout The point of using Lorem Ipsum is that</p>
						<div class="slide-buttons">
							<a href="#" class="btn btn-primary">Get in touch</a>
						</div>
                    
					</div>
				</div>
			</div>
		</div-->
	
	
	</div>
	
</section>
