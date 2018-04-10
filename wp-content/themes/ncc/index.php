<?php get_header();?>
<?php include('inc/home-slider.php');?>
<section class="home-about-us-wrapper">
	<div class="container">
		<div class="row">
			
			<div class="col-sm-7 col-xs-12">
				<div class="about-us-content">
					<div class="section-title">
						<h2 class="main-title"> About Us</h2>
						<h5> These cases are perfectly simple and easy to distinguish emo enim ipsam voluptatem quia voluptas sit aspernatur.</h5>
					</div>
					<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore 
					veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia 
					consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, 
					adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
					
					<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,
					and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, 
					dislikes, or avoids pleasure itself.</p>
					
					
					<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia 
					consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
					
					
				</div>
			</div>
			
			<div class="col-sm-5 col-xs-12">
				<div class="right-about-inner-div">
					<div class="about-us-image-thumb text-right">
						<img src="<?php echo theme_url; ?>/images/about-us-img.jpg" />
					</div>
					<div class="about-quotes">
						<h4>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator.</h4>
						<h6 class="user-name"> Sri Manohar Parrikar, Hon'ble RM</h6>
					</div>
				</div>
				
			</div>
		</div>
		
		<div class="second-about-us-section">
			<div class="row">
			
				<div class="col-sm-7 col-xs-12 pull-right">
					<div class="about-us-content">
						<div class="section-title">
							<h2 class="main-title"> About Us</h2>
							<h5> These cases are perfectly simple and easy to distinguish emo enim ipsam voluptatem quia voluptas sit aspernatur.</h5>
						</div>
						<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore 
						veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia 
						consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, 
						adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>
						
						<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,
						and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, 
						dislikes, or avoids pleasure itself.</p>
						
						
						<p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia 
						consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>
						
						
					</div>
				</div>
				
				<div class="col-sm-5 col-xs-12 ">
					<div class="right-about-inner-div">
						<div class="about-us-image-thumb text-left">
							<img src="<?php echo theme_url; ?>/images/about-us-img.jpg" />
						</div>
						<div class="about-quotes">
							<h4>All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator.</h4>
							<h6 class="user-name"> Sri Manohar Parrikar, Hon'ble RM</h6>
						</div>
					</div>
					
				</div>
				
				
			</div>
		</div>
	</div>
</section>
<section class="lattest-news-wrapper">
		<div class="row">
			<div class="lattest-new-col">
				<div class="lattest-news-outer">
					<h2 class="main-title"> Lattest News</h2>
					
					<div class="lattest-new-inner">
						<ul>
						<?php $args = array(
								    'post_type'=> 'post','order'    => 'ASC');
								query_posts( $args );
								$i=1; while(have_posts()):the_post();?>
							<li>
								<a href="<?php echo get_permalink();?>">
									<span class="title"><?php the_title();?></span>
									<span class="date"><?php the_date();?></span>
								</a>
							</li>
							<?php endwhile; wp_reset_query();?>
							<!--<li>
								<a href="">
									<span class="title">  Dependent certainty off discovery times tolerably offending. </span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title"> Ham for attention is remainde sometime addition recommes Direction has strangers now believing</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title"> Today I choose lifes, Every moon when discovery time.</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							<li>
								<a href="">
									<span class="title">  Today I choose lifes, Every moon when discovery time.</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							<li>
								<a href="">
									<span class="title"> Today I choose lifes, Every moon when discovery time.</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							
							<li>
								<a href="">
									<span class="title">  Today I choose lifes, Every moon when discovery time.</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
						--></ul>

					</div>
				</div>
			</div>
			
			
			<div class="faq-outer">
				<div class="faq_inner">
					<h2 class="main-title"> Faq</h2>	
						<div class="faq-list-inner">
						<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
								<?php 
								$args = array(
								    'post_type'=> 'faq','order'    => 'ASC');
								query_posts( $args );
								$i=1; while(have_posts()):the_post();
								?>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingOne">
									<h4 class="panel-title">
									<a role="button" data-toggle="collapse" data-parent="#accordion" href="#<?php echo $i; ?>" aria-expanded="<?php if($i==1){echo 'true';}else{echo 'false';}?>" aria-controls="<?php echo $i; ?>">
									<?php the_title(); ?>
									</a>
									</h4>
								</div>
								<div id="<?php echo $i; ?>" class="panel-collapse collapse <?php if($i==1){echo 'in';}?>" role="tabpanel" aria-labelledby="headingOne">
									<div class="panel-body">
									<?php the_content();?>
									</div>
								</div>
							</div>
							<?php $i++; endwhile; wp_reset_query();?>
							<!--  <div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingTwo">
									<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
									When did National Cadet Corps Come into existence?
									</a>
									</h4>
								</div>
								<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
									<div class="panel-body">
									The National Cadets Corps came into existence under the National Cadet Corps Act XXXI of 1948 (passed in April, 1948; came into existence on 16th July, 1948). 
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading" role="tab" id="headingThree">
									<h4 class="panel-title">
									<a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
									What is the nature of the NCC Programme, whether compulsory or voluntary?
									</a>
									</h4>
								</div>
								<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
									<div class="panel-body">
									Voluntary.
									</div>
								</div>
							</div-->
						</div>
						</div>
				</div>
			</div>
		</div>
</section>
<?php get_footer();?>