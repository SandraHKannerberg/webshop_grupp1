<?php
/* 
Plugin Name: CPT plugin Butik
*/
add_action('init', 'registrer_store');


function registrer_store()
{

    $store_args = [

        'public' => true,
        'label' => 'Butik',
        'show_in_rest' => true


    ];
    register_post_type('butik', $store_args);
}
