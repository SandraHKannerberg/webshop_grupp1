<?php
/* 
Plugin Name: CPT plugin Butik
*/
add_action('init', 'registrer_store');


function registrer_store()
{

    $store_args = [

        'public' => true,
        'label' => 'Butiker',
        'show_in_rest' => true,
        'has_archive' => true


    ];
    register_post_type('butik', $store_args);
}
