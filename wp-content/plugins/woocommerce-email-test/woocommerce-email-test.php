<?php
/*
 * Plugin Name: WooCommerce Email Test
 * Plugin URI: 
 * Description: Let's you send WooCommerce test emails.
 * Version:  1.2.2
 * Author: RaiserWeb
 * Author URI: http://www.raiserweb.com
 * Developer: RaiserWeb
 * Developer URI: http://www.raiserweb.com
 * Text Domain: raiserweb
 * License: GPLv2
 *
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License, version 2, as
 *  published by the Free Software Foundation.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */
 
 
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}


if ( in_array( 'woocommerce/woocommerce.php', apply_filters( 'active_plugins', get_option( 'active_plugins' ) ) ) ) {    
	 	
		// set email classes for test buttons
		$wetp_test_email_class = array(
			'WC_Email_New_Order'=>'New Order',
			'WC_Email_Customer_Processing_Order'=>'Processing Order',
			'WC_Email_Customer_Completed_Order'=>'Completed Order',
			'WC_Email_Customer_Invoice'=>'Customer Invoice',
			'WC_Email_Customer_Note'=>'Customer Note',
		);
		 
		// include plugin files
		require_once( plugin_dir_path( __FILE__ ) . 'functions.php' );
		require_once( plugin_dir_path( __FILE__ ) . 'email-trigger.php' );

        
		if( is_admin() ) { 
		 
			// register admin page and add menu
			add_action('admin_menu', 'wept_register_test_email_submenu_page');

			function wept_register_test_email_submenu_page() {
				add_submenu_page( 'woocommerce', 'Email Test', 'Email Test', 'manage_options', 'woocommerce-email-test', 'wept_register_test_email_submenu_page_callback' ); 
			}

			function wept_register_test_email_submenu_page_callback() {
				require_once( plugin_dir_path( __FILE__ ) . 'admin-menu.php' );
			}
			
		}

	
}