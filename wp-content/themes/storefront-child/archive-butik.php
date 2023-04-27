<?php get_header(); ?>
<h1><?php wp_title(""); ?></h1>

<?php



$args = array(
    'post_type'      => 'butik',
    'posts_per_page' => 10,
);

//läs endast in butiker (posttyp=butik)
$loop = new WP_Query($args);
while ($loop->have_posts()) {
    $loop->the_post();

?>
    <div class="entry-content">
        <h2> <a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

    </div>
<?php
}

////i pluginet has_archive => true för att komma in på sidan localhost/webbutik_/butiker 
?>

<?php get_footer(); ?>