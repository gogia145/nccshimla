<?php
define("theme_url",get_bloginfo('template_url'));
/* adding css*/
function add_css(){
wp_enqueue_style('bootstrap',theme_url.'/css/bootstrap.min.css');
wp_enqueue_style('Open-Sans','https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,800');
wp_enqueue_style('Montserrat','https://fonts.googleapis.com/css?family=Montserrat:400,500,500i,600,700,800"');

wp_enqueue_style('font-awesome','https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css');
wp_enqueue_style('datepicker',theme_url.'/css/datepicker.css');
//wp_enqueue_style('owl.carousel',theme_url.'/css/owl.carousel.css');
wp_enqueue_style('custom-style',theme_url.'/css/custom-style.css');
}
add_action('wp_head','add_css');

/*adding js*/
function add_head_js(){
//wp_enqueue_script('jquery');
wp_enqueue_script('jquery');
wp_enqueue_script('https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js');
wp_enqueue_script('bootstrap',theme_url.'/js/bootstrap.min.js');
wp_enqueue_script('theme-scripts',theme_url.'/js/theme-scripts.js');
wp_enqueue_script('jquery.validate',theme_url.'/js/jquery-validation/jquery.validate.min.js');
wp_enqueue_script('bootstrap-datepicker',theme_url.'/js/jquery-validation/datepicker.js');
}
add_action('wp_enqueue_scripts','add_head_js');
/*adding menu support for theme*/
register_nav_menu('main-menu','main menu');
/*Add post thumbnail suppport*/
add_theme_support('post-thumbnails');

/* Register students */

