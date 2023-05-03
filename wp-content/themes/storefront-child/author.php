<?php

/**
 * The template for displaying all single posts.
 *
 * @package storefront
 */

get_header(); ?>

<h1>
    <?php wp_title("Författare:"); ?>
</h1>
<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <div class="post-container">


            <?php
            if (have_posts()) : while (have_posts()) : the_post(); ?>
                    <h1><a href="<?php the_permalink(); ?>"> <?php the_title(); ?></a></h1>
                    <!--The post meta data - author, date and categories-->
                    <ul class="meta">
                        <li>
                            <i class="fa fa-calendar"></i>
                            <?php echo get_the_date(); ?>
                        </li>

                        <li>
                            <i class="fa fa-user"></i>
                            <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')); ?>"><?php the_author(); ?></a>
                        </li>

                        <li>
                            <i class="fa fa-tag"></i>
                            <?php echo the_category(', '); ?>
                        </li>
                    </ul>

                    <img class="post-image" src="<?php the_post_thumbnail_url(); ?>">

                    <?php the_content(); ?>

            <?php endwhile;
            endif; ?>

        </div><!--class post-container-->
    </main><!-- #main -->
</div><!-- #primary -->

<?php
do_action('storefront_sidebar');
get_footer();
