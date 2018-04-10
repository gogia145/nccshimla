<?php
define("theme_url",get_bloginfo('template_url'));
/* adding css*/
function add_css(){
wp_enqueue_style('bootstrap',theme_url.'/css/bootstrap.min.css');
wp_enqueue_style('Open-Sans','https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,800');
wp_enqueue_style('Montserrat','https://fonts.googleapis.com/css?family=Montserrat:400,500,500i,600,700,800"');

wp_enqueue_style('font-awesome','https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
wp_enqueue_style('owl.carousel',theme_url.'/css/owl.carousel.css');
wp_enqueue_style('custom-style',theme_url.'/css/custom-style.css');
}
add_action('wp_head','add_css');

/*adding js*/
function add_head_js(){
wp_enqueue_script('jQuery-min','https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js');
wp_enqueue_script('bootstrap',theme_url.'/js/bootstrap.min.js');
wp_enqueue_script('owl.carousel',theme_url.'/js/owl.carousel.min.js');
}
add_action('wp_footer','add_head_js');
/*adding menu support for theme*/
register_nav_menu('main-menu','main menu');
/*Add post thumbnail suppport*/
add_theme_support('post-thumbnails');