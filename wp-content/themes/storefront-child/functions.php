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

//Delete the sorting-box at the bottom of the page
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
}
add_action('widgets_init', 'widget_areas');
