<?php
restrict_user_login();
session_start();
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Seventeen
 * @since 1.0
 * @version 1.0
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?> class="no-js no-svg">
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<title><?php bloginfo('name');?></title>
<?php wp_head(); ?>

</head>
	<body <?php body_class()?>>
<header class="site-header">
	<div class="top-header">
		<div class="ticker">
            <div class="list-wrpaaer">
                <ul id="top_header_marquee">
					<li class="list-item"><a href="">  Andra Pradesh </a></li>
					<li class="list-item"><a href="">  Arunachal Pradesh </a> </li>
					<li class="list-item"><a href="">  Assam </a></li>
					<li class="list-item"> <a href=""> Bihar </a></li>
					<li class="list-item"><a href="">  Chhattisgarh </a></li>
					<li class="list-item"><a href="">  Goa </a></li>
					<li class="list-item"><a href="">  Gujarat </a></li>
					<li class="list-item"><a href="">  Haryana </li>
					<li class="list-item"><a href="">  Himachal Pradesh </a></li>
					<li class="list-item"><a href="">  Andra Pradesh </a></li>
					<li class="list-item"><a href="">  Arunachal Pradesh </a> </li>
					<li class="list-item"><a href="">  Assam </a></li>
					<li class="list-item"><a href="">  Bihar </a></li>
					<li class="list-item"><a href="">  Chhattisgarh </a></li>
					<li class="list-item"><a href="">  Goa </a> </li>
					<li class="list-item"><a href="">  Gujarat </a></li>
					<li class="list-item"><a href="">  Haryana </a></li>
					<li class="list-item"><a href="">  Himachal Pradesh </a></li> 
                </ul>
            </div>
        </div>

	</div>
	
	<div class="lead-header">
		<div class="container">
			<div class="row">
				<div class="logo-container col-sm-4 col-xs-12">
					<a href="">
						<img src="<?php echo theme_url; ?>/images/logo.png" alt="site-logo"/>
						<span class="logo-text"> National Cadet Corps</span>
					</a>
					
					<div id="nav-toggle" class="toogle-menu">
						<span></span>
						<span></span>
						<span></span>
						<span></span>
					</div>
				</div>
				
				<div class="col-sm-8 col-xs-12">
					<div class="lead-navigation-outer" id="mobile-menu">
						<?php wp_nav_menu('main-menu');?>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
