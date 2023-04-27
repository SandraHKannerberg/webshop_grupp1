<?php get_header(); ?>


<h1>
    <?php wp_title(""); ?>
</h1>

<?php
if (have_posts()) : while (have_posts()) : the_post(); ?>

        <div class="post-container">

            <!--The post heading-->
            <a href="<?php the_permalink(); ?>">
                <h2 class="post-heading"><?php the_title(); ?></h2>
            </a>

            <!--The post section-->
            <section class="post-section">
                <!--The post image-->
                <img src="<?php the_post_thumbnail_url('medium'); ?>">

                <article>
                    <?php the_excerpt(); ?>
                </article>
            </section>

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
        </div>
<?php endwhile;
endif; ?>

<?php get_footer(); ?>