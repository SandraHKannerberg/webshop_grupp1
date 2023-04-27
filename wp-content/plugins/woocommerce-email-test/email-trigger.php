<?php

if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

// run the script based on the trigger GET value populated
function wept_email_trigger_init(){
	if ( isset($_GET['woocommerce_email_test']) && in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {
		
		if( current_user_can( 'administrator' ) ) {
			add_filter( 'query_vars', 'wept_plugin_add_trigger' );
			function wept_plugin_add_trigger( $vars ) {

				$vars[] = 'woocommerce_email_test';
				return $vars;
				
			}	
				
			add_action( 'template_redirect', 'wept_plugin_trigger_check' );
			function wept_plugin_trigger_check() {

				if( get_query_var( 'woocommerce_email_test' )  ) {
				
					// run the email script based on the woocommerce_email_test class	
					wetp_run_email_script();
					
					exit();
					
				}
			}
		}

	}
}
add_action( 'init', 'wept_email_trigger_init' );
