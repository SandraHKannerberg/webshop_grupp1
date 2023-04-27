<?php

function wetp_run_email_script(){

	// assign order id variables	
	if( get_option( "wc_email_test_order_id", false ) == 'recent' ){
	
		$wc_email_test_order_id = '';
		
	} else {
	
		$wc_email_test_order_id = get_option( "wc_email_test_order_id", false );
		
	}	
	

	if( ! $wc_email_test_order_id ) {		

		// get a valid and most recent order_id ( if no order is has been selected )
		global $wpdb;
		$order_id_query = 'SELECT order_id FROM '.$wpdb->prefix.'woocommerce_order_items ORDER BY order_item_id DESC LIMIT 1';
		$order_id = $wpdb->get_results( $order_id_query );
		
		if( empty( $order_id ) ) {
		
			echo "No order within your WooCommerce shop. Please create a test order first to test the emails";
			return;
		
		} else {
		
			 $wc_email_test_order_id = $order_id[0]->order_id ;
			
		}
	
	}

	// the email type to send
	$email_class = get_query_var('woocommerce_email_test');
    
    // check type is in array
    global $wetp_test_email_class;
    if( !array_key_exists( $email_class, $wetp_test_email_class) ){
        echo "Invalid email type";
        exit();
    }
    

	$for_filter = strtolower( str_replace( 'WC_Email_', '' , $email_class ) );

	// change subject link	
	add_filter('woocommerce_email_subject_'.$for_filter , 'wept_change_admin_email_subject', 1, 2);	 
	function wept_change_admin_email_subject( $subject, $order ) {
		global $woocommerce;	 
		$subject = "TEST EMAIL: ".$subject;		
		return $subject;
	} 

	// make sure email isn't sent to customer
	add_filter( 'woocommerce_email_recipient_'.$for_filter , 'wetp_email_recipient_filter_function', 10, 2);
	function wetp_email_recipient_filter_function($recipient, $object) {
		$recipient = '';
		return $recipient;
	}    
	add_filter('woocommerce_email_enabled_'.$for_filter , 'wept_change_email_enabled', 1, 2);	 
	function wept_change_email_enabled( $enabled, $order ) {
		global $woocommerce;	
        $enabled = false;        
		return $enabled;
	} 	
	
	if( isset( $GLOBALS['wc_advanced_notifications'] ) ) {
		unset( $GLOBALS['wc_advanced_notifications'] );
	}
	
	// load the email classs
	$wc_emails = new WC_Emails( );
	$emails = $wc_emails->get_emails();

	// select the email we want & send
	$new_email = $emails[ $email_class ];

	if( $for_filter == 'customer_note' ) {

		$new_email->trigger( array( 'order_id'=>$wc_email_test_order_id ) );

	} else {
		
		$new_email->trigger( $wc_email_test_order_id  );
		
	}

	// echo the email content for browser
	echo apply_filters( 'woocommerce_mail_content', $new_email->style_inline( $new_email->get_content() ) );	

}

function wetp_get_order_id_select_field( $wc_email_test_order_id ) {

	global $wpdb;
	
	$order_id_query = 'SELECT ID as order_id FROM '.$wpdb->prefix . 'posts'.' WHERE post_type = "shop_order" GROUP BY ID ORDER BY ID DESC LIMIT 100';
	$order_id = $wpdb->get_results( $order_id_query  );
	if( empty( $order_id ) ) {
	
		return "<strong style='color:red;'>No Orders - Please create an order</strong><br><select style='height:20px;width:320px;' id='wc_email_test_order_id' size='40' name='wc_email_test_order_id'></select>";
	
	} else {
	
		$order_id_select_options = "<option value='recent'>Most Recent</option>";
		foreach( $order_id as $id ) {
			$order_id_select_options .= "<option value='{$id->order_id}'>#{$id->order_id}</option>";
		}
		
		$order_id_select_options = str_replace( "value='{$wc_email_test_order_id}'", "value='{$wc_email_test_order_id}' selected", $order_id_select_options ); 
		
		$order_id_select = "<select style='height:200px;' id='wc_email_test_order_id' size='40' name='wc_email_test_order_id'>{$order_id_select_options}</select>";
		
		return $order_id_select;
		
	}
	
}

function wetp_show_test_email_buttons(){

	global $wetp_test_email_class;
	
	$site_url = site_url();
	
	foreach( $wetp_test_email_class as $class=>$name ) {
	
		echo " <a href='{$site_url}/?woocommerce_email_test={$class}' class='button button-primary' target='_blank'>{$name}</a> ";			

	} 
}
 
function wetp_update_test_email_options() {

	$updated = false;

	if( isset( $_POST['nonce'] ) && wp_verify_nonce( $_POST['nonce'], 'wept_update_form' ) ) {

		if( isset($_POST['wc_email_test_email']) && $_POST['wc_email_test_email']  ){
			
			$result = update_option( "wc_email_test_email", sanitize_email( $_POST['wc_email_test_email'] ) );

			$updated = true;
					
		}
				
		if( isset($_POST['wc_email_test_order_id']) && $_POST['wc_email_test_order_id']  ){
				
			$result = update_option( "wc_email_test_order_id", intval( $_POST['wc_email_test_order_id'] ) );
					
			$updated = true;
					
		}		
				
		if( $updated ) {
				
			echo "<div id='message' class='updated fade'><p><strong>Your settings have been saved.</strong></p></div>";
				
		}

	}

	
	return $updated;

}


function wetp_get_test_email_options() {

	$return = array();

	if( get_option( "wc_email_test_email", "false" ) ) {
	
		$return['wc_email_test_email'] = get_option( "wc_email_test_email", "" );
		
	} else {
	
		$return['wc_email_test_email'] = '';
		
	}
	if( get_option( "wc_email_test_order_id", "false" ) ) {
	
		$return['wc_email_test_order_id'] = get_option( "wc_email_test_order_id", "false" );
		
	} else {
	
		$return['wc_email_test_order_id'] = '';
		
	}
	
	return $return;
	
}


