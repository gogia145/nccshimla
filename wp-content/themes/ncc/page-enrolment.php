<?php get_header();
/*
Template Name: Enrolment
*/
?>

<section class="page-title">
	<div class="container">
		<h1 class="page-title-text"> Enrolment Form</h1>
	</div>
</section>
<section class="enrolment-form-wrapper">
	<div class="container">
		<div class="row">
			<div class="col-sm-8 col-xs-12">
<form class="row" name="enrolement_form" id="enrolement_form" method="post">
<div class="form-group col-sm-6 col-xs-12">
	<label>Regimental No. <span class="required">*</span></label>
	<input type="text" name="_cadet_regemental_no" value="" class="form-control" placeholder="Regimental Number">
</div>
<div class="form-group col-sm-6 col-xs-12">
	<label> Cadet Rank  <span class="required">*</span></label>
	<input type="text" name="_cadet_rank" value="" class="form-control" placeholder="Cadet Rank" placeholder="Cadet Rank">
</div>
<div class="form-group col-sm-6 col-xs-12">
	<label>Name of cadet <span class="required">*</span></label>
	<input type="text" class="form-control" name="_cadet_name" value="" placeholder="Name of cadet">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>Father Name <span class="required">*</span></label>
	<input type="text" name="_cadet_father_name" value="" class="form-control" placeholder="Father Name">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>Mothers Name <span class="required">*</span></label>
	<input type="text" name="_cadet_mother_name" value="" class="form-control" placeholder="Mothers Name">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>Date of birth <span class="required">*</span></label>
	<input type="text" id="dob" name="_cadet_dob" value="" class="form-control" placeholder="Date of birth">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>Full Home Address <span class="required">*</span></label>
	<input type="text" name="_cadet_address" value="" class="form-control" placeholder="Full Home Address">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label> Correspondence Address  <span class="required">*</span></label>
	<input type="text" name="_cadet_corespondent_address" value="" class="form-control" placeholder="Correspondence Address ">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>  Addhar Number <span class="required">*</span></label>
	<input type="text" name="_cadet_adhaar_no" value="" class="form-control" placeholder="Addhar Number">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label>  Bank Account Number <span class="required">*</span></label>
	<input type="text" name="_cadet_bank_ac" value="" class="form-control" placeholder="Bank Account Number">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label> Bank IFSE Code  <span class="required">*</span></label>
	<input type="text" name="_cadet_bank_ifsc" value="" class="form-control" placeholder="Bank IFSE Code ">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label> Mobile Number  <span class="required">*</span></label>
	<input type="text" name="_cadet_mobile" value="" class="form-control" placeholder="Mobile Number ">
</div>

<div class="form-group col-sm-6 col-xs-12">
	<label> Email-ID  <span class="required">*</span></label>
	<input type="text" name="_cadet_email" value="" class="form-control" placeholder="Email-ID ">
</div>
<?php 
if(isset($_SESSION['usergroup'])){
	if($_SESSION['usergroup']=='college'){
		$institutions = array('hierarchical' => 1, 'show_option_none' => '','hide_empty' => 0, 'parent' => 3,'taxonomy' => 'institution' );
	}elseif ($_SESSION['usergroup']=='school'){
		$institutions = array('hierarchical' => 1, 'show_option_none' => '','hide_empty' => 0, 'parent' => 4,'taxonomy' => 'institution' );
	}
?>
<div class="form-group col-sm-6 col-xs-12">
	<label> Select Institution Name<span class="required">*</span></label>
<?php 
$subcats = get_categories($institutions);?>
	<select class="form-control" name="institution_type">
		<?php foreach($subcats as $subcat):?>
		  <option value="<?php echo $subcat->term_id;?>"><?php echo $subcat->name;?></option>
		  <?php endforeach;?>
		</select>
</div>
<?php } ?>
<div class="form-group col-sm-12 col-xs-12 text-center">
						<button class="btn btn-primary"> Submit</button>
					</div>		
				</form>
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