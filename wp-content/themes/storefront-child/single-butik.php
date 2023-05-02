<?php
get_header();


if (have_posts()) :  while (have_posts()) : the_post();
        the_title('<h1>', '</h1>');
        the_content(); ?>


    <?php

    endwhile;
endif;
$map =  get_field('karta');
if ($map) { ?>
    <div class="google-map">
        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyD8xjMrbRu4RvUrKCDCTzukOE-IwRCimVQ&q=<?php echo urlencode($map); ?>" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
    </div>
<?php
}
?>
<div class="butik-adress">

    <p><?php echo get_post_meta($post->ID, 'butikens_namn', true); ?> <br>
        <?php echo get_post_meta($post->ID, 'gata', true); ?> <br>
        <?php echo get_post_meta($post->ID, 'postnummer', true); ?>
        <?php echo get_post_meta($post->ID, 'stad', true); ?> <br>
        <?php echo get_post_meta($post->ID, 'land', true); ?> </p>

</div>
<?php



get_footer(); ?>