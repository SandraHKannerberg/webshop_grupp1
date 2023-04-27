<?php
get_header();


if (have_posts()) :  while (have_posts()) : the_post();
        the_title('<h1>', '</h1>');
        the_content(); ?>

      
<?php

    endwhile;
endif;
echo get_post_meta($post->ID, 'butikens_namn', true);
echo get_post_meta($post->ID, 'gata', true);
echo get_post_meta($post->ID, 'postnummer', true);
echo get_post_meta($post->ID, 'stad', true);
echo get_post_meta($post->ID, 'land', true);

?>

<?php



get_footer(); ?>