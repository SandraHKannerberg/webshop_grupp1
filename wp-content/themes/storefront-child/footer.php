<?php

/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after
 *
 * @package storefront
 */

?>

</div><!-- .col-full -->
</div><!-- #content -->

<?php do_action('storefront_before_footer'); ?>

<footer id="colophon" class="site-footer" role="contentinfo">
	<div class="col-full">
		<div class="footer-1">
			<?php dynamic_sidebar('footer1'); ?>
		</div>
		<div class="footer-2">
			<?php dynamic_sidebar('footer2'); ?>
		</div>
		<div class="footer-3">
			<?php dynamic_sidebar('footer3'); ?>
		</div>



	</div>

	<?php

	/**
	 * Functions hooked in to storefront_footer action
	 *
	 * @hooked storefront_footer_widgets - 10
	 * @hooked storefront_credit         - 20
	 */
	do_action('storefront_footer');
	?>

	</div><!-- .col-full -->
</footer><!-- #colophon -->

<?php do_action('storefront_after_footer'); ?>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>