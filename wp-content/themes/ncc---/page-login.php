<?php get_header();
/*
Template Name: Login
*/
?>
<section class="page-title">
	<div class="container">
		<h1 class="page-title-text"> Login Page</h1>
	</div>
</section>

<section class="login-form-wrapper">
	<div class="container">
		<div class="login-page-wrapper">
			<div class="form-group">
				<label> Login As:</label>
				<select class="form-control">
				  <option>Groups</option>
				  <option>Units</option>
				  <option> Colleges</option>
				  <option>School</option>
				</select>
			</div>	
			<div class="form-group">
				<label> Email-ID </label>
				<input type="email" class="form-control" placeholder="Email-ID ">
			</div>
			
			<div class="form-group">
				<label> Password</label>
				<input type="Password" class="form-control" placeholder="Password">
			</div>
			

			<div class="form-group text-center">
				<button class="btn btn-primary"> Login</button>
			</div>	
		</div>
	</div>
</section>
<?php get_footer();?>