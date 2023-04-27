<?php
//namnet  filen (archive-butik.php) taget från register_post_type i pluginet. måste vara samma namn (butik)


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
        <h1><?php the_title(); ?></h1>
        <?php the_content(); ?>
    </div>
<?php
}


////i pluginet has_archive => true för att komma in på sidan localhost/webbutik_/butiker 
?>