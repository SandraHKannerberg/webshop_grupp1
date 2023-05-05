<?php get_header(); ?>
<h1><?php wp_title(""); ?></h1>

<?php



$args = array(
    'post_type'      => 'butik',
    'posts_per_page' => 10,
); ?>
<div class="butik-container">

    <?php

    $loop = new WP_Query($args);
    while ($loop->have_posts()) {
        $loop->the_post();

    ?>

        <div class="butik-content">
            <h2> <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

        </div>

    <?php

    } ?>
</div>
<?php
?>

<?php get_footer(); ?>