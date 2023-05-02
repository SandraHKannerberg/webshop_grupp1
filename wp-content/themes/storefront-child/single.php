<?php

/**
 * The template for displaying all single posts.
 *
 * @package storefront
 */

get_header(); ?>

<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <div class="post-container">

            <h1>
                <?php wp_title(""); ?>
            </h1>

            <?php
            if (have_posts()) : while (have_posts()) : the_post(); ?>

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
