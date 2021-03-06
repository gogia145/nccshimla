<?php
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
<?php

wp_head(); ?>
</head>
	<body>
<header class="site-header">
	<div class="top-header">
		<div class="container">
			<div class="top-header-text text-center">
				ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
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
				</div>
				
				<div class="col-sm-8 col-xs-12">
					<div class="lead-navigation-outer">
					<?php wp_nav_menu('main-menu');?>
					</div>
				</div>
			</div>
		</div>
	</div>
</header>
