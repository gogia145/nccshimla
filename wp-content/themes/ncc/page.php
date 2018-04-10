<?php get_header();

?>
<section class="page-title">
	<div class="container">
		<h1 class="page-title-text"><?php the_title();?></h1>
	</div>
</section>
<section class="enrolment-form-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-xs-12">
			<?php while(have_posts()):the_post();?>
			<?php the_content();?>
			<?php endwhile;?>
			</div>
			
			<div class="col-sm-4 col-xs-12">
			<h2 class="main-title"><i class="fa fa-newspaper-o"></i> Lattest News</h2>
				<div class="lattest-new-inner">

						<ul>
							<li>
								<a href="">
									<span class="title"> Today I choose lifes, Every moon when discovery time.</span>
									<span class="date"> Augost 25, 2018</span>
								</a>
							</li>
							
							<li>
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
						</ul>
						<div class="text-right readmore">
							<a href=""> Read more <i class="fa fa-angle-double-right" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
	</div>
</section>
<?php get_footer();?>