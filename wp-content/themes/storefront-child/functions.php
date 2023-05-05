<?php

//Delete the sidebar
function remove_sidebar()
{
    return false;
}
add_filter('is_active_sidebar', 'remove_sidebar', 10, 2);

//Delete the text beside the sorting-box
function my_remove_product_result_count()
{
    remove_action('woocommerce_before_shop_loop', 'woocommerce_result_count', 20);
    remove_action('woocommerce_after_shop_loop', 'woocommerce_result_count', 20);
}
add_action('after_setup_theme', 'my_remove_product_result_count', 99);

function my_remove_function()
{
    remove_action('woocommerce_after_shop_loop', 'woocommerce_catalog_ordering', 10);
    remove_action('storefront_footer', 'storefront_credit', 20);
}
add_action('after_setup_theme', 'my_remove_function', 99);


//Function to registrer widgets
function widget_areas()
{
    /////Widget för footer "kort om oss"
    register_sidebar([
        'name' => 'footer1',
        'description' => 'Widget for footer-1',
        'id' => 'footer1',
        'before_widget' => '',
        'after_widget' => ''

    ]);

    //Widget för footer "kontaktuppgifter"
    register_sidebar([
        'name' => 'footer2',
        'description' => 'Widget for footer-2',
        'id' => 'footer2',
        'before_widget' => '',
        'after_widget' => ''
    ]);

    //widget för "social media"
    register_sidebar([
        'name' => 'footer3',
        'description' => 'Widget for footer-3',
        'id' => 'footer3',
        'before_widget' => '',
        'after_widget' => ''
    ]);

    //widget för "infobanner"
    register_sidebar([
        'name' => 'infobanner',
        'description' => 'Widget for info banner',
        'id' => 'infobanner',
        'before_widget' => '',
        'after_widget' => ''
    ]);

    //widget för "checkout"
    register_sidebar([
        'name' => 'checkout',
        'description' => 'Widget for checkout',
        'id' => 'checkout',
        'before_widget' => '',
        'after_widget' => ''
    ]);
}
add_action('widgets_init', 'widget_areas');

/*-----------------------OPTIMIZED CHECKOUT---------------------------------------*/
//Delete header in Checkout
function remove_header_from_checkout()
{
    if (is_checkout()) {
        remove_action('storefront_before_content', 'storefront_header_widget_region', 10);
        remove_action('storefront_header', 'storefront_header_container', 0);
        remove_action('storefront_header', 'storefront_skip_links', 5);
        remove_action('storefront_header', 'storefront_site_branding', 20);
        remove_action('storefront_header', 'storefront_secondary_navigation', 30);
        remove_action('storefront_header', 'storefront_product_search', 40);
        remove_action('storefront_header', 'storefront_header_container_close', 41);
        remove_action('storefront_header', 'storefront_primary_navigation_wrapper', 42);
        remove_action('storefront_header', 'storefront_primary_navigation', 50);
        remove_action('storefront_header', 'storefront_header_cart', 60);
        remove_action('storefront_header', 'storefront_primary_navigation_wrapper_close', 68);
    }
}
add_action('wp_head', 'remove_header_from_checkout');

//Delete footer in Checkout
function delete_footer()
{
    if (is_checkout()) {
        echo "
    <style type='text/css'>

        #colophon {
            display: none;
        }
    </style>
    ";
    }
}
add_action('storefront_before_footer', 'delete_footer');

//Move the coupon form
remove_action('woocommerce_before_checkout_form', 'woocommerce_checkout_coupon_form', 10);
add_action('woocommerce_after_checkout_form', 'woocommerce_checkout_coupon_form', 10);

//Add link to cart
add_action('woocommerce_before_checkout_form', 'cart_url');
function cart_url()
{
    echo '<a href="' . wc_get_cart_url() . '">' . "Ändra varukorgen" . '</a>';
}

//Add a phonenumber
add_action('woocommerce_review_order_after_submit', 'add_phonenumber');
function add_phonenumber()
{
    dynamic_sidebar('checkout');
}
/*------------------END OF OPTIMIZED CHECKOUT-------------------*/

add_action('init', 'menu_categories');
//Create a menu for product categories
function menu_categories()
{
    $menus = array(
        'produktmeny' => 'produktmeny',
    );
    register_nav_menus($menus);
}
