<?php 

/* Css and Js scripts  */
function css_js(){
	wp_enqueue_style('main_style',get_stylesheet_uri());
	wp_enqueue_style('bootstrap.min.css',get_template_directory_uri().'/assets/vendor/bootstrap/css/bootstrap.min.css');
	wp_enqueue_style('bootstrap-icons.css',get_template_directory_uri().'/assets/vendor/bootstrap-icons/bootstrap-icons.css');
	wp_enqueue_style('aos.css',get_template_directory_uri().'/assets/vendor/aos/aos.css');
	wp_enqueue_style('glightbox.min.css',get_template_directory_uri().'/assets/vendor/glightbox/css/glightbox.min.css');
	wp_enqueue_style('swiper-bundle.min.css',get_template_directory_uri().'/assets/vendor/swiper/swiper-bundle.min.css');
	wp_enqueue_style('main.css',get_template_directory_uri().'/assets/css/main.css');

	wp_enqueue_script('bootstrap.bundle.min.js',get_template_directory_uri().'/assets/vendor/bootstrap/js/bootstrap.bundle.min.js',array(),'1.1',true);
	wp_enqueue_script('validate.js',get_template_directory_uri().'/assets/vendor/php-email-form/validate.js',array(),'1.1',true);
	wp_enqueue_script('aos.js',get_template_directory_uri().'/assets/vendor/aos/aos.js',array(),'1.1',true);
	wp_enqueue_script('glightbox.min.js',get_template_directory_uri().'/assets/vendor/glightbox/js/glightbox.min.js',array(),'1.1',true);
	wp_enqueue_script('swiper-bundle.min.js',get_template_directory_uri().'/assets/vendor/swiper/swiper-bundle.min.js',array(),'1.1',true);
	wp_enqueue_script('noframework.waypoints.js',get_template_directory_uri().'/assets/vendor/waypoints/noframework.waypoints.js',array(),'1.1',true);
	wp_enqueue_script('imagesloaded.pkgd.min.js',get_template_directory_uri().'/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js',array(),'1.1',true);
	wp_enqueue_script('isotope.pkgd.min.js',get_template_directory_uri().'/assets/vendor/isotope-layout/isotope.pkgd.min.js',array(),'1.1',true);
	wp_enqueue_script('main.js',get_template_directory_uri().'/assets/js/main.js',array(),'1.1',true);


}

   add_action('wp_enqueue_scripts','css_js');

  /* Menu */
  
  function menu(){
  	register_nav_menus(
  		array(
  			'primary-menu' => __('Primary Menu'),
  			'footer-menu' => __('Footer Menu')
  		)

  	);
  } 

  add_action('init','menu');

  /* Add logo and site icon  */
  function logo_icon(){
  	add_theme_support('site-icon');
  }

  add_action('after_setup_theme','logo_icon');

// register sidebar
function custom_sidebar(){
    register_sidebar(array(
        'name' => __('Sidebar-1', 'theme_name'),
        'id' => 'sidebar-1',
        'before_widget' => '<aside id="%1$s" class="widget %2$s">',
        'after_widget' => '</aside>',
        'before_title' => '<h1 class="widget-title">',
        'after_title' => '</h1>',
    ));
}

// action hook attach with method
    add_action("widgets_init","custom_sidebar");

function theme_support(){
	add_theme_support('post-thumbnails');
	add_image_size("small-thumbnail",120,90,true); // add featured immage size
	add_image_size("banner-image",700,300,true); 
	add_theme_support("post-formats",array("aside","gallery","link"));
}

add_action("after_setup_theme","theme_support");

$wpb_all_query = new WP_Query(array('post_type'=>'post','post_status'=>'publish'));


?>