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
		<div class="ncclogin_errors"></div>
		<form class="row" name="login_form" id="login_form" method="post">
			<div class="form-group">
				<label>Login As:</label>
				<select class="form-control" name="usergroup" id="usergroup">
				  <option value="group">Groups</option>
				  <option value="unit">Units</option>
				  <option value="college">  Colleges</option>
				  <option value="school">School</option>
				</select>
			</div>	
			<div class="form-group">
				<label> User Name </label>
				<input type="text" name="username" value="" class="form-control" placeholder="Email-ID ">
			</div>
			
			<div class="form-group">
				<label> Password</label>
				<input type="Password" name="pass" value="" class="form-control" placeholder="Password">
				
			</div>
			

			<div class="form-group text-center">
			<input type="hidden" name="url" value="<?php echo get_permalink();?>">
				<button class="btn btn-primary"> Login</button>
			</div>
			</form>	
		</div>
	</div>
</section>
<<script type="text/javascript">
<!--
jQuery(document).ready(function(){
/*	jQuery("#login_form").validate({
		rules : {
		username :"username",
		pass :"required",
		usergroup :"required",
		
		},
		messages : {
			username :"Enter User Name",
			pass :"Enter Password",
			usergroup :"Enter Cadet Name",
			
			
		},
		submitHandler : function (form) {
			login_form();
		}
	});*/
//function login_form(){
jQuery('#login_form').on('submit',function(e){
	e.preventDefault();
	var username =jQuery('form#login_form input[name=username]').val();
	var pass = jQuery('form#login_form input[name=pass]').val();
	var url = jQuery('form#login_form input[name=url]').val();
	var usergroup= jQuery('form#login_form  #usergroup option:selected' ).val();
	
	var data = {
			'action' : 'member_login',
			'username' : username,
			'pass': pass,
			'url' : url,
			'usergroup' : usergroup
			
		};
	//console.log(data);
	jQuery.post(ajaxurl, data, function (response) {
		//console.log(response);
		window.location.href = response;
		//console.log(response);
	//	var response_obj = jQuery.parseJSON(response);
		//console.log(response_obj.msg);
		
		/*if (response_obj.msg == 'sucess') {
			window.location.href = response_obj.url;
			}else if(response_obj.msg == 'error'){
			jQuery('.ncclogin_errors').html(response_obj.error_msg);
		}*/
		document.getElementById("login_form").reset();
	});
	
});
		
//		}	
})

//-->
</script>
<?php get_footer();?>