function register_cadet(){
$labels = array(
		'name'               => _x( 'Cadets', 'post type general name', 'your-plugin-textdomain' ),
		'singular_name'      => _x( 'Cadet', 'post type singular name', 'your-plugin-textdomain' ),
		'menu_name'          => _x( 'Cadet', 'admin menu', 'your-plugin-textdomain' ),
		'name_admin_bar'     => _x( 'Cadet', 'add new on admin bar', 'your-plugin-textdomain' ),
		'add_new'            => _x( 'Add New', 'cadet', 'your-plugin-textdomain' ),
		'add_new_item'       => __( 'Add New Cadet', 'your-plugin-textdomain' ),
		'new_item'           => __( 'New Cadet', 'your-plugin-textdomain' ),
		'edit_item'          => __( 'Edit Cadets', 'your-plugin-textdomain' ),
		'view_item'          => __( 'View Cadets', 'your-plugin-textdomain' ),
		'all_items'          => __( 'All Cadet', 'your-plugin-textdomain' ),
		'search_items'       => __( 'Search Cadets', 'your-plugin-textdomain' ),
		'parent_item_colon'  => __( 'Parent Cadets:', 'your-plugin-textdomain' ),
		'not_found'          => __( 'No Cadet found.', 'your-plugin-textdomain' ),
		'not_found_in_trash' => __( 'No Cadet found in Trash.', 'your-plugin-textdomain' )
	);

	$args = array(
		'labels'             => $labels,
        'description'        => __( 'Description.', 'cadet' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'Cadet' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => null,
		'supports'           => array( 'title', 'author', 'thumbnail' )
	);

	register_post_type( 'cadet', $args );

/*add institution*/
//function add_institution(){
// Add new taxonomy, NOT hierarchical (like tags)
	$labels = array(
		'name'                       => _x( 'institution', 'taxonomy general name', 'textdomain' ),
		'singular_name'              => _x( 'institution', 'taxonomy singular name', 'textdomain' ),
		'search_items'               => __( 'Search institution', 'textdomain' ),
		'popular_items'              => __( 'institution', 'textdomain' ),
		'all_items'                  => __( 'All institution', 'textdomain' ),
		'parent_item'                => null,
		'parent_item_colon'          => null,
		'edit_item'                  => __( 'Edit Institution', 'textdomain' ),
		'update_item'                => __( 'Update Institution', 'textdomain' ),
		'add_new_item'               => __( 'Add New Institution', 'textdomain' ),
		'new_item_name'              => __( 'New Institution Name', 'textdomain' ),
		'separate_items_with_commas' => __( 'Separate Institution with commas', 'textdomain' ),
		'add_or_remove_items'        => __( 'Add or remove Institution', 'textdomain' ),
		'choose_from_most_used'      => __( 'Choose from the most used Institution', 'textdomain' ),
		'not_found'                  => __( 'No Institution found.', 'textdomain' ),
		'menu_name'                  => __( 'Institution', 'textdomain' ),
	);

	$args = array(
		'hierarchical'          => false,
		'labels'                => $labels,
		'show_ui'               => true,
		'show_admin_column'     => true,
		'update_count_callback' => '_update_post_term_count',
		'query_var'             => true,
		'rewrite'               => array( 'slug' => 'institutions' ),
	);

	register_taxonomy( 'institution', 'cadet', $args );
}

add_action('init','register_cadet');

/**/
add_action( 'add_meta_boxes', 'add_cadet_metaboxes' );


function add_cadet_metaboxes() {
	add_meta_box(
		'wpt_cadet_details',
		'Cadel details',
		'wpt_cadet_details',
		'cadet',
		'normal',
		'default'
	);
}
/**
 * Output the HTML for the metabox.
 */
function wpt_cadet_details() {
	global $post;
	// Nonce field to validate form request came from current site
	wp_nonce_field( basename( __FILE__ ), 'cadet_fields' );
	// Get the location data if it's already been entered
	$cadet_regemental_no = get_post_meta( $post->ID, '_cadet_regemental_no', true );
	$cadet_rank = get_post_meta( $post->ID, '_cadet_rank', true );
	$cadet_father_name = get_post_meta( $post->ID, '_cadet_father_name', true );
	$cadet_mother_name = get_post_meta( $post->ID, '_cadet_mother_name', true );
	$cadet_dob = get_post_meta( $post->ID, '_cadet_dob', true );
	$cadet_address = get_post_meta( $post->ID, '_cadet_address', true );
	$cadet_corespondent_address = get_post_meta( $post->ID, '_cadet_corespondent_address', true );
	$cadet_adhaar_no = get_post_meta( $post->ID, '_cadet_adhaar_no', true );
	$cadet_bank_ac = get_post_meta( $post->ID, '_cadet_bank_ac', true );
	$cadet_bank_ifsc = get_post_meta( $post->ID, '_cadet_bank_ifsc', true );
	$cadet_mobile = get_post_meta( $post->ID, '_cadet_mobile', true );
	$cadet_email = get_post_meta( $post->ID, '_cadet_email', true );	
echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Regimental No. <span class="required">*</span></label>
	<input type="text" name="_cadet_regemental_no" value="' . esc_textarea( $cadet_regemental_no )  . '" class="form-control placeholder="Regimental Number">
</div>';
echo '<div class="form-group col-sm-6 col-xs-12">
	<label> Cadet Rank  <span class="required">*</span></label>
	<input type="text" name="_cadet_rank" value="' . esc_textarea( $cadet_rank )  . '" class="form-control" placeholder="Cadet Rank" placeholder="Cadet Rank">
</div>';
echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Name of cadet <span class="required">*</span></label>
	<input type="text" class="form-control" placeholder="Name of cadet">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Father Name <span class="required">*</span></label>
	<input type="text" name="_cadet_father_name" value="' . esc_textarea( $cadet_father_name )  . '" class="form-control" placeholder="Father Name">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Mothers Name <span class="required">*</span></label>
	<input type="text" name="_cadet_mother_name" value="' . esc_textarea( $cadet_mother_name )  . '" class="form-control" placeholder="Mothers Name">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Date of birth <span class="required">*</span></label>
	<input type="text" name="_cadet_dob" value="' . esc_textarea( $cadet_dob )  . '" class="form-control" placeholder="Date of birth">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>Full Home Address <span class="required">*</span></label>
	<input type="text" name="_cadet_address" value="' . esc_textarea( $cadet_address )  . '" class="form-control" placeholder="Full Home Address">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label> Correspondence Address  <span class="required">*</span></label>
	<input type="text" name="_cadet_corespondent_address" value="' . esc_textarea( $cadet_corespondent_address )  . '" class="form-control" placeholder="Correspondence Address ">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>  Addhar Number <span class="required">*</span></label>
	<input type="text" name="_cadet_adhaar_no" value="' . esc_textarea( $cadet_adhaar_no )  . '" class="form-control" placeholder=" Addhar Number">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label>  Bank Account Number <span class="required">*</span></label>
	<input type="text" name="_cadet_bank_ac" value="' . esc_textarea( $cadet_bank_ac )  . '" class="form-control" placeholder=" Bank Account Number">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label> Bank IFSE Code  <span class="required">*</span></label>
	<input type="text" name="_cadet_bank_ifsc" value="' . esc_textarea( $cadet_bank_ifsc )  . '" class="form-control" placeholder="Bank IFSE Code ">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label> Mobile Number  <span class="required">*</span></label>
	<input type="text" name="_cadet_mobile" value="' . esc_textarea( $cadet_mobile )  . '" class="form-control" placeholder="Mobile Number ">
</div>';

echo '<div class="form-group col-sm-6 col-xs-12">
	<label> Email-ID  <span class="required">*</span></label>
	<input type="text" name="_cadet_email" value="' . esc_textarea( $cadet_email )  . '" class="form-control" placeholder="Email-ID ">
</div>';
	echo '<style>
.col-sm-6{ width:100%}
.col-sm-6 label{ width:30%}
.col-sm-6 input{ width:70%}
</style>';
}
/**/
/**
 * Save the metabox data
 */
function wpt_save_cadet_meta( $post_id, $post ) {
	// Return if the user doesn't have edit permissions.
	if ( ! current_user_can( 'edit_post', $post_id ) ) {
		return $post_id;
	}

	// Verify this came from the our screen and with proper authorization,
	// because save_post can be triggered at other times.
	if ( ! isset( $_POST['_cadet_regemental_no'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_rank'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_father_name'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_mother_name'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_dob'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_address'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_corespondent_address'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_adhaar_no'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_bank_ac'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_bank_ifsc'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_mobile'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	if ( ! isset( $_POST['_cadet_email'] ) || ! wp_verify_nonce( $_POST['cadet_fields'], basename(__FILE__) ) ) {
		return $post_id;
	}
	
	// Now that we're authenticated, time to save the data.
	// This sanitizes the data from the field and saves it into an array $events_meta.
	$events_meta['_cadet_regemental_no'] = esc_textarea( $_POST['_cadet_regemental_no'] );
	$events_meta['_cadet_rank'] = esc_textarea( $_POST['_cadet_rank'] );
	$events_meta['_cadet_father_name'] = esc_textarea( $_POST['_cadet_father_name'] );
	$events_meta['_cadet_mother_name'] = esc_textarea( $_POST['_cadet_mother_name'] );
	$events_meta['_cadet_dob'] = esc_textarea( $_POST['_cadet_dob'] );
	$events_meta['_cadet_address'] = esc_textarea( $_POST['_cadet_address'] );
	$events_meta['_cadet_corespondent_address'] = esc_textarea( $_POST['_cadet_corespondent_address'] );
	$events_meta['_cadet_adhaar_no'] = esc_textarea( $_POST['_cadet_adhaar_no'] );
	$events_meta['_cadet_bank_ac'] = esc_textarea( $_POST['_cadet_bank_ac'] );
	$events_meta['_cadet_bank_ifsc'] = esc_textarea( $_POST['_cadet_bank_ifsc'] );
	// Cycle through the $events_meta array.
	// Note, in this example we just have one item, but this is helpful if you have multiple.
	foreach ( $events_meta as $key => $value ) :
		// Don't store custom data twice
		if ( 'revision' === $post->post_type ) {
			return;
		}
		if ( get_post_meta( $post_id, $key, false ) ) {
			// If the custom field already has a value, update it.
			update_post_meta( $post_id, $key, $value );
		} else {
			// If the custom field doesn't have a value, add it.
			add_post_meta( $post_id, $key, $value);
		}
		if ( ! $value ) {
			// Delete the meta key if there's no value
			delete_post_meta( $post_id, $key );
		}
	endforeach;
}
add_action( 'save_post', 'wpt_save_cadet_meta', 1, 2 );
add_action('wp_head', 'admin_ajax_url_ncc');
function admin_ajax_url_ncc(){
?>
<script type="text/javascript">
			/* <![CDATA[ */
			var ajaxurl = '<?php echo admin_url('admin-ajax.php'); ?>';
			/* ]]> */
		</script>
<?php 
}

add_action ( 'wp_ajax_nopriv_update_cadet_front', 'update_cadet_front' );
add_action ( 'wp_ajax_update_cadet_front', 'update_cadet_front' );
function update_cadet_front(){
	$_cadet_name= $_REQUEST['_cadet_name'];
	$_cadet_regemental_no = $_REQUEST['_cadet_regemental_no'];
	$_cadet_rank = $_REQUEST['_cadet_rank'];
	$_cadet_father_name = $_REQUEST['_cadet_father_name'];
	$_cadet_mother_name = $_REQUEST['_cadet_mother_name'];
	$_cadet_dob = $_REQUEST['_cadet_dob'];
	$_cadet_address = $_REQUEST['_cadet_address'];
	$_cadet_corespondent_address = $_REQUEST['_cadet_corespondent_address'];
	$_cadet_adhaar_no = $_REQUEST['_cadet_adhaar_no'];
	$_cadet_bank_ac = $_REQUEST['_cadet_bank_ac'];
	$_cadet_bank_ifsc = $_REQUEST['_cadet_bank_ifsc'];
	$_cadet_mobile = $_REQUEST['_cadet_mobile'];
	$_cadet_email =$_REQUEST['_cadet_email'];
		// Create post object
$my_post = array(
  	'post_title'    => wp_strip_all_tags($_cadet_name),
	'post_type' => 'cadet',
  	'post_status'   => 'publish'
);
// print_r($my_post);
// Insert the post into the database
$post_id = wp_insert_post( $my_post );

add_post_meta( $post->ID, '_cadet_regemental_no', true );
add_post_meta( $post->ID, '_cadet_rank', true );
add_post_meta( $post->ID, '_cadet_father_name', true );
add_post_meta( $post->ID, '_cadet_mother_name', true );
add_post_meta( $post->ID, '_cadet_dob', true );
add_post_meta( $post->ID, '_cadet_address', true );
add_post_meta( $post->ID, '_cadet_corespondent_address', true );
add_post_meta( $post->ID, '_cadet_adhaar_no', true );
add_post_meta( $post->ID, '_cadet_bank_ac', true );
add_post_meta( $post->ID, '_cadet_bank_ifsc', true );
add_post_meta( $post->ID, '_cadet_mobile', true );
add_post_meta( $post->ID, '_cadet_email', true );
echo $post_id;
die();
}
//Page Slug Body Class
function add_slug_body_class( $classes ) {
global $post;
if ( isset( $post ) ) {
$classes[] = $post->post_type . '-' . $post->post_name;
}
return $classes;
}
add_filter( 'body_class', 'add_slug_body_class' );

/*Login function */
function ncc_errors() {
	static $wp_error; // Will hold global variable safely
	return isset ( $wp_error ) ? $wp_error : ($wp_error = new WP_Error ( null, null, null ));
}
add_action ( 'wp_ajax_nopriv_member_login', 'member_login' );
add_action ( 'wp_ajax_member_login', 'member_login' );
function member_login(){
	
global $ncclogin_error;
  $ncclogin_error = false;
  if (isset($_REQUEST['username']) && isset($_REQUEST['pass'])) {
    $creds = array();
    $creds['user_login'] = $_REQUEST['username'];
    $creds['user_password'] = $_REQUEST['pass'];
   $url = $_REQUEST['url']; 
   // print_r($creds);
    //$creds['remember'] = false;
    $user = wp_signon( $creds );
    if ( is_wp_error($user) ) {
       //$ncclogin_error = $user->get_error_message();
    	//$responce ['msg'] ='error';
    	$response = $url; //$responce['error'] = $ncclogin_error;
    } else {
//    	$responce ['msg'] ='sucess';
//		$responce ['url'] = get_bloginfo('url').'/enrolment';
    		$responce= get_bloginfo('url').'/enrolment';
        }
    //echo json_encode ($responce);
    echo $responce;
  }
  die();
}

 
// shows error message
function the_ncclogin_error() {
  echo get_ncclogin_error();
}
function get_ncclogin_error() {
  global $ncclogin_error;
  if ($ncclogin_error) {
    $return = $ncclogin_error;
    $ncclogin_error = false;
    return $return;
  } else {
    return false;
  }
}
function restrict_user_login(){
	global $post;
 $page = $post->post_name;
	if($page=='enrolment'){
		if (! is_user_logged_in ()) {
			wp_redirect ( get_bloginfo ( 'url' ) . '/login' );
			exit ();
		}
	}elseif ($page=='login'){
		if (is_user_logged_in ()) {
			wp_redirect ( get_bloginfo ( 'url' ));
			exit ();
		}
	}
	
}

function hyw_redirect_to_login_if_not_user() {
	if (! is_user_logged_in ()) {
		wp_redirect ( get_bloginfo ( 'url' ) . '/login' );
		exit ();
	}
}