# WordPress MySQL database migration
#
# Generated: Friday 5. May 2023 07:56 UTC
# Hostname: localhost
# Database: `webshop_grupp1`
# URL: //localhost/webshop_grupp1
# Path: C:\\MAMP\\htdocs\\webshop_grupp1
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_commentmeta, wp_comments, wp_links, wp_litespeed_url, wp_litespeed_url_file, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wc_admin_note_actions, wp_wc_admin_notes, wp_wc_category_lookup, wp_wc_customer_lookup, wp_wc_download_log, wp_wc_order_coupon_lookup, wp_wc_order_product_lookup, wp_wc_order_stats, wp_wc_order_tax_lookup, wp_wc_product_attributes_lookup, wp_wc_product_download_directories, wp_wc_product_meta_lookup, wp_wc_rate_limits, wp_wc_reserved_stock, wp_wc_tax_rate_classes, wp_wc_webhooks, wp_wcpdf_invoice_number, wp_wcpdf_packing_slip_number, wp_woocommerce_api_keys, wp_woocommerce_attribute_taxonomies, wp_woocommerce_downloadable_product_permissions, wp_woocommerce_log, wp_woocommerce_order_itemmeta, wp_woocommerce_order_items, wp_woocommerce_payment_tokenmeta, wp_woocommerce_payment_tokens, wp_woocommerce_sessions, wp_woocommerce_shipping_zone_locations, wp_woocommerce_shipping_zone_methods, wp_woocommerce_shipping_zones, wp_woocommerce_tax_rate_locations, wp_woocommerce_tax_rates, wp_wpgmza, wp_wpgmza_admin_notices, wp_wpgmza_circles, wp_wpgmza_image_overlays, wp_wpgmza_maps, wp_wpgmza_point_labels, wp_wpgmza_polygon, wp_wpgmza_polylines, wp_wpgmza_rectangles
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, acf-taxonomy, attachment, butik, customize_changeset, ml-slide, ml-slider, nav_menu_item, page, post, product, product_variation, shop_coupon, shop_order, shop_order_refund, wp_navigation, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_actionscheduler_actions`
#

DROP TABLE IF EXISTS `wp_actionscheduler_actions`;


#
# Table structure of table `wp_actionscheduler_actions`
#

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook` (`hook`),
  KEY `status` (`status`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(46, 'action_scheduler/migration_hook', 'complete', '2023-04-25 07:57:23', '2023-04-25 09:57:23', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682409443;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682409443;s:19:"scheduled_timestamp";i:1682409443;s:9:"timestamp";i:1682409443;}', 1, 1, '2023-04-25 07:57:29', '2023-04-25 09:57:29', 0, NULL),
(47, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-25 07:56:25', '2023-04-25 09:56:25', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682409385;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682409385;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682409385;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682409385;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-25 07:57:29', '2023-04-25 09:57:29', 0, NULL),
(48, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-26 07:57:29', '2023-04-26 09:57:29', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682495849;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682495849;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682495849;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682495849;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-26 07:59:04', '2023-04-26 09:59:04', 0, NULL),
(49, 'action_scheduler/migration_hook', 'failed', '2023-04-25 07:58:29', '2023-04-25 09:58:29', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682409509;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682409509;s:19:"scheduled_timestamp";i:1682409509;s:9:"timestamp";i:1682409509;}', 1, 1, '2023-04-25 07:59:29', '2023-04-25 09:59:29', 0, NULL),
(50, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 08:47:56', '2023-04-25 10:47:56', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682412476;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682412476;s:19:"scheduled_timestamp";i:1682412476;s:9:"timestamp";i:1682412476;}', 2, 1, '2023-04-25 08:48:23', '2023-04-25 10:48:23', 0, NULL),
(51, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:12:53', '2023-04-25 11:12:53', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682413973;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682413973;s:19:"scheduled_timestamp";i:1682413973;s:9:"timestamp";i:1682413973;}', 2, 1, '2023-04-25 09:13:29', '2023-04-25 11:13:29', 0, NULL),
(52, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:31:46', '2023-04-25 11:31:46', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415106;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415106;s:19:"scheduled_timestamp";i:1682415106;s:9:"timestamp";i:1682415106;}', 2, 1, '2023-04-25 09:32:23', '2023-04-25 11:32:23', 0, NULL),
(53, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:31:58', '2023-04-25 11:31:58', '[53,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415118;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415118;s:19:"scheduled_timestamp";i:1682415118;s:9:"timestamp";i:1682415118;}', 2, 1, '2023-04-25 09:32:23', '2023-04-25 11:32:23', 0, NULL),
(54, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:31:58', '2023-04-25 11:31:58', '[54,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415118;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415118;s:19:"scheduled_timestamp";i:1682415118;s:9:"timestamp";i:1682415118;}', 2, 1, '2023-04-25 09:32:23', '2023-04-25 11:32:23', 0, NULL),
(55, 'adjust_download_permissions', 'complete', '2023-04-25 09:31:58', '2023-04-25 11:31:58', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415118;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415118;s:19:"scheduled_timestamp";i:1682415118;s:9:"timestamp";i:1682415118;}', 0, 1, '2023-04-25 09:32:23', '2023-04-25 11:32:23', 0, NULL),
(56, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:31:58', '2023-04-25 11:31:58', '[51,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415118;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415118;s:19:"scheduled_timestamp";i:1682415118;s:9:"timestamp";i:1682415118;}', 2, 1, '2023-04-25 09:32:23', '2023-04-25 11:32:23', 0, NULL),
(57, 'adjust_download_permissions', 'complete', '2023-04-25 09:35:02', '2023-04-25 11:35:02', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415302;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415302;s:19:"scheduled_timestamp";i:1682415302;s:9:"timestamp";i:1682415302;}', 0, 1, '2023-04-25 09:35:23', '2023-04-25 11:35:23', 0, NULL),
(58, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:35:02', '2023-04-25 11:35:02', '[53,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415302;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415302;s:19:"scheduled_timestamp";i:1682415302;s:9:"timestamp";i:1682415302;}', 2, 1, '2023-04-25 09:35:23', '2023-04-25 11:35:23', 0, NULL),
(59, 'adjust_download_permissions', 'complete', '2023-04-25 09:39:01', '2023-04-25 11:39:01', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415541;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415541;s:19:"scheduled_timestamp";i:1682415541;s:9:"timestamp";i:1682415541;}', 0, 1, '2023-04-25 09:39:24', '2023-04-25 11:39:24', 0, NULL),
(60, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:39:01', '2023-04-25 11:39:01', '[54,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415541;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415541;s:19:"scheduled_timestamp";i:1682415541;s:9:"timestamp";i:1682415541;}', 2, 1, '2023-04-25 09:39:24', '2023-04-25 11:39:24', 0, NULL),
(61, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:39:12', '2023-04-25 11:39:12', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415552;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415552;s:19:"scheduled_timestamp";i:1682415552;s:9:"timestamp";i:1682415552;}', 2, 1, '2023-04-25 09:39:24', '2023-04-25 11:39:24', 0, NULL),
(62, 'woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications', 'failed', '2023-04-25 09:40:46', '2023-04-25 09:40:46', '[]', 'O:28:"ActionScheduler_NullSchedule":0:{}', 0, 1, '2023-04-25 09:42:23', '2023-04-25 11:42:23', 0, NULL),
(63, 'adjust_download_permissions', 'complete', '2023-04-25 09:40:47', '2023-04-25 11:40:47', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415647;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415647;s:19:"scheduled_timestamp";i:1682415647;s:9:"timestamp";i:1682415647;}', 0, 1, '2023-04-25 09:42:23', '2023-04-25 11:42:23', 0, NULL),
(64, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:40:47', '2023-04-25 11:40:47', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682415647;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682415647;s:19:"scheduled_timestamp";i:1682415647;s:9:"timestamp";i:1682415647;}', 2, 1, '2023-04-25 09:42:23', '2023-04-25 11:42:23', 0, NULL),
(65, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:50:35', '2023-04-25 11:50:35', '[56,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416235;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416235;s:19:"scheduled_timestamp";i:1682416235;s:9:"timestamp";i:1682416235;}', 2, 1, '2023-04-25 09:50:38', '2023-04-25 11:50:38', 0, NULL),
(66, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:50:48', '2023-04-25 11:50:48', '[57,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416248;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416248;s:19:"scheduled_timestamp";i:1682416248;s:9:"timestamp";i:1682416248;}', 2, 1, '2023-04-25 09:51:21', '2023-04-25 11:51:21', 0, NULL),
(67, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:50:48', '2023-04-25 11:50:48', '[58,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416248;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416248;s:19:"scheduled_timestamp";i:1682416248;s:9:"timestamp";i:1682416248;}', 2, 1, '2023-04-25 09:51:21', '2023-04-25 11:51:21', 0, NULL),
(68, 'adjust_download_permissions', 'complete', '2023-04-25 09:50:49', '2023-04-25 11:50:49', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416249;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416249;s:19:"scheduled_timestamp";i:1682416249;s:9:"timestamp";i:1682416249;}', 0, 1, '2023-04-25 09:51:21', '2023-04-25 11:51:21', 0, NULL),
(69, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:50:49', '2023-04-25 11:50:49', '[56,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416249;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416249;s:19:"scheduled_timestamp";i:1682416249;s:9:"timestamp";i:1682416249;}', 2, 1, '2023-04-25 09:51:21', '2023-04-25 11:51:21', 0, NULL),
(70, 'adjust_download_permissions', 'complete', '2023-04-25 09:55:10', '2023-04-25 11:55:10', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416510;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416510;s:19:"scheduled_timestamp";i:1682416510;s:9:"timestamp";i:1682416510;}', 0, 1, '2023-04-25 09:55:27', '2023-04-25 11:55:27', 0, NULL),
(71, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:55:10', '2023-04-25 11:55:10', '[57,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416510;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416510;s:19:"scheduled_timestamp";i:1682416510;s:9:"timestamp";i:1682416510;}', 2, 1, '2023-04-25 09:55:27', '2023-04-25 11:55:27', 0, NULL),
(72, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:55:10', '2023-04-25 11:55:10', '[58,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416510;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416510;s:19:"scheduled_timestamp";i:1682416510;s:9:"timestamp";i:1682416510;}', 2, 1, '2023-04-25 09:55:27', '2023-04-25 11:55:27', 0, NULL),
(73, 'adjust_download_permissions', 'complete', '2023-04-25 09:55:28', '2023-04-25 11:55:28', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416528;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416528;s:19:"scheduled_timestamp";i:1682416528;s:9:"timestamp";i:1682416528;}', 0, 1, '2023-04-25 09:56:16', '2023-04-25 11:56:16', 0, NULL),
(74, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:56:16', '2023-04-25 11:56:16', '[56,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416576;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416576;s:19:"scheduled_timestamp";i:1682416576;s:9:"timestamp";i:1682416576;}', 2, 1, '2023-04-25 09:56:16', '2023-04-25 11:56:16', 0, NULL),
(75, 'adjust_download_permissions', 'complete', '2023-04-25 09:56:23', '2023-04-25 11:56:23', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416583;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416583;s:19:"scheduled_timestamp";i:1682416583;s:9:"timestamp";i:1682416583;}', 0, 1, '2023-04-25 09:57:29', '2023-04-25 11:57:29', 0, NULL),
(76, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 09:56:23', '2023-04-25 11:56:23', '[56,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416583;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416583;s:19:"scheduled_timestamp";i:1682416583;s:9:"timestamp";i:1682416583;}', 2, 1, '2023-04-25 09:57:29', '2023-04-25 11:57:29', 0, NULL),
(77, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:00:06', '2023-04-25 12:00:06', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416806;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416806;s:19:"scheduled_timestamp";i:1682416806;s:9:"timestamp";i:1682416806;}', 2, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(78, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:00:19', '2023-04-25 12:00:19', '[60,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416819;s:19:"scheduled_timestamp";i:1682416819;s:9:"timestamp";i:1682416819;}', 2, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(79, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:00:19', '2023-04-25 12:00:19', '[61,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416819;s:19:"scheduled_timestamp";i:1682416819;s:9:"timestamp";i:1682416819;}', 2, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(80, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:00:19', '2023-04-25 12:00:19', '[62,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416819;s:19:"scheduled_timestamp";i:1682416819;s:9:"timestamp";i:1682416819;}', 2, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(81, 'adjust_download_permissions', 'complete', '2023-04-25 10:00:19', '2023-04-25 12:00:19', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416819;s:19:"scheduled_timestamp";i:1682416819;s:9:"timestamp";i:1682416819;}', 0, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(82, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:00:19', '2023-04-25 12:00:19', '[59,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682416819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682416819;s:19:"scheduled_timestamp";i:1682416819;s:9:"timestamp";i:1682416819;}', 2, 1, '2023-04-25 10:00:21', '2023-04-25 12:00:21', 0, NULL),
(83, 'adjust_download_permissions', 'complete', '2023-04-25 10:04:24', '2023-04-25 12:04:24', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417064;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417064;s:19:"scheduled_timestamp";i:1682417064;s:9:"timestamp";i:1682417064;}', 0, 1, '2023-04-25 10:04:44', '2023-04-25 12:04:44', 0, NULL),
(84, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:04:24', '2023-04-25 12:04:24', '[60,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417064;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417064;s:19:"scheduled_timestamp";i:1682417064;s:9:"timestamp";i:1682417064;}', 2, 1, '2023-04-25 10:04:44', '2023-04-25 12:04:44', 0, NULL),
(85, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:04:24', '2023-04-25 12:04:24', '[61,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417064;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417064;s:19:"scheduled_timestamp";i:1682417064;s:9:"timestamp";i:1682417064;}', 2, 1, '2023-04-25 10:04:44', '2023-04-25 12:04:44', 0, NULL),
(86, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:04:24', '2023-04-25 12:04:24', '[62,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417064;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417064;s:19:"scheduled_timestamp";i:1682417064;s:9:"timestamp";i:1682417064;}', 2, 1, '2023-04-25 10:04:44', '2023-04-25 12:04:44', 0, NULL),
(87, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:04:29', '2023-04-25 12:04:29', '[62,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417069;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417069;s:19:"scheduled_timestamp";i:1682417069;s:9:"timestamp";i:1682417069;}', 2, 1, '2023-04-25 10:04:44', '2023-04-25 12:04:44', 0, NULL),
(88, 'adjust_download_permissions', 'complete', '2023-04-25 10:05:28', '2023-04-25 12:05:28', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417128;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417128;s:19:"scheduled_timestamp";i:1682417128;s:9:"timestamp";i:1682417128;}', 0, 1, '2023-04-25 10:05:57', '2023-04-25 12:05:57', 0, NULL),
(89, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:05:28', '2023-04-25 12:05:28', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417128;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417128;s:19:"scheduled_timestamp";i:1682417128;s:9:"timestamp";i:1682417128;}', 2, 1, '2023-04-25 10:05:57', '2023-04-25 12:05:57', 0, NULL),
(90, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:05:57', '2023-04-25 12:05:57', '[63,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417157;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417157;s:19:"scheduled_timestamp";i:1682417157;s:9:"timestamp";i:1682417157;}', 2, 1, '2023-04-25 10:05:57', '2023-04-25 12:05:57', 0, NULL),
(91, 'adjust_download_permissions', 'complete', '2023-04-25 10:06:03', '2023-04-25 12:06:03', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417163;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417163;s:19:"scheduled_timestamp";i:1682417163;s:9:"timestamp";i:1682417163;}', 0, 1, '2023-04-25 10:06:21', '2023-04-25 12:06:21', 0, NULL),
(92, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:06:03', '2023-04-25 12:06:03', '[63,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417163;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417163;s:19:"scheduled_timestamp";i:1682417163;s:9:"timestamp";i:1682417163;}', 2, 1, '2023-04-25 10:06:21', '2023-04-25 12:06:21', 0, NULL),
(93, 'adjust_download_permissions', 'complete', '2023-04-25 10:07:00', '2023-04-25 12:07:00', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417220;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417220;s:19:"scheduled_timestamp";i:1682417220;s:9:"timestamp";i:1682417220;}', 0, 1, '2023-04-25 10:07:22', '2023-04-25 12:07:22', 0, NULL),
(94, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:07:01', '2023-04-25 12:07:01', '[63,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417221;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417221;s:19:"scheduled_timestamp";i:1682417221;s:9:"timestamp";i:1682417221;}', 2, 1, '2023-04-25 10:07:22', '2023-04-25 12:07:22', 0, NULL),
(95, 'adjust_download_permissions', 'complete', '2023-04-25 10:07:23', '2023-04-25 12:07:23', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417243;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417243;s:19:"scheduled_timestamp";i:1682417243;s:9:"timestamp";i:1682417243;}', 0, 1, '2023-04-25 10:08:04', '2023-04-25 12:08:04', 0, NULL),
(96, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:07:23', '2023-04-25 12:07:23', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417243;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417243;s:19:"scheduled_timestamp";i:1682417243;s:9:"timestamp";i:1682417243;}', 2, 1, '2023-04-25 10:08:04', '2023-04-25 12:08:04', 0, NULL),
(97, 'adjust_download_permissions', 'complete', '2023-04-25 10:08:09', '2023-04-25 12:08:09', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417289;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417289;s:19:"scheduled_timestamp";i:1682417289;s:9:"timestamp";i:1682417289;}', 0, 1, '2023-04-25 10:08:10', '2023-04-25 12:08:10', 0, NULL),
(98, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:08:09', '2023-04-25 12:08:09', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417289;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417289;s:19:"scheduled_timestamp";i:1682417289;s:9:"timestamp";i:1682417289;}', 2, 1, '2023-04-25 10:08:10', '2023-04-25 12:08:10', 0, NULL),
(99, 'adjust_download_permissions', 'complete', '2023-04-25 10:08:36', '2023-04-25 12:08:36', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417316;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417316;s:19:"scheduled_timestamp";i:1682417316;s:9:"timestamp";i:1682417316;}', 0, 1, '2023-04-25 10:09:30', '2023-04-25 12:09:30', 0, NULL),
(100, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:08:36', '2023-04-25 12:08:36', '[56,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417316;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417316;s:19:"scheduled_timestamp";i:1682417316;s:9:"timestamp";i:1682417316;}', 2, 1, '2023-04-25 10:09:30', '2023-04-25 12:09:30', 0, NULL),
(101, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:12:00', '2023-04-25 12:12:00', '[60,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417520;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417520;s:19:"scheduled_timestamp";i:1682417520;s:9:"timestamp";i:1682417520;}', 2, 1, '2023-04-25 10:12:21', '2023-04-25 12:12:21', 0, NULL),
(102, 'adjust_download_permissions', 'complete', '2023-04-25 10:12:00', '2023-04-25 12:12:00', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417520;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417520;s:19:"scheduled_timestamp";i:1682417520;s:9:"timestamp";i:1682417520;}', 0, 1, '2023-04-25 10:12:21', '2023-04-25 12:12:21', 0, NULL),
(103, 'adjust_download_permissions', 'complete', '2023-04-25 10:13:39', '2023-04-25 12:13:39', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417619;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417619;s:19:"scheduled_timestamp";i:1682417619;s:9:"timestamp";i:1682417619;}', 0, 1, '2023-04-25 10:14:07', '2023-04-25 12:14:07', 0, NULL),
(104, 'adjust_download_permissions', 'complete', '2023-04-25 10:14:55', '2023-04-25 12:14:55', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417695;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417695;s:19:"scheduled_timestamp";i:1682417695;s:9:"timestamp";i:1682417695;}', 0, 1, '2023-04-25 10:15:11', '2023-04-25 12:15:11', 0, NULL),
(105, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:14:55', '2023-04-25 12:14:55', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682417695;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682417695;s:19:"scheduled_timestamp";i:1682417695;s:9:"timestamp";i:1682417695;}', 2, 1, '2023-04-25 10:15:11', '2023-04-25 12:15:11', 0, NULL),
(106, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:41:53', '2023-04-25 12:41:53', '[67,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419313;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419313;s:19:"scheduled_timestamp";i:1682419313;s:9:"timestamp";i:1682419313;}', 2, 1, '2023-04-25 10:42:25', '2023-04-25 12:42:25', 0, NULL),
(107, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:44:33', '2023-04-25 12:44:33', '[68,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419473;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419473;s:19:"scheduled_timestamp";i:1682419473;s:9:"timestamp";i:1682419473;}', 2, 1, '2023-04-25 10:44:48', '2023-04-25 12:44:48', 0, NULL),
(108, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:44:55', '2023-04-25 12:44:55', '[69,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419495;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419495;s:19:"scheduled_timestamp";i:1682419495;s:9:"timestamp";i:1682419495;}', 2, 1, '2023-04-25 10:45:20', '2023-04-25 12:45:20', 0, NULL),
(109, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:44:55', '2023-04-25 12:44:55', '[70,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419495;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419495;s:19:"scheduled_timestamp";i:1682419495;s:9:"timestamp";i:1682419495;}', 2, 1, '2023-04-25 10:45:20', '2023-04-25 12:45:20', 0, NULL),
(110, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:44:56', '2023-04-25 12:44:56', '[71,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419496;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419496;s:19:"scheduled_timestamp";i:1682419496;s:9:"timestamp";i:1682419496;}', 2, 1, '2023-04-25 10:45:20', '2023-04-25 12:45:20', 0, NULL),
(111, 'adjust_download_permissions', 'complete', '2023-04-25 10:44:56', '2023-04-25 12:44:56', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419496;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419496;s:19:"scheduled_timestamp";i:1682419496;s:9:"timestamp";i:1682419496;}', 0, 1, '2023-04-25 10:45:20', '2023-04-25 12:45:20', 0, NULL),
(112, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:44:56', '2023-04-25 12:44:56', '[68,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419496;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419496;s:19:"scheduled_timestamp";i:1682419496;s:9:"timestamp";i:1682419496;}', 2, 1, '2023-04-25 10:45:20', '2023-04-25 12:45:20', 0, NULL),
(113, 'adjust_download_permissions', 'complete', '2023-04-25 10:48:00', '2023-04-25 12:48:00', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419680;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419680;s:19:"scheduled_timestamp";i:1682419680;s:9:"timestamp";i:1682419680;}', 0, 1, '2023-04-25 10:48:11', '2023-04-25 12:48:11', 0, NULL),
(114, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:48:00', '2023-04-25 12:48:00', '[69,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419680;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419680;s:19:"scheduled_timestamp";i:1682419680;s:9:"timestamp";i:1682419680;}', 2, 1, '2023-04-25 10:48:11', '2023-04-25 12:48:11', 0, NULL),
(115, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:48:00', '2023-04-25 12:48:00', '[70,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419680;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419680;s:19:"scheduled_timestamp";i:1682419680;s:9:"timestamp";i:1682419680;}', 2, 1, '2023-04-25 10:48:11', '2023-04-25 12:48:11', 0, NULL),
(116, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:48:00', '2023-04-25 12:48:00', '[71,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419680;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419680;s:19:"scheduled_timestamp";i:1682419680;s:9:"timestamp";i:1682419680;}', 2, 1, '2023-04-25 10:48:11', '2023-04-25 12:48:11', 0, NULL),
(117, 'adjust_download_permissions', 'complete', '2023-04-25 10:48:25', '2023-04-25 12:48:25', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419705;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419705;s:19:"scheduled_timestamp";i:1682419705;s:9:"timestamp";i:1682419705;}', 0, 1, '2023-04-25 10:49:17', '2023-04-25 12:49:17', 0, NULL),
(118, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:48:31', '2023-04-25 12:48:31', '[68,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419711;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419711;s:19:"scheduled_timestamp";i:1682419711;s:9:"timestamp";i:1682419711;}', 2, 1, '2023-04-25 10:49:17', '2023-04-25 12:49:17', 0, NULL),
(119, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:49:47', '2023-04-25 12:49:47', '[67,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682419787;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682419787;s:19:"scheduled_timestamp";i:1682419787;s:9:"timestamp";i:1682419787;}', 2, 1, '2023-04-25 10:50:31', '2023-04-25 12:50:31', 0, NULL),
(120, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 10:55:29', '2023-04-25 12:55:29', '[73,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682420129;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682420129;s:19:"scheduled_timestamp";i:1682420129;s:9:"timestamp";i:1682420129;}', 2, 1, '2023-04-25 10:56:25', '2023-04-25 12:56:25', 0, NULL),
(121, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:45:46', '2023-04-25 13:45:46', '[74,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423146;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423146;s:19:"scheduled_timestamp";i:1682423146;s:9:"timestamp";i:1682423146;}', 2, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(122, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:45:58', '2023-04-25 13:45:58', '[75,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423158;s:19:"scheduled_timestamp";i:1682423158;s:9:"timestamp";i:1682423158;}', 2, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(123, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:45:58', '2023-04-25 13:45:58', '[76,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423158;s:19:"scheduled_timestamp";i:1682423158;s:9:"timestamp";i:1682423158;}', 2, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(124, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:45:58', '2023-04-25 13:45:58', '[77,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423158;s:19:"scheduled_timestamp";i:1682423158;s:9:"timestamp";i:1682423158;}', 2, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(125, 'adjust_download_permissions', 'complete', '2023-04-25 11:45:58', '2023-04-25 13:45:58', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423158;s:19:"scheduled_timestamp";i:1682423158;s:9:"timestamp";i:1682423158;}', 0, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(126, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:45:58', '2023-04-25 13:45:58', '[74,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423158;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423158;s:19:"scheduled_timestamp";i:1682423158;s:9:"timestamp";i:1682423158;}', 2, 1, '2023-04-25 11:46:15', '2023-04-25 13:46:15', 0, NULL),
(127, 'adjust_download_permissions', 'complete', '2023-04-25 11:49:27', '2023-04-25 13:49:27', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423367;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423367;s:19:"scheduled_timestamp";i:1682423367;s:9:"timestamp";i:1682423367;}', 0, 1, '2023-04-25 11:49:39', '2023-04-25 13:49:39', 0, NULL),
(128, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:49:27', '2023-04-25 13:49:27', '[75,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423367;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423367;s:19:"scheduled_timestamp";i:1682423367;s:9:"timestamp";i:1682423367;}', 2, 1, '2023-04-25 11:49:39', '2023-04-25 13:49:39', 0, NULL),
(129, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:49:27', '2023-04-25 13:49:27', '[76,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423367;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423367;s:19:"scheduled_timestamp";i:1682423367;s:9:"timestamp";i:1682423367;}', 2, 1, '2023-04-25 11:49:39', '2023-04-25 13:49:39', 0, NULL),
(130, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:49:27', '2023-04-25 13:49:27', '[77,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423367;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423367;s:19:"scheduled_timestamp";i:1682423367;s:9:"timestamp";i:1682423367;}', 2, 1, '2023-04-25 11:49:39', '2023-04-25 13:49:39', 0, NULL),
(131, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:49:39', '2023-04-25 13:49:39', '[74,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423379;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423379;s:19:"scheduled_timestamp";i:1682423379;s:9:"timestamp";i:1682423379;}', 2, 1, '2023-04-25 11:49:39', '2023-04-25 13:49:39', 0, NULL),
(132, 'adjust_download_permissions', 'complete', '2023-04-25 11:50:02', '2023-04-25 13:50:02', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423402;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423402;s:19:"scheduled_timestamp";i:1682423402;s:9:"timestamp";i:1682423402;}', 0, 1, '2023-04-25 11:50:50', '2023-04-25 13:50:50', 0, NULL),
(133, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 11:50:02', '2023-04-25 13:50:02', '[74,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682423402;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682423402;s:19:"scheduled_timestamp";i:1682423402;s:9:"timestamp";i:1682423402;}', 2, 1, '2023-04-25 11:50:50', '2023-04-25 13:50:50', 0, NULL),
(134, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:15:37', '2023-04-25 14:15:37', '[79,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424937;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424937;s:19:"scheduled_timestamp";i:1682424937;s:9:"timestamp";i:1682424937;}', 2, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(135, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:15:48', '2023-04-25 14:15:48', '[80,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424948;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424948;s:19:"scheduled_timestamp";i:1682424948;s:9:"timestamp";i:1682424948;}', 2, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(136, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:15:48', '2023-04-25 14:15:48', '[81,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424948;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424948;s:19:"scheduled_timestamp";i:1682424948;s:9:"timestamp";i:1682424948;}', 2, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(137, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:15:48', '2023-04-25 14:15:48', '[82,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424948;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424948;s:19:"scheduled_timestamp";i:1682424948;s:9:"timestamp";i:1682424948;}', 2, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(138, 'adjust_download_permissions', 'complete', '2023-04-25 12:15:48', '2023-04-25 14:15:48', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424948;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424948;s:19:"scheduled_timestamp";i:1682424948;s:9:"timestamp";i:1682424948;}', 0, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(139, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:15:48', '2023-04-25 14:15:48', '[79,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682424948;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682424948;s:19:"scheduled_timestamp";i:1682424948;s:9:"timestamp";i:1682424948;}', 2, 1, '2023-04-25 12:16:22', '2023-04-25 14:16:22', 0, NULL),
(140, 'adjust_download_permissions', 'complete', '2023-04-25 12:17:38', '2023-04-25 14:17:38', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425058;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425058;s:19:"scheduled_timestamp";i:1682425058;s:9:"timestamp";i:1682425058;}', 0, 1, '2023-04-25 12:18:32', '2023-04-25 14:18:32', 0, NULL),
(141, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:17:38', '2023-04-25 14:17:38', '[80,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425058;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425058;s:19:"scheduled_timestamp";i:1682425058;s:9:"timestamp";i:1682425058;}', 2, 1, '2023-04-25 12:18:32', '2023-04-25 14:18:32', 0, NULL),
(142, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:17:38', '2023-04-25 14:17:38', '[81,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425058;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425058;s:19:"scheduled_timestamp";i:1682425058;s:9:"timestamp";i:1682425058;}', 2, 1, '2023-04-25 12:18:32', '2023-04-25 14:18:32', 0, NULL),
(143, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:17:38', '2023-04-25 14:17:38', '[82,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425058;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425058;s:19:"scheduled_timestamp";i:1682425058;s:9:"timestamp";i:1682425058;}', 2, 1, '2023-04-25 12:18:32', '2023-04-25 14:18:32', 0, NULL),
(144, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:18:12', '2023-04-25 14:18:12', '[79,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425092;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425092;s:19:"scheduled_timestamp";i:1682425092;s:9:"timestamp";i:1682425092;}', 2, 1, '2023-04-25 12:18:32', '2023-04-25 14:18:32', 0, NULL),
(145, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:19:48', '2023-04-25 14:19:48', '[83,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425188;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425188;s:19:"scheduled_timestamp";i:1682425188;s:9:"timestamp";i:1682425188;}', 2, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL) ;
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(146, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:19:57', '2023-04-25 14:19:57', '[84,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425197;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425197;s:19:"scheduled_timestamp";i:1682425197;s:9:"timestamp";i:1682425197;}', 2, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL),
(147, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:19:57', '2023-04-25 14:19:57', '[85,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425197;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425197;s:19:"scheduled_timestamp";i:1682425197;s:9:"timestamp";i:1682425197;}', 2, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL),
(148, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:19:57', '2023-04-25 14:19:57', '[86,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425197;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425197;s:19:"scheduled_timestamp";i:1682425197;s:9:"timestamp";i:1682425197;}', 2, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL),
(149, 'adjust_download_permissions', 'complete', '2023-04-25 12:19:57', '2023-04-25 14:19:57', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425197;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425197;s:19:"scheduled_timestamp";i:1682425197;s:9:"timestamp";i:1682425197;}', 0, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL),
(150, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:19:57', '2023-04-25 14:19:57', '[83,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425197;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425197;s:19:"scheduled_timestamp";i:1682425197;s:9:"timestamp";i:1682425197;}', 2, 1, '2023-04-25 12:20:26', '2023-04-25 14:20:26', 0, NULL),
(151, 'adjust_download_permissions', 'complete', '2023-04-25 12:21:36', '2023-04-25 14:21:36', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425296;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425296;s:19:"scheduled_timestamp";i:1682425296;s:9:"timestamp";i:1682425296;}', 0, 1, '2023-04-25 12:22:10', '2023-04-25 14:22:10', 0, NULL),
(152, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:21:36', '2023-04-25 14:21:36', '[84,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425296;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425296;s:19:"scheduled_timestamp";i:1682425296;s:9:"timestamp";i:1682425296;}', 2, 1, '2023-04-25 12:22:10', '2023-04-25 14:22:10', 0, NULL),
(153, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:21:36', '2023-04-25 14:21:36', '[85,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425296;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425296;s:19:"scheduled_timestamp";i:1682425296;s:9:"timestamp";i:1682425296;}', 2, 1, '2023-04-25 12:22:10', '2023-04-25 14:22:10', 0, NULL),
(154, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:21:36', '2023-04-25 14:21:36', '[86,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425296;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425296;s:19:"scheduled_timestamp";i:1682425296;s:9:"timestamp";i:1682425296;}', 2, 1, '2023-04-25 12:22:10', '2023-04-25 14:22:10', 0, NULL),
(155, 'adjust_download_permissions', 'complete', '2023-04-25 12:24:11', '2023-04-25 14:24:11', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425451;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425451;s:19:"scheduled_timestamp";i:1682425451;s:9:"timestamp";i:1682425451;}', 0, 1, '2023-04-25 12:24:32', '2023-04-25 14:24:32', 0, NULL),
(156, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:24:11', '2023-04-25 14:24:11', '[83,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682425451;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682425451;s:19:"scheduled_timestamp";i:1682425451;s:9:"timestamp";i:1682425451;}', 2, 1, '2023-04-25 12:24:32', '2023-04-25 14:24:32', 0, NULL),
(157, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:35:53', '2023-04-25 14:35:53', '[87,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682426153;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682426153;s:19:"scheduled_timestamp";i:1682426153;s:9:"timestamp";i:1682426153;}', 2, 1, '2023-04-25 12:36:13', '2023-04-25 14:36:13', 0, NULL),
(158, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:45:43', '2023-04-25 14:45:43', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682426743;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682426743;s:19:"scheduled_timestamp";i:1682426743;s:9:"timestamp";i:1682426743;}', 2, 1, '2023-04-25 12:46:42', '2023-04-25 14:46:42', 0, NULL),
(159, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:48:50', '2023-04-25 14:48:50', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682426930;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682426930;s:19:"scheduled_timestamp";i:1682426930;s:9:"timestamp";i:1682426930;}', 2, 1, '2023-04-25 12:49:59', '2023-04-25 14:49:59', 0, NULL),
(160, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 12:55:36', '2023-04-25 14:55:36', '[90,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427336;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427336;s:19:"scheduled_timestamp";i:1682427336;s:9:"timestamp";i:1682427336;}', 2, 1, '2023-04-25 12:56:04', '2023-04-25 14:56:04', 0, NULL),
(161, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:01:38', '2023-04-25 15:01:38', '[91,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427698;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427698;s:19:"scheduled_timestamp";i:1682427698;s:9:"timestamp";i:1682427698;}', 2, 1, '2023-04-25 13:01:39', '2023-04-25 15:01:39', 0, NULL),
(162, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:02:58', '2023-04-25 15:02:58', '[91,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427778;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427778;s:19:"scheduled_timestamp";i:1682427778;s:9:"timestamp";i:1682427778;}', 2, 1, '2023-04-25 13:03:33', '2023-04-25 15:03:33', 0, NULL),
(163, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:05:08', '2023-04-25 15:05:08', '[94,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427908;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427908;s:19:"scheduled_timestamp";i:1682427908;s:9:"timestamp";i:1682427908;}', 2, 1, '2023-04-25 13:05:24', '2023-04-25 15:05:24', 0, NULL),
(164, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:05:57', '2023-04-25 15:05:57', '[94,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427957;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427957;s:19:"scheduled_timestamp";i:1682427957;s:9:"timestamp";i:1682427957;}', 2, 1, '2023-04-25 13:06:25', '2023-04-25 15:06:25', 0, NULL),
(165, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:06:36', '2023-04-25 15:06:36', '[91,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682427996;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682427996;s:19:"scheduled_timestamp";i:1682427996;s:9:"timestamp";i:1682427996;}', 2, 1, '2023-04-25 13:06:56', '2023-04-25 15:06:56', 0, NULL),
(166, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:08:28', '2023-04-25 15:08:28', '[96,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428108;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428108;s:19:"scheduled_timestamp";i:1682428108;s:9:"timestamp";i:1682428108;}', 2, 1, '2023-04-25 13:09:03', '2023-04-25 15:09:03', 0, NULL),
(167, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:09:52', '2023-04-25 15:09:52', '[97,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428192;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428192;s:19:"scheduled_timestamp";i:1682428192;s:9:"timestamp";i:1682428192;}', 2, 1, '2023-04-25 13:10:11', '2023-04-25 15:10:11', 0, NULL),
(168, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:31', '2023-04-25 15:12:31', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428351;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428351;s:19:"scheduled_timestamp";i:1682428351;s:9:"timestamp";i:1682428351;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(169, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:42', '2023-04-25 15:12:42', '[99,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428362;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428362;s:19:"scheduled_timestamp";i:1682428362;s:9:"timestamp";i:1682428362;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(170, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:42', '2023-04-25 15:12:42', '[100,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428362;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428362;s:19:"scheduled_timestamp";i:1682428362;s:9:"timestamp";i:1682428362;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(171, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:42', '2023-04-25 15:12:42', '[101,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428362;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428362;s:19:"scheduled_timestamp";i:1682428362;s:9:"timestamp";i:1682428362;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(172, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[102,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(173, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[103,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(174, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[104,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(175, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[105,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(176, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[106,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(177, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[107,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(178, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[108,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(179, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[109,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(180, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[110,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(181, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[111,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(182, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[112,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(183, 'adjust_download_permissions', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 0, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(184, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:12:43', '2023-04-25 15:12:43', '[98,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428363;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428363;s:19:"scheduled_timestamp";i:1682428363;s:9:"timestamp";i:1682428363;}', 2, 1, '2023-04-25 13:13:27', '2023-04-25 15:13:27', 0, NULL),
(185, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:19:06', '2023-04-25 15:19:06', '[111,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428746;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428746;s:19:"scheduled_timestamp";i:1682428746;s:9:"timestamp";i:1682428746;}', 2, 1, '2023-04-25 13:19:22', '2023-04-25 15:19:22', 0, NULL),
(186, 'adjust_download_permissions', 'complete', '2023-04-25 13:19:06', '2023-04-25 15:19:06', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428746;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428746;s:19:"scheduled_timestamp";i:1682428746;s:9:"timestamp";i:1682428746;}', 0, 1, '2023-04-25 13:19:22', '2023-04-25 15:19:22', 0, NULL),
(187, 'adjust_download_permissions', 'complete', '2023-04-25 13:19:42', '2023-04-25 15:19:42', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428782;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428782;s:19:"scheduled_timestamp";i:1682428782;s:9:"timestamp";i:1682428782;}', 0, 1, '2023-04-25 13:20:08', '2023-04-25 15:20:08', 0, NULL),
(188, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:19:42', '2023-04-25 15:19:42', '[112,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428782;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428782;s:19:"scheduled_timestamp";i:1682428782;s:9:"timestamp";i:1682428782;}', 2, 1, '2023-04-25 13:20:08', '2023-04-25 15:20:08', 0, NULL),
(189, 'adjust_download_permissions', 'complete', '2023-04-25 13:20:46', '2023-04-25 15:20:46', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428846;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428846;s:19:"scheduled_timestamp";i:1682428846;s:9:"timestamp";i:1682428846;}', 0, 1, '2023-04-25 13:21:23', '2023-04-25 15:21:23', 0, NULL),
(190, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:20:46', '2023-04-25 15:20:46', '[99,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428846;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428846;s:19:"scheduled_timestamp";i:1682428846;s:9:"timestamp";i:1682428846;}', 2, 1, '2023-04-25 13:21:23', '2023-04-25 15:21:23', 0, NULL),
(191, 'adjust_download_permissions', 'complete', '2023-04-25 13:21:32', '2023-04-25 15:21:32', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428892;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428892;s:19:"scheduled_timestamp";i:1682428892;s:9:"timestamp";i:1682428892;}', 0, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(192, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:32', '2023-04-25 15:21:32', '[103,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428892;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428892;s:19:"scheduled_timestamp";i:1682428892;s:9:"timestamp";i:1682428892;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(193, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:39', '2023-04-25 15:21:39', '[100,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428899;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428899;s:19:"scheduled_timestamp";i:1682428899;s:9:"timestamp";i:1682428899;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(194, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:43', '2023-04-25 15:21:43', '[101,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428903;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428903;s:19:"scheduled_timestamp";i:1682428903;s:9:"timestamp";i:1682428903;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(195, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:48', '2023-04-25 15:21:48', '[102,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428908;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428908;s:19:"scheduled_timestamp";i:1682428908;s:9:"timestamp";i:1682428908;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(196, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:53', '2023-04-25 15:21:53', '[104,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428913;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428913;s:19:"scheduled_timestamp";i:1682428913;s:9:"timestamp";i:1682428913;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(197, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:21:59', '2023-04-25 15:21:59', '[105,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428919;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428919;s:19:"scheduled_timestamp";i:1682428919;s:9:"timestamp";i:1682428919;}', 2, 1, '2023-04-25 13:22:23', '2023-04-25 15:22:23', 0, NULL),
(198, 'adjust_download_permissions', 'complete', '2023-04-25 13:22:38', '2023-04-25 15:22:38', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428958;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428958;s:19:"scheduled_timestamp";i:1682428958;s:9:"timestamp";i:1682428958;}', 0, 1, '2023-04-25 13:23:21', '2023-04-25 15:23:21', 0, NULL),
(199, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:22:38', '2023-04-25 15:22:38', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428958;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428958;s:19:"scheduled_timestamp";i:1682428958;s:9:"timestamp";i:1682428958;}', 2, 1, '2023-04-25 13:23:21', '2023-04-25 15:23:21', 0, NULL),
(200, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 15:09:11', '2023-04-25 17:09:11', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682435351;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682435351;s:19:"scheduled_timestamp";i:1682435351;s:9:"timestamp";i:1682435351;}', 2, 1, '2023-04-25 15:09:14', '2023-04-25 17:09:14', 0, NULL),
(201, 'adjust_download_permissions', 'complete', '2023-04-25 15:14:42', '2023-04-25 17:14:42', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682435682;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682435682;s:19:"scheduled_timestamp";i:1682435682;s:9:"timestamp";i:1682435682;}', 0, 1, '2023-04-25 15:15:11', '2023-04-25 17:15:11', 0, NULL),
(202, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 15:14:42', '2023-04-25 17:14:42', '[79,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682435682;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682435682;s:19:"scheduled_timestamp";i:1682435682;s:9:"timestamp";i:1682435682;}', 2, 1, '2023-04-25 15:15:11', '2023-04-25 17:15:11', 0, NULL),
(203, 'adjust_download_permissions', 'complete', '2023-04-25 15:24:05', '2023-04-25 17:24:05', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436245;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436245;s:19:"scheduled_timestamp";i:1682436245;s:9:"timestamp";i:1682436245;}', 0, 1, '2023-04-25 15:24:22', '2023-04-25 17:24:22', 0, NULL),
(204, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 15:24:05', '2023-04-25 17:24:05', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436245;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436245;s:19:"scheduled_timestamp";i:1682436245;s:9:"timestamp";i:1682436245;}', 2, 1, '2023-04-25 15:24:23', '2023-04-25 17:24:23', 0, NULL),
(205, 'adjust_download_permissions', 'complete', '2023-04-25 15:27:11', '2023-04-25 17:27:11', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436431;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436431;s:19:"scheduled_timestamp";i:1682436431;s:9:"timestamp";i:1682436431;}', 0, 1, '2023-04-25 15:27:25', '2023-04-25 17:27:25', 0, NULL),
(206, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 15:27:11', '2023-04-25 17:27:11', '[106,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436431;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436431;s:19:"scheduled_timestamp";i:1682436431;s:9:"timestamp";i:1682436431;}', 2, 1, '2023-04-25 15:27:25', '2023-04-25 17:27:25', 0, NULL),
(207, 'adjust_download_permissions', 'complete', '2023-04-25 15:27:26', '2023-04-25 17:27:26', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436446;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436446;s:19:"scheduled_timestamp";i:1682436446;s:9:"timestamp";i:1682436446;}', 0, 1, '2023-04-25 15:28:13', '2023-04-25 17:28:13', 0, NULL),
(208, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 15:27:26', '2023-04-25 17:27:26', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682436446;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682436446;s:19:"scheduled_timestamp";i:1682436446;s:9:"timestamp";i:1682436446;}', 2, 1, '2023-04-25 15:28:13', '2023-04-25 17:28:13', 0, NULL),
(209, 'adjust_download_permissions', 'complete', '2023-04-25 17:33:13', '2023-04-25 19:33:13', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682443993;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682443993;s:19:"scheduled_timestamp";i:1682443993;s:9:"timestamp";i:1682443993;}', 0, 1, '2023-04-25 17:33:35', '2023-04-25 19:33:35', 0, NULL),
(210, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:33:13', '2023-04-25 19:33:13', '[107,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682443993;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682443993;s:19:"scheduled_timestamp";i:1682443993;s:9:"timestamp";i:1682443993;}', 2, 1, '2023-04-25 17:33:35', '2023-04-25 19:33:35', 0, NULL),
(211, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:33:13', '2023-04-25 19:33:13', '[108,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682443993;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682443993;s:19:"scheduled_timestamp";i:1682443993;s:9:"timestamp";i:1682443993;}', 2, 1, '2023-04-25 17:33:35', '2023-04-25 19:33:35', 0, NULL),
(212, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:33:13', '2023-04-25 19:33:13', '[109,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682443993;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682443993;s:19:"scheduled_timestamp";i:1682443993;s:9:"timestamp";i:1682443993;}', 2, 1, '2023-04-25 17:33:35', '2023-04-25 19:33:35', 0, NULL),
(213, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:33:13', '2023-04-25 19:33:13', '[110,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682443993;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682443993;s:19:"scheduled_timestamp";i:1682443993;s:9:"timestamp";i:1682443993;}', 2, 1, '2023-04-25 17:33:35', '2023-04-25 19:33:35', 0, NULL),
(214, 'adjust_download_permissions', 'complete', '2023-04-25 17:33:50', '2023-04-25 19:33:50', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444030;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444030;s:19:"scheduled_timestamp";i:1682444030;s:9:"timestamp";i:1682444030;}', 0, 1, '2023-04-25 17:34:23', '2023-04-25 19:34:23', 0, NULL),
(215, 'adjust_download_permissions', 'complete', '2023-04-25 17:34:24', '2023-04-25 19:34:24', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444064;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444064;s:19:"scheduled_timestamp";i:1682444064;s:9:"timestamp";i:1682444064;}', 0, 1, '2023-04-25 17:34:51', '2023-04-25 19:34:51', 0, NULL),
(216, 'adjust_download_permissions', 'complete', '2023-04-25 17:35:00', '2023-04-25 19:35:00', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444100;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444100;s:19:"scheduled_timestamp";i:1682444100;s:9:"timestamp";i:1682444100;}', 0, 1, '2023-04-25 17:35:23', '2023-04-25 19:35:23', 0, NULL),
(217, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:35:00', '2023-04-25 19:35:00', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444100;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444100;s:19:"scheduled_timestamp";i:1682444100;s:9:"timestamp";i:1682444100;}', 2, 1, '2023-04-25 17:35:23', '2023-04-25 19:35:23', 0, NULL),
(218, 'adjust_download_permissions', 'complete', '2023-04-25 17:35:55', '2023-04-25 19:35:55', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444155;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444155;s:19:"scheduled_timestamp";i:1682444155;s:9:"timestamp";i:1682444155;}', 0, 1, '2023-04-25 17:36:27', '2023-04-25 19:36:27', 0, NULL),
(219, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:35:55', '2023-04-25 19:35:55', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444155;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444155;s:19:"scheduled_timestamp";i:1682444155;s:9:"timestamp";i:1682444155;}', 2, 1, '2023-04-25 17:36:27', '2023-04-25 19:36:27', 0, NULL),
(220, 'adjust_download_permissions', 'complete', '2023-04-25 17:37:00', '2023-04-25 19:37:00', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444220;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444220;s:19:"scheduled_timestamp";i:1682444220;s:9:"timestamp";i:1682444220;}', 0, 1, '2023-04-25 17:37:21', '2023-04-25 19:37:21', 0, NULL),
(221, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 17:37:00', '2023-04-25 19:37:00', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682444220;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682444220;s:19:"scheduled_timestamp";i:1682444220;s:9:"timestamp";i:1682444220;}', 2, 1, '2023-04-25 17:37:21', '2023-04-25 19:37:21', 0, NULL),
(222, 'adjust_download_permissions', 'complete', '2023-04-26 07:40:19', '2023-04-26 09:40:19', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682494819;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682494819;s:19:"scheduled_timestamp";i:1682494819;s:9:"timestamp";i:1682494819;}', 0, 1, '2023-04-26 07:40:22', '2023-04-26 09:40:22', 0, NULL),
(223, 'adjust_download_permissions', 'complete', '2023-04-26 07:40:25', '2023-04-26 09:40:25', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682494825;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682494825;s:19:"scheduled_timestamp";i:1682494825;s:9:"timestamp";i:1682494825;}', 0, 1, '2023-04-26 07:41:14', '2023-04-26 09:41:14', 0, NULL),
(224, 'adjust_download_permissions', 'complete', '2023-04-26 07:50:37', '2023-04-26 09:50:37', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682495437;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682495437;s:19:"scheduled_timestamp";i:1682495437;s:9:"timestamp";i:1682495437;}', 0, 1, '2023-04-26 07:51:21', '2023-04-26 09:51:21', 0, NULL),
(225, 'adjust_download_permissions', 'complete', '2023-04-26 07:50:43', '2023-04-26 09:50:43', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682495443;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682495443;s:19:"scheduled_timestamp";i:1682495443;s:9:"timestamp";i:1682495443;}', 0, 1, '2023-04-26 07:51:21', '2023-04-26 09:51:21', 0, NULL),
(226, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-27 07:59:04', '2023-04-27 09:59:04', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682582344;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682582344;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682582344;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682582344;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-27 08:00:11', '2023-04-27 10:00:11', 0, NULL),
(227, 'action_scheduler/migration_hook', 'complete', '2023-04-26 08:39:56', '2023-04-26 10:39:56', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682498396;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682498396;s:19:"scheduled_timestamp";i:1682498396;s:9:"timestamp";i:1682498396;}', 1, 1, '2023-04-26 08:41:41', '2023-04-26 10:41:41', 0, NULL),
(228, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-26 08:45:54', '2023-04-26 10:45:54', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682498754;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682498754;s:19:"scheduled_timestamp";i:1682498754;s:9:"timestamp";i:1682498754;}', 2, 1, '2023-04-26 08:49:38', '2023-04-26 10:49:38', 0, NULL),
(229, 'adjust_download_permissions', 'complete', '2023-04-26 10:37:45', '2023-04-26 12:37:45', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682505465;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682505465;s:19:"scheduled_timestamp";i:1682505465;s:9:"timestamp";i:1682505465;}', 0, 1, '2023-04-26 10:38:23', '2023-04-26 12:38:23', 0, NULL),
(230, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-26 12:27:46', '2023-04-26 14:27:46', '[230,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682512066;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682512066;s:19:"scheduled_timestamp";i:1682512066;s:9:"timestamp";i:1682512066;}', 2, 1, '2023-04-26 12:29:55', '2023-04-26 14:29:55', 0, NULL),
(231, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-26 16:12:58', '2023-04-26 18:12:58', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682525578;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682525578;s:19:"scheduled_timestamp";i:1682525578;s:9:"timestamp";i:1682525578;}', 2, 1, '2023-04-26 16:13:20', '2023-04-26 18:13:20', 0, NULL),
(232, 'adjust_download_permissions', 'complete', '2023-04-26 16:13:58', '2023-04-26 18:13:58', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682525638;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682525638;s:19:"scheduled_timestamp";i:1682525638;s:9:"timestamp";i:1682525638;}', 0, 1, '2023-04-26 16:14:00', '2023-04-26 18:14:00', 0, NULL),
(233, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-26 16:13:58', '2023-04-26 18:13:58', '[83,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682525638;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682525638;s:19:"scheduled_timestamp";i:1682525638;s:9:"timestamp";i:1682525638;}', 2, 1, '2023-04-26 16:14:00', '2023-04-26 18:14:00', 0, NULL),
(234, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-28 08:00:11', '2023-04-28 10:00:11', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682668811;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682668811;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682668811;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682668811;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-28 08:00:29', '2023-04-28 10:00:29', 0, NULL),
(235, 'adjust_download_permissions', 'complete', '2023-04-27 09:20:18', '2023-04-27 11:20:18', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587218;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587218;s:19:"scheduled_timestamp";i:1682587218;s:9:"timestamp";i:1682587218;}', 0, 1, '2023-04-27 09:20:24', '2023-04-27 11:20:24', 0, NULL),
(236, 'adjust_download_permissions', 'complete', '2023-04-27 09:20:27', '2023-04-27 11:20:27', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587227;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587227;s:19:"scheduled_timestamp";i:1682587227;s:9:"timestamp";i:1682587227;}', 0, 1, '2023-04-27 09:21:11', '2023-04-27 11:21:11', 0, NULL),
(237, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:20:27', '2023-04-27 11:20:27', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587227;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587227;s:19:"scheduled_timestamp";i:1682587227;s:9:"timestamp";i:1682587227;}', 2, 1, '2023-04-27 09:21:11', '2023-04-27 11:21:11', 0, NULL),
(238, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:24:40', '2023-04-27 11:24:40', '[90,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587480;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587480;s:19:"scheduled_timestamp";i:1682587480;s:9:"timestamp";i:1682587480;}', 2, 1, '2023-04-27 09:25:23', '2023-04-27 11:25:23', 0, NULL),
(239, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:25:24', '2023-04-27 11:25:24', '[88,2]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587524;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587524;s:19:"scheduled_timestamp";i:1682587524;s:9:"timestamp";i:1682587524;}', 2, 1, '2023-04-27 09:25:41', '2023-04-27 11:25:41', 0, NULL),
(240, 'adjust_download_permissions', 'complete', '2023-04-27 09:27:59', '2023-04-27 11:27:59', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587679;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587679;s:19:"scheduled_timestamp";i:1682587679;s:9:"timestamp";i:1682587679;}', 0, 1, '2023-04-27 09:28:22', '2023-04-27 11:28:22', 0, NULL),
(241, 'adjust_download_permissions', 'complete', '2023-04-27 09:28:23', '2023-04-27 11:28:23', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587703;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587703;s:19:"scheduled_timestamp";i:1682587703;s:9:"timestamp";i:1682587703;}', 0, 1, '2023-04-27 09:29:06', '2023-04-27 11:29:06', 0, NULL),
(242, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:28:23', '2023-04-27 11:28:23', '[83,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587703;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587703;s:19:"scheduled_timestamp";i:1682587703;s:9:"timestamp";i:1682587703;}', 2, 1, '2023-04-27 09:29:06', '2023-04-27 11:29:06', 0, NULL),
(243, 'adjust_download_permissions', 'complete', '2023-04-27 09:30:00', '2023-04-27 11:30:00', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587800;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587800;s:19:"scheduled_timestamp";i:1682587800;s:9:"timestamp";i:1682587800;}', 0, 1, '2023-04-27 09:30:07', '2023-04-27 11:30:07', 0, NULL),
(244, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:30:07', '2023-04-27 11:30:07', '[79,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587807;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587807;s:19:"scheduled_timestamp";i:1682587807;s:9:"timestamp";i:1682587807;}', 2, 1, '2023-04-27 09:30:07', '2023-04-27 11:30:07', 0, NULL),
(245, 'adjust_download_permissions', 'complete', '2023-04-27 09:30:37', '2023-04-27 11:30:37', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587837;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587837;s:19:"scheduled_timestamp";i:1682587837;s:9:"timestamp";i:1682587837;}', 0, 1, '2023-04-27 09:31:18', '2023-04-27 11:31:18', 0, NULL) ;
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(246, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:30:37', '2023-04-27 11:30:37', '[74,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587837;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587837;s:19:"scheduled_timestamp";i:1682587837;s:9:"timestamp";i:1682587837;}', 2, 1, '2023-04-27 09:31:18', '2023-04-27 11:31:18', 0, NULL),
(247, 'adjust_download_permissions', 'complete', '2023-04-27 09:32:15', '2023-04-27 11:32:15', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587935;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587935;s:19:"scheduled_timestamp";i:1682587935;s:9:"timestamp";i:1682587935;}', 0, 1, '2023-04-27 09:32:31', '2023-04-27 11:32:31', 0, NULL),
(248, 'adjust_download_permissions', 'complete', '2023-04-27 09:32:33', '2023-04-27 11:32:33', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587953;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587953;s:19:"scheduled_timestamp";i:1682587953;s:9:"timestamp";i:1682587953;}', 0, 1, '2023-04-27 09:32:38', '2023-04-27 11:32:38', 0, NULL),
(249, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:32:33', '2023-04-27 11:32:33', '[68,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682587953;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682587953;s:19:"scheduled_timestamp";i:1682587953;s:9:"timestamp";i:1682587953;}', 2, 1, '2023-04-27 09:32:38', '2023-04-27 11:32:38', 0, NULL),
(250, 'adjust_download_permissions', 'complete', '2023-04-27 09:34:41', '2023-04-27 11:34:41', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588081;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588081;s:19:"scheduled_timestamp";i:1682588081;s:9:"timestamp";i:1682588081;}', 0, 1, '2023-04-27 09:35:22', '2023-04-27 11:35:22', 0, NULL),
(251, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:35:01', '2023-04-27 11:35:01', '[59,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588101;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588101;s:19:"scheduled_timestamp";i:1682588101;s:9:"timestamp";i:1682588101;}', 2, 1, '2023-04-27 09:35:22', '2023-04-27 11:35:22', 0, NULL),
(252, 'adjust_download_permissions', 'complete', '2023-04-27 09:35:48', '2023-04-27 11:35:48', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588148;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588148;s:19:"scheduled_timestamp";i:1682588148;s:9:"timestamp";i:1682588148;}', 0, 1, '2023-04-27 09:36:29', '2023-04-27 11:36:29', 0, NULL),
(253, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:36:02', '2023-04-27 11:36:02', '[56,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588162;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588162;s:19:"scheduled_timestamp";i:1682588162;s:9:"timestamp";i:1682588162;}', 2, 1, '2023-04-27 09:36:29', '2023-04-27 11:36:29', 0, NULL),
(254, 'adjust_download_permissions', 'complete', '2023-04-27 09:37:07', '2023-04-27 11:37:07', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588227;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588227;s:19:"scheduled_timestamp";i:1682588227;s:9:"timestamp";i:1682588227;}', 0, 1, '2023-04-27 09:37:21', '2023-04-27 11:37:21', 0, NULL),
(255, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-27 09:37:17', '2023-04-27 11:37:17', '[51,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682588237;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682588237;s:19:"scheduled_timestamp";i:1682588237;s:9:"timestamp";i:1682588237;}', 2, 1, '2023-04-27 09:37:21', '2023-04-27 11:37:21', 0, NULL),
(256, 'wc-admin_import_orders', 'complete', '2023-04-27 10:33:12', '2023-04-27 12:33:12', '[261]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682591592;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682591592;s:19:"scheduled_timestamp";i:1682591592;s:9:"timestamp";i:1682591592;}', 3, 1, '2023-04-27 10:34:18', '2023-04-27 12:34:18', 0, NULL),
(257, 'wc-admin_import_orders', 'complete', '2023-04-27 10:34:47', '2023-04-27 12:34:47', '[262]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682591687;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682591687;s:19:"scheduled_timestamp";i:1682591687;s:9:"timestamp";i:1682591687;}', 3, 1, '2023-04-27 10:35:50', '2023-04-27 12:35:50', 0, NULL),
(258, 'wc-admin_import_orders', 'complete', '2023-04-27 10:35:56', '2023-04-27 12:35:56', '[262]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682591756;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682591756;s:19:"scheduled_timestamp";i:1682591756;s:9:"timestamp";i:1682591756;}', 3, 1, '2023-04-27 10:36:17', '2023-04-27 12:36:17', 0, NULL),
(259, 'adjust_download_permissions', 'complete', '2023-04-27 10:35:58', '2023-04-27 12:35:58', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682591758;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682591758;s:19:"scheduled_timestamp";i:1682591758;s:9:"timestamp";i:1682591758;}', 0, 1, '2023-04-27 10:36:17', '2023-04-27 12:36:17', 0, NULL),
(260, 'wc-admin_import_orders', 'complete', '2023-04-27 12:10:00', '2023-04-27 14:10:00', '[261]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682597400;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682597400;s:19:"scheduled_timestamp";i:1682597400;s:9:"timestamp";i:1682597400;}', 3, 1, '2023-04-27 12:10:55', '2023-04-27 14:10:55', 0, NULL),
(261, 'action_scheduler/migration_hook', 'complete', '2023-04-27 20:17:53', '2023-04-27 22:17:53', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682626673;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682626673;s:19:"scheduled_timestamp";i:1682626673;s:9:"timestamp";i:1682626673;}', 1, 1, '2023-04-27 20:18:06', '2023-04-27 22:18:06', 0, NULL),
(262, 'action_scheduler/migration_hook', 'complete', '2023-04-27 20:38:11', '2023-04-27 22:38:11', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682627891;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682627891;s:19:"scheduled_timestamp";i:1682627891;s:9:"timestamp";i:1682627891;}', 1, 1, '2023-04-27 20:38:32', '2023-04-27 22:38:32', 0, NULL),
(263, 'action_scheduler/migration_hook', 'complete', '2023-04-27 21:10:29', '2023-04-27 23:10:29', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682629829;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682629829;s:19:"scheduled_timestamp";i:1682629829;s:9:"timestamp";i:1682629829;}', 1, 1, '2023-04-27 21:11:08', '2023-04-27 23:11:08', 0, NULL),
(264, 'action_scheduler/migration_hook', 'complete', '2023-04-27 21:13:17', '2023-04-27 23:13:17', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682629997;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682629997;s:19:"scheduled_timestamp";i:1682629997;s:9:"timestamp";i:1682629997;}', 1, 1, '2023-04-27 21:13:31', '2023-04-27 23:13:31', 0, NULL),
(265, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-29 08:00:29', '2023-04-29 10:00:29', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682755229;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682755229;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682755229;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682755229;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-05-01 07:18:11', '2023-05-01 09:18:11', 0, NULL),
(266, 'action_scheduler/migration_hook', 'complete', '2023-04-28 08:01:30', '2023-04-28 10:01:30', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682668890;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682668890;s:19:"scheduled_timestamp";i:1682668890;s:9:"timestamp";i:1682668890;}', 1, 1, '2023-04-28 08:02:51', '2023-04-28 10:02:51', 0, NULL),
(267, 'woocommerce_cleanup_draft_orders', 'complete', '2023-05-02 07:18:11', '2023-05-02 09:18:11', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1683011891;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1683011891;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1683011891;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1683011891;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-05-02 07:19:04', '2023-05-02 09:19:04', 0, NULL),
(268, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[183,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(269, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[168,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(270, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[167,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(271, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[95,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(272, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[65,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(273, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-05-01 11:58:50', '2023-05-01 13:58:50', '[64,3]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682942330;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682942330;s:19:"scheduled_timestamp";i:1682942330;s:9:"timestamp";i:1682942330;}', 2, 1, '2023-05-01 11:59:37', '2023-05-01 13:59:37', 0, NULL),
(274, 'wc-admin_import_orders', 'complete', '2023-05-01 12:38:18', '2023-05-01 14:38:18', '[291]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944698;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944698;s:19:"scheduled_timestamp";i:1682944698;s:9:"timestamp";i:1682944698;}', 3, 1, '2023-05-01 12:38:55', '2023-05-01 14:38:55', 0, NULL),
(275, 'wc-admin_import_orders', 'complete', '2023-05-01 12:39:00', '2023-05-01 14:39:00', '[291]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944740;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944740;s:19:"scheduled_timestamp";i:1682944740;s:9:"timestamp";i:1682944740;}', 3, 1, '2023-05-01 12:39:15', '2023-05-01 14:39:15', 0, NULL),
(276, 'adjust_download_permissions', 'complete', '2023-05-01 12:39:02', '2023-05-01 14:39:02', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944742;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944742;s:19:"scheduled_timestamp";i:1682944742;s:9:"timestamp";i:1682944742;}', 0, 1, '2023-05-01 12:39:15', '2023-05-01 14:39:15', 0, NULL),
(277, 'adjust_download_permissions', 'complete', '2023-05-01 12:39:02', '2023-05-01 14:39:02', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944742;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944742;s:19:"scheduled_timestamp";i:1682944742;s:9:"timestamp";i:1682944742;}', 0, 1, '2023-05-01 12:39:16', '2023-05-01 14:39:16', 0, NULL),
(278, 'adjust_download_permissions', 'complete', '2023-05-01 12:39:02', '2023-05-01 14:39:02', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944742;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944742;s:19:"scheduled_timestamp";i:1682944742;s:9:"timestamp";i:1682944742;}', 0, 1, '2023-05-01 12:39:16', '2023-05-01 14:39:16', 0, NULL),
(279, 'wc-admin_import_orders', 'complete', '2023-05-01 12:40:15', '2023-05-01 14:40:15', '[291]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944815;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944815;s:19:"scheduled_timestamp";i:1682944815;s:9:"timestamp";i:1682944815;}', 3, 1, '2023-05-01 12:40:18', '2023-05-01 14:40:18', 0, NULL),
(280, 'wc-admin_import_orders', 'complete', '2023-05-01 12:43:03', '2023-05-01 14:43:03', '[262]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682944983;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682944983;s:19:"scheduled_timestamp";i:1682944983;s:9:"timestamp";i:1682944983;}', 3, 1, '2023-05-01 12:43:23', '2023-05-01 14:43:23', 0, NULL),
(281, 'wc-admin_import_orders', 'complete', '2023-05-01 12:43:32', '2023-05-01 14:43:32', '[262]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945012;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945012;s:19:"scheduled_timestamp";i:1682945012;s:9:"timestamp";i:1682945012;}', 3, 1, '2023-05-01 12:44:21', '2023-05-01 14:44:21', 0, NULL),
(282, 'wc-admin_import_orders', 'complete', '2023-05-01 12:47:45', '2023-05-01 14:47:45', '[293]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945265;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945265;s:19:"scheduled_timestamp";i:1682945265;s:9:"timestamp";i:1682945265;}', 3, 1, '2023-05-01 12:48:16', '2023-05-01 14:48:16', 0, NULL),
(283, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:07', '2023-05-01 14:48:07', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945287;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945287;s:19:"scheduled_timestamp";i:1682945287;s:9:"timestamp";i:1682945287;}', 0, 1, '2023-05-01 12:48:16', '2023-05-01 14:48:16', 0, NULL),
(284, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:07', '2023-05-01 14:48:07', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945287;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945287;s:19:"scheduled_timestamp";i:1682945287;s:9:"timestamp";i:1682945287;}', 0, 1, '2023-05-01 12:48:16', '2023-05-01 14:48:16', 0, NULL),
(285, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:07', '2023-05-01 14:48:07', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945287;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945287;s:19:"scheduled_timestamp";i:1682945287;s:9:"timestamp";i:1682945287;}', 0, 1, '2023-05-01 12:48:16', '2023-05-01 14:48:16', 0, NULL),
(286, 'wc-admin_import_orders', 'complete', '2023-05-01 12:48:53', '2023-05-01 14:48:53', '[293]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945333;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945333;s:19:"scheduled_timestamp";i:1682945333;s:9:"timestamp";i:1682945333;}', 3, 1, '2023-05-01 12:49:19', '2023-05-01 14:49:19', 0, NULL),
(287, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:51', '2023-05-01 14:48:51', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945331;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945331;s:19:"scheduled_timestamp";i:1682945331;s:9:"timestamp";i:1682945331;}', 0, 1, '2023-05-01 12:49:18', '2023-05-01 14:49:18', 0, NULL),
(288, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:51', '2023-05-01 14:48:51', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945331;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945331;s:19:"scheduled_timestamp";i:1682945331;s:9:"timestamp";i:1682945331;}', 0, 1, '2023-05-01 12:49:18', '2023-05-01 14:49:18', 0, NULL),
(289, 'adjust_download_permissions', 'complete', '2023-05-01 12:48:51', '2023-05-01 14:48:51', '[56]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682945331;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682945331;s:19:"scheduled_timestamp";i:1682945331;s:9:"timestamp";i:1682945331;}', 0, 1, '2023-05-01 12:49:18', '2023-05-01 14:49:18', 0, NULL),
(290, 'wc-admin_import_orders', 'complete', '2023-05-01 14:31:24', '2023-05-01 16:31:24', '[293]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682951484;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682951484;s:19:"scheduled_timestamp";i:1682951484;s:9:"timestamp";i:1682951484;}', 3, 1, '2023-05-01 14:31:29', '2023-05-01 16:31:29', 0, NULL),
(291, 'woocommerce_cleanup_draft_orders', 'complete', '2023-05-03 07:19:04', '2023-05-03 09:19:04', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1683098344;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1683098344;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1683098344;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1683098344;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-05-03 07:19:15', '2023-05-03 09:19:15', 0, NULL),
(292, 'wc-admin_import_orders', 'complete', '2023-05-02 11:21:13', '2023-05-02 13:21:13', '[298]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026473;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026473;s:19:"scheduled_timestamp";i:1683026473;s:9:"timestamp";i:1683026473;}', 3, 1, '2023-05-02 11:21:38', '2023-05-02 13:21:38', 0, NULL),
(293, 'wc-admin_import_orders', 'complete', '2023-05-02 11:21:43', '2023-05-02 13:21:43', '[298]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026503;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026503;s:19:"scheduled_timestamp";i:1683026503;s:9:"timestamp";i:1683026503;}', 3, 1, '2023-05-02 11:21:53', '2023-05-02 13:21:53', 0, NULL),
(294, 'adjust_download_permissions', 'complete', '2023-05-02 11:21:45', '2023-05-02 13:21:45', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026505;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026505;s:19:"scheduled_timestamp";i:1683026505;s:9:"timestamp";i:1683026505;}', 0, 1, '2023-05-02 11:21:53', '2023-05-02 13:21:53', 0, NULL),
(295, 'adjust_download_permissions', 'complete', '2023-05-02 11:21:45', '2023-05-02 13:21:45', '[83]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026505;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026505;s:19:"scheduled_timestamp";i:1683026505;s:9:"timestamp";i:1683026505;}', 0, 1, '2023-05-02 11:21:53', '2023-05-02 13:21:53', 0, NULL),
(296, 'wc-admin_import_orders', 'complete', '2023-05-02 11:28:18', '2023-05-02 13:28:18', '[298]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026898;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026898;s:19:"scheduled_timestamp";i:1683026898;s:9:"timestamp";i:1683026898;}', 3, 1, '2023-05-02 11:28:21', '2023-05-02 13:28:21', 0, NULL),
(297, 'wc-admin_import_orders', 'complete', '2023-05-02 11:28:26', '2023-05-02 13:28:26', '[298]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683026906;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683026906;s:19:"scheduled_timestamp";i:1683026906;s:9:"timestamp";i:1683026906;}', 3, 1, '2023-05-02 11:28:46', '2023-05-02 13:28:46', 0, NULL),
(298, 'wc-admin_import_orders', 'complete', '2023-05-02 19:17:12', '2023-05-02 21:17:12', '[315]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055032;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055032;s:19:"scheduled_timestamp";i:1683055032;s:9:"timestamp";i:1683055032;}', 3, 1, '2023-05-02 19:17:25', '2023-05-02 21:17:25', 0, NULL),
(299, 'wc-admin_import_orders', 'complete', '2023-05-02 19:17:31', '2023-05-02 21:17:31', '[315]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055051;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055051;s:19:"scheduled_timestamp";i:1683055051;s:9:"timestamp";i:1683055051;}', 3, 1, '2023-05-02 19:17:43', '2023-05-02 21:17:43', 0, NULL),
(300, 'adjust_download_permissions', 'complete', '2023-05-02 19:17:33', '2023-05-02 21:17:33', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055053;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055053;s:19:"scheduled_timestamp";i:1683055053;s:9:"timestamp";i:1683055053;}', 0, 1, '2023-05-02 19:17:43', '2023-05-02 21:17:43', 0, NULL),
(301, 'adjust_download_permissions', 'complete', '2023-05-02 19:17:33', '2023-05-02 21:17:33', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055053;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055053;s:19:"scheduled_timestamp";i:1683055053;s:9:"timestamp";i:1683055053;}', 0, 1, '2023-05-02 19:17:43', '2023-05-02 21:17:43', 0, NULL),
(302, 'adjust_download_permissions', 'complete', '2023-05-02 19:17:33', '2023-05-02 21:17:33', '[79]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055053;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055053;s:19:"scheduled_timestamp";i:1683055053;s:9:"timestamp";i:1683055053;}', 0, 1, '2023-05-02 19:17:43', '2023-05-02 21:17:43', 0, NULL),
(303, 'wc-admin_import_orders', 'complete', '2023-05-02 19:18:44', '2023-05-02 21:18:44', '[315]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055124;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055124;s:19:"scheduled_timestamp";i:1683055124;s:9:"timestamp";i:1683055124;}', 3, 1, '2023-05-02 19:19:22', '2023-05-02 21:19:22', 0, NULL),
(304, 'wc-admin_import_orders', 'complete', '2023-05-02 19:20:59', '2023-05-02 21:20:59', '[316]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055259;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055259;s:19:"scheduled_timestamp";i:1683055259;s:9:"timestamp";i:1683055259;}', 3, 1, '2023-05-02 19:21:22', '2023-05-02 21:21:22', 0, NULL),
(305, 'wc-admin_import_orders', 'complete', '2023-05-02 19:23:10', '2023-05-02 21:23:10', '[316]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055390;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055390;s:19:"scheduled_timestamp";i:1683055390;s:9:"timestamp";i:1683055390;}', 3, 1, '2023-05-02 19:23:27', '2023-05-02 21:23:27', 0, NULL),
(306, 'wc-admin_import_orders', 'complete', '2023-05-02 19:26:18', '2023-05-02 21:26:18', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055578;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055578;s:19:"scheduled_timestamp";i:1683055578;s:9:"timestamp";i:1683055578;}', 3, 1, '2023-05-02 19:26:21', '2023-05-02 21:26:21', 0, NULL),
(307, 'adjust_download_permissions', 'complete', '2023-05-02 19:26:19', '2023-05-02 21:26:19', '[51]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055579;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055579;s:19:"scheduled_timestamp";i:1683055579;s:9:"timestamp";i:1683055579;}', 0, 1, '2023-05-02 19:26:21', '2023-05-02 21:26:21', 0, NULL),
(308, 'wc-admin_import_orders', 'complete', '2023-05-02 19:27:11', '2023-05-02 21:27:11', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055631;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055631;s:19:"scheduled_timestamp";i:1683055631;s:9:"timestamp";i:1683055631;}', 3, 1, '2023-05-02 19:27:22', '2023-05-02 21:27:22', 0, NULL),
(309, 'wc-admin_import_orders', 'complete', '2023-05-02 19:29:08', '2023-05-02 21:29:08', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055748;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055748;s:19:"scheduled_timestamp";i:1683055748;s:9:"timestamp";i:1683055748;}', 3, 1, '2023-05-02 19:29:23', '2023-05-02 21:29:23', 0, NULL),
(310, 'wc-admin_import_orders', 'complete', '2023-05-02 19:29:08', '2023-05-02 21:29:08', '[318]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055748;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055748;s:19:"scheduled_timestamp";i:1683055748;s:9:"timestamp";i:1683055748;}', 3, 1, '2023-05-02 19:29:23', '2023-05-02 21:29:23', 0, NULL),
(311, 'wc-admin_import_orders', 'complete', '2023-05-02 19:29:47', '2023-05-02 21:29:47', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055787;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055787;s:19:"scheduled_timestamp";i:1683055787;s:9:"timestamp";i:1683055787;}', 3, 1, '2023-05-02 19:30:25', '2023-05-02 21:30:25', 0, NULL),
(312, 'wc-admin_import_orders', 'complete', '2023-05-02 19:29:49', '2023-05-02 21:29:49', '[319]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055789;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055789;s:19:"scheduled_timestamp";i:1683055789;s:9:"timestamp";i:1683055789;}', 3, 1, '2023-05-02 19:30:25', '2023-05-02 21:30:25', 0, NULL),
(313, 'wc-admin_import_orders', 'complete', '2023-05-02 19:30:38', '2023-05-02 21:30:38', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055838;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055838;s:19:"scheduled_timestamp";i:1683055838;s:9:"timestamp";i:1683055838;}', 3, 1, '2023-05-02 19:30:52', '2023-05-02 21:30:52', 0, NULL),
(314, 'wc-admin_import_orders', 'complete', '2023-05-02 19:32:24', '2023-05-02 21:32:24', '[317]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683055944;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683055944;s:19:"scheduled_timestamp";i:1683055944;s:9:"timestamp";i:1683055944;}', 3, 1, '2023-05-02 19:33:04', '2023-05-02 21:33:04', 0, NULL),
(315, 'wc-admin_import_orders', 'complete', '2023-05-02 19:34:32', '2023-05-02 21:34:32', '[320]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056072;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056072;s:19:"scheduled_timestamp";i:1683056072;s:9:"timestamp";i:1683056072;}', 3, 1, '2023-05-02 19:35:22', '2023-05-02 21:35:22', 0, NULL),
(316, 'adjust_download_permissions', 'complete', '2023-05-02 19:34:46', '2023-05-02 21:34:46', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056086;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056086;s:19:"scheduled_timestamp";i:1683056086;s:9:"timestamp";i:1683056086;}', 0, 1, '2023-05-02 19:35:22', '2023-05-02 21:35:22', 0, NULL),
(317, 'adjust_download_permissions', 'complete', '2023-05-02 19:34:46', '2023-05-02 21:34:46', '[98]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056086;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056086;s:19:"scheduled_timestamp";i:1683056086;s:9:"timestamp";i:1683056086;}', 0, 1, '2023-05-02 19:35:22', '2023-05-02 21:35:22', 0, NULL),
(318, 'wc-admin_import_orders', 'complete', '2023-05-02 19:35:43', '2023-05-02 21:35:43', '[321]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056143;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056143;s:19:"scheduled_timestamp";i:1683056143;s:9:"timestamp";i:1683056143;}', 3, 1, '2023-05-02 19:35:49', '2023-05-02 21:35:49', 0, NULL),
(319, 'wc-admin_import_orders', 'complete', '2023-05-02 19:36:38', '2023-05-02 21:36:38', '[320]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056198;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056198;s:19:"scheduled_timestamp";i:1683056198;s:9:"timestamp";i:1683056198;}', 3, 1, '2023-05-02 19:36:53', '2023-05-02 21:36:53', 0, NULL),
(320, 'wc-admin_import_orders', 'complete', '2023-05-02 19:36:38', '2023-05-02 21:36:38', '[322]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056198;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056198;s:19:"scheduled_timestamp";i:1683056198;s:9:"timestamp";i:1683056198;}', 3, 1, '2023-05-02 19:36:53', '2023-05-02 21:36:53', 0, NULL),
(321, 'adjust_download_permissions', 'complete', '2023-05-02 19:36:34', '2023-05-02 21:36:34', '[68]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056194;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056194;s:19:"scheduled_timestamp";i:1683056194;s:9:"timestamp";i:1683056194;}', 0, 1, '2023-05-02 19:36:53', '2023-05-02 21:36:53', 0, NULL),
(322, 'wc-admin_import_orders', 'complete', '2023-05-02 19:37:03', '2023-05-02 21:37:03', '[320]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056223;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056223;s:19:"scheduled_timestamp";i:1683056223;s:9:"timestamp";i:1683056223;}', 3, 1, '2023-05-02 19:37:24', '2023-05-02 21:37:24', 0, NULL),
(323, 'wc-admin_import_orders', 'complete', '2023-05-02 19:38:26', '2023-05-02 21:38:26', '[321]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056306;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056306;s:19:"scheduled_timestamp";i:1683056306;s:9:"timestamp";i:1683056306;}', 3, 1, '2023-05-02 19:39:07', '2023-05-02 21:39:07', 0, NULL),
(324, 'wc-admin_import_orders', 'complete', '2023-05-02 19:38:26', '2023-05-02 21:38:26', '[323]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056306;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056306;s:19:"scheduled_timestamp";i:1683056306;s:9:"timestamp";i:1683056306;}', 3, 1, '2023-05-02 19:39:07', '2023-05-02 21:39:07', 0, NULL),
(325, 'wc-admin_import_orders', 'complete', '2023-05-02 19:38:45', '2023-05-02 21:38:45', '[324]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683056325;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683056325;s:19:"scheduled_timestamp";i:1683056325;s:9:"timestamp";i:1683056325;}', 3, 1, '2023-05-02 19:39:07', '2023-05-02 21:39:07', 0, NULL),
(326, 'woocommerce_cleanup_draft_orders', 'complete', '2023-05-04 07:19:15', '2023-05-04 09:19:15', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1683184755;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1683184755;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1683184755;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1683184755;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-05-04 07:24:15', '2023-05-04 09:24:15', 0, NULL),
(327, 'wc-admin_import_orders', 'complete', '2023-05-03 10:06:34', '2023-05-03 12:06:34', '[329]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683108394;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683108394;s:19:"scheduled_timestamp";i:1683108394;s:9:"timestamp";i:1683108394;}', 3, 1, '2023-05-03 10:06:55', '2023-05-03 12:06:55', 0, NULL),
(328, 'wc-admin_import_orders', 'complete', '2023-05-03 10:07:16', '2023-05-03 12:07:16', '[329]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683108436;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683108436;s:19:"scheduled_timestamp";i:1683108436;s:9:"timestamp";i:1683108436;}', 3, 1, '2023-05-03 10:07:21', '2023-05-03 12:07:21', 0, NULL),
(329, 'wc-admin_import_orders', 'complete', '2023-05-03 10:07:19', '2023-05-03 12:07:19', '[330]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683108439;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683108439;s:19:"scheduled_timestamp";i:1683108439;s:9:"timestamp";i:1683108439;}', 3, 1, '2023-05-03 10:07:21', '2023-05-03 12:07:21', 0, NULL),
(330, 'woocommerce_cleanup_draft_orders', 'complete', '2023-05-05 07:24:15', '2023-05-05 09:24:15', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1683271455;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1683271455;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1683271455;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1683271455;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-05-05 07:24:29', '2023-05-05 09:24:29', 0, NULL),
(331, 'wc-admin_import_orders', 'complete', '2023-05-04 12:03:16', '2023-05-04 14:03:16', '[344]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683201796;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683201796;s:19:"scheduled_timestamp";i:1683201796;s:9:"timestamp";i:1683201796;}', 3, 1, '2023-05-04 12:03:25', '2023-05-04 14:03:25', 0, NULL),
(332, 'wc-admin_import_orders', 'complete', '2023-05-04 12:03:31', '2023-05-04 14:03:31', '[344]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683201811;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683201811;s:19:"scheduled_timestamp";i:1683201811;s:9:"timestamp";i:1683201811;}', 3, 1, '2023-05-04 12:05:42', '2023-05-04 14:05:42', 0, NULL),
(333, 'adjust_download_permissions', 'complete', '2023-05-04 12:03:33', '2023-05-04 14:03:33', '[74]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683201813;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683201813;s:19:"scheduled_timestamp";i:1683201813;s:9:"timestamp";i:1683201813;}', 0, 1, '2023-05-04 12:05:42', '2023-05-04 14:05:42', 0, NULL),
(334, 'adjust_download_permissions', 'complete', '2023-05-04 12:03:33', '2023-05-04 14:03:33', '[59]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1683201813;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1683201813;s:19:"scheduled_timestamp";i:1683201813;s:9:"timestamp";i:1683201813;}', 0, 1, '2023-05-04 12:05:42', '2023-05-04 14:05:42', 0, NULL),
(335, 'woocommerce_cleanup_draft_orders', 'pending', '2023-05-06 07:24:29', '2023-05-06 09:24:29', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1683357869;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1683357869;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1683357869;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1683357869;s:19:"interval_in_seconds";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL) ;

#
# End of data contents of table `wp_actionscheduler_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_claims`
#

DROP TABLE IF EXISTS `wp_actionscheduler_claims`;


#
# Table structure of table `wp_actionscheduler_claims`
#

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_claims`
#

#
# End of data contents of table `wp_actionscheduler_claims`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_groups`
#

DROP TABLE IF EXISTS `wp_actionscheduler_groups`;


#
# Table structure of table `wp_actionscheduler_groups`
#

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates'),
(3, 'wc-admin-data') ;

#
# End of data contents of table `wp_actionscheduler_groups`
# --------------------------------------------------------



#
# Delete any existing table `wp_actionscheduler_logs`
#

DROP TABLE IF EXISTS `wp_actionscheduler_logs`;


#
# Table structure of table `wp_actionscheduler_logs`
#

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action_id` bigint(20) unsigned NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=869 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_logs`
#
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 46, 'action created', '2023-04-25 07:56:23', '2023-04-25 09:56:23'),
(2, 47, 'action created', '2023-04-25 07:56:25', '2023-04-25 09:56:25'),
(3, 47, 'action started via WP Cron', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(4, 47, 'action complete via WP Cron', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(5, 48, 'action created', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(6, 46, 'action started via WP Cron', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(7, 46, 'action complete via WP Cron', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(8, 49, 'action created', '2023-04-25 07:57:29', '2023-04-25 09:57:29'),
(9, 49, 'action started via WP Cron', '2023-04-25 07:59:29', '2023-04-25 09:59:29'),
(10, 49, 'action failed via WP Cron: Scheduled action for action_scheduler/migration_hook will not be executed as no callbacks are registered.', '2023-04-25 07:59:29', '2023-04-25 09:59:29'),
(11, 50, 'åtgärd skapad', '2023-04-25 08:47:55', '2023-04-25 10:47:55'),
(12, 50, 'åtgärden startades via WP Cron', '2023-04-25 08:48:23', '2023-04-25 10:48:23'),
(13, 50, 'åtgärden slutförd via WP Cron', '2023-04-25 08:48:23', '2023-04-25 10:48:23'),
(14, 51, 'åtgärd skapad', '2023-04-25 09:12:52', '2023-04-25 11:12:52'),
(15, 51, 'åtgärden startades via WP Cron', '2023-04-25 09:13:29', '2023-04-25 11:13:29'),
(16, 51, 'åtgärden slutförd via WP Cron', '2023-04-25 09:13:29', '2023-04-25 11:13:29'),
(17, 52, 'åtgärd skapad', '2023-04-25 09:31:45', '2023-04-25 11:31:45'),
(18, 53, 'åtgärd skapad', '2023-04-25 09:31:57', '2023-04-25 11:31:57'),
(19, 54, 'åtgärd skapad', '2023-04-25 09:31:57', '2023-04-25 11:31:57'),
(20, 55, 'åtgärd skapad', '2023-04-25 09:31:57', '2023-04-25 11:31:57'),
(21, 56, 'åtgärd skapad', '2023-04-25 09:31:57', '2023-04-25 11:31:57'),
(22, 52, 'åtgärden startades via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(23, 52, 'åtgärden slutförd via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(24, 53, 'åtgärden startades via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(25, 53, 'åtgärden slutförd via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(26, 54, 'åtgärden startades via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(27, 54, 'åtgärden slutförd via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(28, 55, 'åtgärden startades via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(29, 55, 'åtgärden slutförd via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(30, 56, 'åtgärden startades via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(31, 56, 'åtgärden slutförd via WP Cron', '2023-04-25 09:32:23', '2023-04-25 11:32:23'),
(32, 57, 'åtgärd skapad', '2023-04-25 09:35:01', '2023-04-25 11:35:01'),
(33, 58, 'åtgärd skapad', '2023-04-25 09:35:01', '2023-04-25 11:35:01'),
(34, 57, 'åtgärden startades via WP Cron', '2023-04-25 09:35:23', '2023-04-25 11:35:23'),
(35, 57, 'åtgärden slutförd via WP Cron', '2023-04-25 09:35:23', '2023-04-25 11:35:23'),
(36, 58, 'åtgärden startades via WP Cron', '2023-04-25 09:35:23', '2023-04-25 11:35:23'),
(37, 58, 'åtgärden slutförd via WP Cron', '2023-04-25 09:35:23', '2023-04-25 11:35:23'),
(38, 59, 'åtgärd skapad', '2023-04-25 09:39:00', '2023-04-25 11:39:00'),
(39, 60, 'åtgärd skapad', '2023-04-25 09:39:00', '2023-04-25 11:39:00'),
(40, 61, 'åtgärd skapad', '2023-04-25 09:39:11', '2023-04-25 11:39:11'),
(41, 59, 'åtgärden startades via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(42, 59, 'åtgärden slutförd via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(43, 60, 'åtgärden startades via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(44, 60, 'åtgärden slutförd via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(45, 61, 'åtgärden startades via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(46, 61, 'åtgärden slutförd via WP Cron', '2023-04-25 09:39:24', '2023-04-25 11:39:24'),
(47, 62, 'åtgärd skapad', '2023-04-25 09:40:46', '2023-04-25 11:40:46'),
(48, 63, 'åtgärd skapad', '2023-04-25 09:40:46', '2023-04-25 11:40:46'),
(49, 64, 'åtgärd skapad', '2023-04-25 09:40:46', '2023-04-25 11:40:46'),
(50, 62, 'åtgärden startades via WP Cron', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(51, 62, 'åtgärden misslyckades via WP Cron: Den schemalagda åtgärden för woocommerce_admin/stored_state_setup_for_products/async/run_remote_notifications kommer inte att utföras eftersom inga återanrop har registrerats.', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(52, 63, 'åtgärden startades via WP Cron', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(53, 63, 'åtgärden slutförd via WP Cron', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(54, 64, 'åtgärden startades via WP Cron', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(55, 64, 'åtgärden slutförd via WP Cron', '2023-04-25 09:42:23', '2023-04-25 11:42:23'),
(56, 65, 'åtgärd skapad', '2023-04-25 09:50:34', '2023-04-25 11:50:34'),
(57, 65, 'åtgärden startades via Async Request', '2023-04-25 09:50:38', '2023-04-25 11:50:38'),
(58, 65, 'åtgärden slutförd via Async Request', '2023-04-25 09:50:38', '2023-04-25 11:50:38'),
(59, 66, 'åtgärd skapad', '2023-04-25 09:50:47', '2023-04-25 11:50:47'),
(60, 67, 'åtgärd skapad', '2023-04-25 09:50:47', '2023-04-25 11:50:47'),
(61, 68, 'åtgärd skapad', '2023-04-25 09:50:48', '2023-04-25 11:50:48'),
(62, 69, 'åtgärd skapad', '2023-04-25 09:50:48', '2023-04-25 11:50:48'),
(63, 66, 'åtgärden startades via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(64, 66, 'åtgärden slutförd via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(65, 67, 'åtgärden startades via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(66, 67, 'åtgärden slutförd via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(67, 68, 'åtgärden startades via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(68, 68, 'åtgärden slutförd via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(69, 69, 'åtgärden startades via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(70, 69, 'åtgärden slutförd via WP Cron', '2023-04-25 09:51:21', '2023-04-25 11:51:21'),
(71, 70, 'åtgärd skapad', '2023-04-25 09:55:09', '2023-04-25 11:55:09'),
(72, 71, 'åtgärd skapad', '2023-04-25 09:55:09', '2023-04-25 11:55:09'),
(73, 72, 'åtgärd skapad', '2023-04-25 09:55:09', '2023-04-25 11:55:09'),
(74, 70, 'åtgärden startades via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(75, 70, 'åtgärden slutförd via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(76, 71, 'åtgärden startades via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(77, 71, 'åtgärden slutförd via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(78, 72, 'åtgärden startades via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(79, 72, 'åtgärden slutförd via WP Cron', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(80, 73, 'åtgärd skapad', '2023-04-25 09:55:27', '2023-04-25 11:55:27'),
(81, 74, 'åtgärd skapad', '2023-04-25 09:56:15', '2023-04-25 11:56:15'),
(82, 73, 'åtgärden startades via Async Request', '2023-04-25 09:56:16', '2023-04-25 11:56:16'),
(83, 73, 'åtgärden slutförd via Async Request', '2023-04-25 09:56:16', '2023-04-25 11:56:16'),
(84, 74, 'åtgärden startades via Async Request', '2023-04-25 09:56:16', '2023-04-25 11:56:16'),
(85, 74, 'åtgärden slutförd via Async Request', '2023-04-25 09:56:16', '2023-04-25 11:56:16'),
(86, 75, 'åtgärd skapad', '2023-04-25 09:56:22', '2023-04-25 11:56:22'),
(87, 76, 'åtgärd skapad', '2023-04-25 09:56:22', '2023-04-25 11:56:22'),
(88, 75, 'åtgärden startades via WP Cron', '2023-04-25 09:57:29', '2023-04-25 11:57:29'),
(89, 75, 'åtgärden slutförd via WP Cron', '2023-04-25 09:57:29', '2023-04-25 11:57:29'),
(90, 76, 'åtgärden startades via WP Cron', '2023-04-25 09:57:29', '2023-04-25 11:57:29'),
(91, 76, 'åtgärden slutförd via WP Cron', '2023-04-25 09:57:29', '2023-04-25 11:57:29'),
(92, 77, 'åtgärd skapad', '2023-04-25 10:00:05', '2023-04-25 12:00:05'),
(93, 78, 'åtgärd skapad', '2023-04-25 10:00:18', '2023-04-25 12:00:18'),
(94, 79, 'åtgärd skapad', '2023-04-25 10:00:18', '2023-04-25 12:00:18'),
(95, 80, 'åtgärd skapad', '2023-04-25 10:00:18', '2023-04-25 12:00:18'),
(96, 81, 'åtgärd skapad', '2023-04-25 10:00:18', '2023-04-25 12:00:18'),
(97, 82, 'åtgärd skapad', '2023-04-25 10:00:18', '2023-04-25 12:00:18'),
(98, 77, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(99, 77, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(100, 78, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(101, 78, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(102, 79, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(103, 79, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(104, 80, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(105, 80, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(106, 81, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(107, 81, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(108, 82, 'åtgärden startades via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(109, 82, 'åtgärden slutförd via WP Cron', '2023-04-25 10:00:21', '2023-04-25 12:00:21'),
(110, 83, 'åtgärd skapad', '2023-04-25 10:04:23', '2023-04-25 12:04:23'),
(111, 84, 'åtgärd skapad', '2023-04-25 10:04:23', '2023-04-25 12:04:23'),
(112, 85, 'åtgärd skapad', '2023-04-25 10:04:23', '2023-04-25 12:04:23'),
(113, 86, 'åtgärd skapad', '2023-04-25 10:04:23', '2023-04-25 12:04:23'),
(114, 87, 'åtgärd skapad', '2023-04-25 10:04:28', '2023-04-25 12:04:28'),
(115, 83, 'åtgärden startades via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(116, 83, 'åtgärden slutförd via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(117, 84, 'åtgärden startades via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(118, 84, 'åtgärden slutförd via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(119, 85, 'åtgärden startades via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(120, 85, 'åtgärden slutförd via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(121, 86, 'åtgärden startades via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(122, 86, 'åtgärden slutförd via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(123, 87, 'åtgärden startades via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(124, 87, 'åtgärden slutförd via Async Request', '2023-04-25 10:04:44', '2023-04-25 12:04:44'),
(125, 88, 'åtgärd skapad', '2023-04-25 10:05:27', '2023-04-25 12:05:27'),
(126, 89, 'åtgärd skapad', '2023-04-25 10:05:27', '2023-04-25 12:05:27'),
(127, 90, 'åtgärd skapad', '2023-04-25 10:05:56', '2023-04-25 12:05:56'),
(128, 88, 'åtgärden startades via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(129, 88, 'åtgärden slutförd via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(130, 89, 'åtgärden startades via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(131, 89, 'åtgärden slutförd via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(132, 90, 'åtgärden startades via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(133, 90, 'åtgärden slutförd via Async Request', '2023-04-25 10:05:57', '2023-04-25 12:05:57'),
(134, 91, 'åtgärd skapad', '2023-04-25 10:06:02', '2023-04-25 12:06:02'),
(135, 92, 'åtgärd skapad', '2023-04-25 10:06:02', '2023-04-25 12:06:02'),
(136, 91, 'åtgärden startades via WP Cron', '2023-04-25 10:06:21', '2023-04-25 12:06:21'),
(137, 91, 'åtgärden slutförd via WP Cron', '2023-04-25 10:06:21', '2023-04-25 12:06:21'),
(138, 92, 'åtgärden startades via WP Cron', '2023-04-25 10:06:21', '2023-04-25 12:06:21'),
(139, 92, 'åtgärden slutförd via WP Cron', '2023-04-25 10:06:21', '2023-04-25 12:06:21'),
(140, 93, 'åtgärd skapad', '2023-04-25 10:06:59', '2023-04-25 12:06:59'),
(141, 94, 'åtgärd skapad', '2023-04-25 10:07:00', '2023-04-25 12:07:00'),
(142, 93, 'åtgärden startades via WP Cron', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(143, 93, 'åtgärden slutförd via WP Cron', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(144, 94, 'åtgärden startades via WP Cron', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(145, 94, 'åtgärden slutförd via WP Cron', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(146, 95, 'åtgärd skapad', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(147, 96, 'åtgärd skapad', '2023-04-25 10:07:22', '2023-04-25 12:07:22'),
(148, 95, 'åtgärden startades via Async Request', '2023-04-25 10:08:04', '2023-04-25 12:08:04'),
(149, 95, 'åtgärden slutförd via Async Request', '2023-04-25 10:08:04', '2023-04-25 12:08:04'),
(150, 96, 'åtgärden startades via Async Request', '2023-04-25 10:08:04', '2023-04-25 12:08:04'),
(151, 96, 'åtgärden slutförd via Async Request', '2023-04-25 10:08:04', '2023-04-25 12:08:04'),
(152, 97, 'åtgärd skapad', '2023-04-25 10:08:08', '2023-04-25 12:08:08'),
(153, 98, 'åtgärd skapad', '2023-04-25 10:08:08', '2023-04-25 12:08:08'),
(154, 97, 'åtgärden startades via Async Request', '2023-04-25 10:08:10', '2023-04-25 12:08:10'),
(155, 97, 'åtgärden slutförd via Async Request', '2023-04-25 10:08:10', '2023-04-25 12:08:10'),
(156, 98, 'åtgärden startades via Async Request', '2023-04-25 10:08:10', '2023-04-25 12:08:10'),
(157, 98, 'åtgärden slutförd via Async Request', '2023-04-25 10:08:10', '2023-04-25 12:08:10'),
(158, 99, 'åtgärd skapad', '2023-04-25 10:08:35', '2023-04-25 12:08:35'),
(159, 100, 'åtgärd skapad', '2023-04-25 10:08:35', '2023-04-25 12:08:35'),
(160, 99, 'åtgärden startades via WP Cron', '2023-04-25 10:09:30', '2023-04-25 12:09:30'),
(161, 99, 'åtgärden slutförd via WP Cron', '2023-04-25 10:09:30', '2023-04-25 12:09:30'),
(162, 100, 'åtgärden startades via WP Cron', '2023-04-25 10:09:30', '2023-04-25 12:09:30'),
(163, 100, 'åtgärden slutförd via WP Cron', '2023-04-25 10:09:30', '2023-04-25 12:09:30'),
(164, 101, 'åtgärd skapad', '2023-04-25 10:11:59', '2023-04-25 12:11:59'),
(165, 102, 'åtgärd skapad', '2023-04-25 10:11:59', '2023-04-25 12:11:59'),
(166, 101, 'åtgärden startades via WP Cron', '2023-04-25 10:12:21', '2023-04-25 12:12:21'),
(167, 101, 'åtgärden slutförd via WP Cron', '2023-04-25 10:12:21', '2023-04-25 12:12:21'),
(168, 102, 'åtgärden startades via WP Cron', '2023-04-25 10:12:21', '2023-04-25 12:12:21'),
(169, 102, 'åtgärden slutförd via WP Cron', '2023-04-25 10:12:21', '2023-04-25 12:12:21'),
(170, 103, 'åtgärd skapad', '2023-04-25 10:13:38', '2023-04-25 12:13:38'),
(171, 103, 'åtgärden startades via Async Request', '2023-04-25 10:14:07', '2023-04-25 12:14:07'),
(172, 103, 'åtgärden slutförd via Async Request', '2023-04-25 10:14:07', '2023-04-25 12:14:07'),
(173, 104, 'åtgärd skapad', '2023-04-25 10:14:54', '2023-04-25 12:14:54'),
(174, 105, 'åtgärd skapad', '2023-04-25 10:14:54', '2023-04-25 12:14:54'),
(175, 104, 'åtgärden startades via Async Request', '2023-04-25 10:15:11', '2023-04-25 12:15:11'),
(176, 104, 'åtgärden slutförd via Async Request', '2023-04-25 10:15:11', '2023-04-25 12:15:11'),
(177, 105, 'åtgärden startades via Async Request', '2023-04-25 10:15:11', '2023-04-25 12:15:11'),
(178, 105, 'åtgärden slutförd via Async Request', '2023-04-25 10:15:11', '2023-04-25 12:15:11'),
(179, 106, 'åtgärd skapad', '2023-04-25 10:41:52', '2023-04-25 12:41:52'),
(180, 106, 'åtgärden startades via WP Cron', '2023-04-25 10:42:25', '2023-04-25 12:42:25'),
(181, 106, 'åtgärden slutförd via WP Cron', '2023-04-25 10:42:25', '2023-04-25 12:42:25'),
(182, 107, 'åtgärd skapad', '2023-04-25 10:44:32', '2023-04-25 12:44:32'),
(183, 107, 'åtgärden startades via Async Request', '2023-04-25 10:44:48', '2023-04-25 12:44:48'),
(184, 107, 'åtgärden slutförd via Async Request', '2023-04-25 10:44:48', '2023-04-25 12:44:48'),
(185, 108, 'åtgärd skapad', '2023-04-25 10:44:54', '2023-04-25 12:44:54'),
(186, 109, 'åtgärd skapad', '2023-04-25 10:44:54', '2023-04-25 12:44:54'),
(187, 110, 'åtgärd skapad', '2023-04-25 10:44:55', '2023-04-25 12:44:55'),
(188, 111, 'åtgärd skapad', '2023-04-25 10:44:55', '2023-04-25 12:44:55'),
(189, 112, 'åtgärd skapad', '2023-04-25 10:44:55', '2023-04-25 12:44:55'),
(190, 108, 'åtgärden startades via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(191, 108, 'åtgärden slutförd via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(192, 109, 'åtgärden startades via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(193, 109, 'åtgärden slutförd via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(194, 110, 'åtgärden startades via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(195, 110, 'åtgärden slutförd via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(196, 111, 'åtgärden startades via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(197, 111, 'åtgärden slutförd via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(198, 112, 'åtgärden startades via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(199, 112, 'åtgärden slutförd via WP Cron', '2023-04-25 10:45:20', '2023-04-25 12:45:20'),
(200, 113, 'åtgärd skapad', '2023-04-25 10:47:59', '2023-04-25 12:47:59') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(201, 114, 'åtgärd skapad', '2023-04-25 10:47:59', '2023-04-25 12:47:59'),
(202, 115, 'åtgärd skapad', '2023-04-25 10:47:59', '2023-04-25 12:47:59'),
(203, 116, 'åtgärd skapad', '2023-04-25 10:47:59', '2023-04-25 12:47:59'),
(204, 113, 'åtgärden startades via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(205, 113, 'åtgärden slutförd via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(206, 114, 'åtgärden startades via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(207, 114, 'åtgärden slutförd via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(208, 115, 'åtgärden startades via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(209, 115, 'åtgärden slutförd via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(210, 116, 'åtgärden startades via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(211, 116, 'åtgärden slutförd via Async Request', '2023-04-25 10:48:11', '2023-04-25 12:48:11'),
(212, 117, 'åtgärd skapad', '2023-04-25 10:48:24', '2023-04-25 12:48:24'),
(213, 118, 'åtgärd skapad', '2023-04-25 10:48:30', '2023-04-25 12:48:30'),
(214, 117, 'åtgärden startades via Async Request', '2023-04-25 10:49:17', '2023-04-25 12:49:17'),
(215, 117, 'åtgärden slutförd via Async Request', '2023-04-25 10:49:17', '2023-04-25 12:49:17'),
(216, 118, 'åtgärden startades via Async Request', '2023-04-25 10:49:17', '2023-04-25 12:49:17'),
(217, 118, 'åtgärden slutförd via Async Request', '2023-04-25 10:49:17', '2023-04-25 12:49:17'),
(218, 119, 'åtgärd skapad', '2023-04-25 10:49:46', '2023-04-25 12:49:46'),
(219, 119, 'åtgärden startades via WP Cron', '2023-04-25 10:50:31', '2023-04-25 12:50:31'),
(220, 119, 'åtgärden slutförd via WP Cron', '2023-04-25 10:50:31', '2023-04-25 12:50:31'),
(221, 120, 'åtgärd skapad', '2023-04-25 10:55:28', '2023-04-25 12:55:28'),
(222, 120, 'åtgärden startades via WP Cron', '2023-04-25 10:56:25', '2023-04-25 12:56:25'),
(223, 120, 'åtgärden slutförd via WP Cron', '2023-04-25 10:56:25', '2023-04-25 12:56:25'),
(224, 121, 'åtgärd skapad', '2023-04-25 11:45:45', '2023-04-25 13:45:45'),
(225, 122, 'åtgärd skapad', '2023-04-25 11:45:57', '2023-04-25 13:45:57'),
(226, 123, 'åtgärd skapad', '2023-04-25 11:45:57', '2023-04-25 13:45:57'),
(227, 124, 'åtgärd skapad', '2023-04-25 11:45:57', '2023-04-25 13:45:57'),
(228, 125, 'åtgärd skapad', '2023-04-25 11:45:57', '2023-04-25 13:45:57'),
(229, 126, 'åtgärd skapad', '2023-04-25 11:45:57', '2023-04-25 13:45:57'),
(230, 121, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(231, 121, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(232, 122, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(233, 122, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(234, 123, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(235, 123, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(236, 124, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(237, 124, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(238, 125, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(239, 125, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(240, 126, 'åtgärden startades via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(241, 126, 'åtgärden slutförd via Async Request', '2023-04-25 11:46:15', '2023-04-25 13:46:15'),
(242, 127, 'åtgärd skapad', '2023-04-25 11:49:26', '2023-04-25 13:49:26'),
(243, 128, 'åtgärd skapad', '2023-04-25 11:49:26', '2023-04-25 13:49:26'),
(244, 129, 'åtgärd skapad', '2023-04-25 11:49:26', '2023-04-25 13:49:26'),
(245, 130, 'åtgärd skapad', '2023-04-25 11:49:26', '2023-04-25 13:49:26'),
(246, 131, 'åtgärd skapad', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(247, 127, 'åtgärden startades via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(248, 127, 'åtgärden slutförd via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(249, 128, 'åtgärden startades via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(250, 128, 'åtgärden slutförd via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(251, 129, 'åtgärden startades via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(252, 129, 'åtgärden slutförd via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(253, 130, 'åtgärden startades via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(254, 130, 'åtgärden slutförd via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(255, 131, 'åtgärden startades via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(256, 131, 'åtgärden slutförd via Async Request', '2023-04-25 11:49:39', '2023-04-25 13:49:39'),
(257, 132, 'åtgärd skapad', '2023-04-25 11:50:01', '2023-04-25 13:50:01'),
(258, 133, 'åtgärd skapad', '2023-04-25 11:50:01', '2023-04-25 13:50:01'),
(259, 132, 'åtgärden startades via WP Cron', '2023-04-25 11:50:50', '2023-04-25 13:50:50'),
(260, 132, 'åtgärden slutförd via WP Cron', '2023-04-25 11:50:50', '2023-04-25 13:50:50'),
(261, 133, 'åtgärden startades via WP Cron', '2023-04-25 11:50:50', '2023-04-25 13:50:50'),
(262, 133, 'åtgärden slutförd via WP Cron', '2023-04-25 11:50:50', '2023-04-25 13:50:50'),
(263, 134, 'åtgärd skapad', '2023-04-25 12:15:36', '2023-04-25 14:15:36'),
(264, 135, 'åtgärd skapad', '2023-04-25 12:15:47', '2023-04-25 14:15:47'),
(265, 136, 'åtgärd skapad', '2023-04-25 12:15:47', '2023-04-25 14:15:47'),
(266, 137, 'åtgärd skapad', '2023-04-25 12:15:47', '2023-04-25 14:15:47'),
(267, 138, 'åtgärd skapad', '2023-04-25 12:15:47', '2023-04-25 14:15:47'),
(268, 139, 'åtgärd skapad', '2023-04-25 12:15:47', '2023-04-25 14:15:47'),
(269, 134, 'åtgärden startades via WP Cron', '2023-04-25 12:16:21', '2023-04-25 14:16:21'),
(270, 134, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(271, 135, 'åtgärden startades via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(272, 135, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(273, 136, 'åtgärden startades via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(274, 136, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(275, 137, 'åtgärden startades via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(276, 137, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(277, 138, 'åtgärden startades via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(278, 138, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(279, 139, 'åtgärden startades via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(280, 139, 'åtgärden slutförd via WP Cron', '2023-04-25 12:16:22', '2023-04-25 14:16:22'),
(281, 140, 'åtgärd skapad', '2023-04-25 12:17:37', '2023-04-25 14:17:37'),
(282, 141, 'åtgärd skapad', '2023-04-25 12:17:37', '2023-04-25 14:17:37'),
(283, 142, 'åtgärd skapad', '2023-04-25 12:17:37', '2023-04-25 14:17:37'),
(284, 143, 'åtgärd skapad', '2023-04-25 12:17:37', '2023-04-25 14:17:37'),
(285, 144, 'åtgärd skapad', '2023-04-25 12:18:11', '2023-04-25 14:18:11'),
(286, 140, 'åtgärden startades via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(287, 140, 'åtgärden slutförd via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(288, 141, 'åtgärden startades via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(289, 141, 'åtgärden slutförd via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(290, 142, 'åtgärden startades via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(291, 142, 'åtgärden slutförd via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(292, 143, 'åtgärden startades via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(293, 143, 'åtgärden slutförd via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(294, 144, 'åtgärden startades via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(295, 144, 'åtgärden slutförd via WP Cron', '2023-04-25 12:18:32', '2023-04-25 14:18:32'),
(296, 145, 'åtgärd skapad', '2023-04-25 12:19:47', '2023-04-25 14:19:47'),
(297, 146, 'åtgärd skapad', '2023-04-25 12:19:56', '2023-04-25 14:19:56'),
(298, 147, 'åtgärd skapad', '2023-04-25 12:19:56', '2023-04-25 14:19:56'),
(299, 148, 'åtgärd skapad', '2023-04-25 12:19:56', '2023-04-25 14:19:56'),
(300, 149, 'åtgärd skapad', '2023-04-25 12:19:56', '2023-04-25 14:19:56') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(301, 150, 'åtgärd skapad', '2023-04-25 12:19:56', '2023-04-25 14:19:56'),
(302, 145, 'åtgärden startades via WP Cron', '2023-04-25 12:20:25', '2023-04-25 14:20:25'),
(303, 145, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(304, 146, 'åtgärden startades via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(305, 146, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(306, 147, 'åtgärden startades via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(307, 147, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(308, 148, 'åtgärden startades via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(309, 148, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(310, 149, 'åtgärden startades via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(311, 149, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(312, 150, 'åtgärden startades via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(313, 150, 'åtgärden slutförd via WP Cron', '2023-04-25 12:20:26', '2023-04-25 14:20:26'),
(314, 151, 'åtgärd skapad', '2023-04-25 12:21:35', '2023-04-25 14:21:35'),
(315, 152, 'åtgärd skapad', '2023-04-25 12:21:35', '2023-04-25 14:21:35'),
(316, 153, 'åtgärd skapad', '2023-04-25 12:21:35', '2023-04-25 14:21:35'),
(317, 154, 'åtgärd skapad', '2023-04-25 12:21:35', '2023-04-25 14:21:35'),
(318, 151, 'åtgärden startades via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(319, 151, 'åtgärden slutförd via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(320, 152, 'åtgärden startades via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(321, 152, 'åtgärden slutförd via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(322, 153, 'åtgärden startades via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(323, 153, 'åtgärden slutförd via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(324, 154, 'åtgärden startades via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(325, 154, 'åtgärden slutförd via Async Request', '2023-04-25 12:22:10', '2023-04-25 14:22:10'),
(326, 155, 'åtgärd skapad', '2023-04-25 12:24:10', '2023-04-25 14:24:10'),
(327, 156, 'åtgärd skapad', '2023-04-25 12:24:10', '2023-04-25 14:24:10'),
(328, 155, 'åtgärden startades via WP Cron', '2023-04-25 12:24:32', '2023-04-25 14:24:32'),
(329, 155, 'åtgärden slutförd via WP Cron', '2023-04-25 12:24:32', '2023-04-25 14:24:32'),
(330, 156, 'åtgärden startades via WP Cron', '2023-04-25 12:24:32', '2023-04-25 14:24:32'),
(331, 156, 'åtgärden slutförd via WP Cron', '2023-04-25 12:24:32', '2023-04-25 14:24:32'),
(332, 157, 'åtgärd skapad', '2023-04-25 12:35:52', '2023-04-25 14:35:52'),
(333, 157, 'åtgärden startades via Async Request', '2023-04-25 12:36:13', '2023-04-25 14:36:13'),
(334, 157, 'åtgärden slutförd via Async Request', '2023-04-25 12:36:13', '2023-04-25 14:36:13'),
(335, 158, 'åtgärd skapad', '2023-04-25 12:45:42', '2023-04-25 14:45:42'),
(336, 158, 'åtgärden startades via WP Cron', '2023-04-25 12:46:42', '2023-04-25 14:46:42'),
(337, 158, 'åtgärden slutförd via WP Cron', '2023-04-25 12:46:42', '2023-04-25 14:46:42'),
(338, 159, 'åtgärd skapad', '2023-04-25 12:48:49', '2023-04-25 14:48:49'),
(339, 159, 'åtgärden startades via WP Cron', '2023-04-25 12:49:59', '2023-04-25 14:49:59'),
(340, 159, 'åtgärden slutförd via WP Cron', '2023-04-25 12:49:59', '2023-04-25 14:49:59'),
(341, 160, 'åtgärd skapad', '2023-04-25 12:55:35', '2023-04-25 14:55:35'),
(342, 160, 'åtgärden startades via Async Request', '2023-04-25 12:56:04', '2023-04-25 14:56:04'),
(343, 160, 'åtgärden slutförd via Async Request', '2023-04-25 12:56:04', '2023-04-25 14:56:04'),
(344, 161, 'åtgärd skapad', '2023-04-25 13:01:37', '2023-04-25 15:01:37'),
(345, 161, 'åtgärden startades via Async Request', '2023-04-25 13:01:39', '2023-04-25 15:01:39'),
(346, 161, 'åtgärden slutförd via Async Request', '2023-04-25 13:01:39', '2023-04-25 15:01:39'),
(347, 162, 'åtgärd skapad', '2023-04-25 13:02:57', '2023-04-25 15:02:57'),
(348, 162, 'åtgärden startades via WP Cron', '2023-04-25 13:03:33', '2023-04-25 15:03:33'),
(349, 162, 'åtgärden slutförd via WP Cron', '2023-04-25 13:03:33', '2023-04-25 15:03:33'),
(350, 163, 'åtgärd skapad', '2023-04-25 13:05:07', '2023-04-25 15:05:07'),
(351, 163, 'åtgärden startades via WP Cron', '2023-04-25 13:05:24', '2023-04-25 15:05:24'),
(352, 163, 'åtgärden slutförd via WP Cron', '2023-04-25 13:05:24', '2023-04-25 15:05:24'),
(353, 164, 'åtgärd skapad', '2023-04-25 13:05:56', '2023-04-25 15:05:56'),
(354, 164, 'åtgärden startades via WP Cron', '2023-04-25 13:06:25', '2023-04-25 15:06:25'),
(355, 164, 'åtgärden slutförd via WP Cron', '2023-04-25 13:06:25', '2023-04-25 15:06:25'),
(356, 165, 'åtgärd skapad', '2023-04-25 13:06:35', '2023-04-25 15:06:35'),
(357, 165, 'åtgärden startades via Async Request', '2023-04-25 13:06:56', '2023-04-25 15:06:56'),
(358, 165, 'åtgärden slutförd via Async Request', '2023-04-25 13:06:56', '2023-04-25 15:06:56'),
(359, 166, 'åtgärd skapad', '2023-04-25 13:08:27', '2023-04-25 15:08:27'),
(360, 166, 'åtgärden startades via Async Request', '2023-04-25 13:09:03', '2023-04-25 15:09:03'),
(361, 166, 'åtgärden slutförd via Async Request', '2023-04-25 13:09:03', '2023-04-25 15:09:03'),
(362, 167, 'åtgärd skapad', '2023-04-25 13:09:51', '2023-04-25 15:09:51'),
(363, 167, 'åtgärden startades via Async Request', '2023-04-25 13:10:11', '2023-04-25 15:10:11'),
(364, 167, 'åtgärden slutförd via Async Request', '2023-04-25 13:10:11', '2023-04-25 15:10:11'),
(365, 168, 'åtgärd skapad', '2023-04-25 13:12:30', '2023-04-25 15:12:30'),
(366, 169, 'åtgärd skapad', '2023-04-25 13:12:41', '2023-04-25 15:12:41'),
(367, 170, 'åtgärd skapad', '2023-04-25 13:12:41', '2023-04-25 15:12:41'),
(368, 171, 'åtgärd skapad', '2023-04-25 13:12:41', '2023-04-25 15:12:41'),
(369, 172, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(370, 173, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(371, 174, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(372, 175, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(373, 176, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(374, 177, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(375, 178, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(376, 179, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(377, 180, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(378, 181, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(379, 182, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(380, 183, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(381, 184, 'åtgärd skapad', '2023-04-25 13:12:42', '2023-04-25 15:12:42'),
(382, 168, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(383, 168, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(384, 169, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(385, 169, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(386, 170, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(387, 170, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(388, 171, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(389, 171, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(390, 172, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(391, 172, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(392, 173, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(393, 173, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(394, 174, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(395, 174, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(396, 175, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(397, 175, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(398, 176, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(399, 176, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(400, 177, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(401, 177, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(402, 178, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(403, 178, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(404, 179, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(405, 179, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(406, 180, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(407, 180, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(408, 181, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(409, 181, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(410, 182, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(411, 182, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(412, 183, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(413, 183, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(414, 184, 'åtgärden startades via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(415, 184, 'åtgärden slutförd via WP Cron', '2023-04-25 13:13:27', '2023-04-25 15:13:27'),
(416, 185, 'åtgärd skapad', '2023-04-25 13:19:05', '2023-04-25 15:19:05'),
(417, 186, 'åtgärd skapad', '2023-04-25 13:19:05', '2023-04-25 15:19:05'),
(418, 185, 'åtgärden startades via WP Cron', '2023-04-25 13:19:22', '2023-04-25 15:19:22'),
(419, 185, 'åtgärden slutförd via WP Cron', '2023-04-25 13:19:22', '2023-04-25 15:19:22'),
(420, 186, 'åtgärden startades via WP Cron', '2023-04-25 13:19:22', '2023-04-25 15:19:22'),
(421, 186, 'åtgärden slutförd via WP Cron', '2023-04-25 13:19:22', '2023-04-25 15:19:22'),
(422, 187, 'åtgärd skapad', '2023-04-25 13:19:41', '2023-04-25 15:19:41'),
(423, 188, 'åtgärd skapad', '2023-04-25 13:19:41', '2023-04-25 15:19:41'),
(424, 187, 'åtgärden startades via Async Request', '2023-04-25 13:20:08', '2023-04-25 15:20:08'),
(425, 187, 'åtgärden slutförd via Async Request', '2023-04-25 13:20:08', '2023-04-25 15:20:08'),
(426, 188, 'åtgärden startades via Async Request', '2023-04-25 13:20:08', '2023-04-25 15:20:08'),
(427, 188, 'åtgärden slutförd via Async Request', '2023-04-25 13:20:08', '2023-04-25 15:20:08'),
(428, 189, 'åtgärd skapad', '2023-04-25 13:20:45', '2023-04-25 15:20:45'),
(429, 190, 'åtgärd skapad', '2023-04-25 13:20:45', '2023-04-25 15:20:45'),
(430, 189, 'åtgärden startades via WP Cron', '2023-04-25 13:21:22', '2023-04-25 15:21:22'),
(431, 189, 'åtgärden slutförd via WP Cron', '2023-04-25 13:21:23', '2023-04-25 15:21:23'),
(432, 190, 'åtgärden startades via WP Cron', '2023-04-25 13:21:23', '2023-04-25 15:21:23'),
(433, 190, 'åtgärden slutförd via WP Cron', '2023-04-25 13:21:23', '2023-04-25 15:21:23'),
(434, 191, 'åtgärd skapad', '2023-04-25 13:21:31', '2023-04-25 15:21:31'),
(435, 192, 'åtgärd skapad', '2023-04-25 13:21:31', '2023-04-25 15:21:31'),
(436, 193, 'åtgärd skapad', '2023-04-25 13:21:38', '2023-04-25 15:21:38'),
(437, 194, 'åtgärd skapad', '2023-04-25 13:21:42', '2023-04-25 15:21:42'),
(438, 195, 'åtgärd skapad', '2023-04-25 13:21:47', '2023-04-25 15:21:47'),
(439, 196, 'åtgärd skapad', '2023-04-25 13:21:52', '2023-04-25 15:21:52'),
(440, 197, 'åtgärd skapad', '2023-04-25 13:21:58', '2023-04-25 15:21:58'),
(441, 191, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(442, 191, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(443, 192, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(444, 192, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(445, 193, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(446, 193, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(447, 194, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(448, 194, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(449, 195, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(450, 195, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(451, 196, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(452, 196, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(453, 197, 'åtgärden startades via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(454, 197, 'åtgärden slutförd via WP Cron', '2023-04-25 13:22:23', '2023-04-25 15:22:23'),
(455, 198, 'åtgärd skapad', '2023-04-25 13:22:37', '2023-04-25 15:22:37'),
(456, 199, 'åtgärd skapad', '2023-04-25 13:22:37', '2023-04-25 15:22:37'),
(457, 198, 'åtgärden startades via WP Cron', '2023-04-25 13:23:21', '2023-04-25 15:23:21'),
(458, 198, 'åtgärden slutförd via WP Cron', '2023-04-25 13:23:21', '2023-04-25 15:23:21'),
(459, 199, 'åtgärden startades via WP Cron', '2023-04-25 13:23:21', '2023-04-25 15:23:21'),
(460, 199, 'åtgärden slutförd via WP Cron', '2023-04-25 13:23:21', '2023-04-25 15:23:21'),
(461, 200, 'åtgärd skapad', '2023-04-25 15:09:10', '2023-04-25 17:09:10'),
(462, 200, 'åtgärden startades via Async Request', '2023-04-25 15:09:14', '2023-04-25 17:09:14'),
(463, 200, 'åtgärden slutförd via Async Request', '2023-04-25 15:09:14', '2023-04-25 17:09:14'),
(464, 201, 'åtgärd skapad', '2023-04-25 15:14:41', '2023-04-25 17:14:41'),
(465, 202, 'åtgärd skapad', '2023-04-25 15:14:41', '2023-04-25 17:14:41'),
(466, 201, 'åtgärden startades via Async Request', '2023-04-25 15:15:11', '2023-04-25 17:15:11'),
(467, 201, 'åtgärden slutförd via Async Request', '2023-04-25 15:15:11', '2023-04-25 17:15:11'),
(468, 202, 'åtgärden startades via Async Request', '2023-04-25 15:15:11', '2023-04-25 17:15:11'),
(469, 202, 'åtgärden slutförd via Async Request', '2023-04-25 15:15:11', '2023-04-25 17:15:11'),
(470, 203, 'åtgärd skapad', '2023-04-25 15:24:04', '2023-04-25 17:24:04'),
(471, 204, 'åtgärd skapad', '2023-04-25 15:24:04', '2023-04-25 17:24:04'),
(472, 203, 'åtgärden startades via WP Cron', '2023-04-25 15:24:22', '2023-04-25 17:24:22'),
(473, 203, 'åtgärden slutförd via WP Cron', '2023-04-25 15:24:22', '2023-04-25 17:24:22'),
(474, 204, 'åtgärden startades via WP Cron', '2023-04-25 15:24:22', '2023-04-25 17:24:22'),
(475, 204, 'åtgärden slutförd via WP Cron', '2023-04-25 15:24:23', '2023-04-25 17:24:23'),
(476, 205, 'åtgärd skapad', '2023-04-25 15:27:10', '2023-04-25 17:27:10'),
(477, 206, 'åtgärd skapad', '2023-04-25 15:27:10', '2023-04-25 17:27:10'),
(478, 205, 'åtgärden startades via WP Cron', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(479, 205, 'åtgärden slutförd via WP Cron', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(480, 206, 'åtgärden startades via WP Cron', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(481, 206, 'åtgärden slutförd via WP Cron', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(482, 207, 'åtgärd skapad', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(483, 208, 'åtgärd skapad', '2023-04-25 15:27:25', '2023-04-25 17:27:25'),
(484, 207, 'åtgärden startades via Async Request', '2023-04-25 15:28:13', '2023-04-25 17:28:13'),
(485, 207, 'åtgärden slutförd via Async Request', '2023-04-25 15:28:13', '2023-04-25 17:28:13'),
(486, 208, 'åtgärden startades via Async Request', '2023-04-25 15:28:13', '2023-04-25 17:28:13'),
(487, 208, 'åtgärden slutförd via Async Request', '2023-04-25 15:28:13', '2023-04-25 17:28:13'),
(488, 209, 'åtgärd skapad', '2023-04-25 17:33:12', '2023-04-25 19:33:12'),
(489, 210, 'åtgärd skapad', '2023-04-25 17:33:12', '2023-04-25 19:33:12'),
(490, 211, 'åtgärd skapad', '2023-04-25 17:33:12', '2023-04-25 19:33:12'),
(491, 212, 'åtgärd skapad', '2023-04-25 17:33:12', '2023-04-25 19:33:12'),
(492, 213, 'åtgärd skapad', '2023-04-25 17:33:12', '2023-04-25 19:33:12'),
(493, 209, 'åtgärden startades via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(494, 209, 'åtgärden slutförd via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(495, 210, 'åtgärden startades via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(496, 210, 'åtgärden slutförd via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(497, 211, 'åtgärden startades via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(498, 211, 'åtgärden slutförd via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(499, 212, 'åtgärden startades via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(500, 212, 'åtgärden slutförd via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(501, 213, 'åtgärden startades via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(502, 213, 'åtgärden slutförd via WP Cron', '2023-04-25 17:33:35', '2023-04-25 19:33:35'),
(503, 214, 'åtgärd skapad', '2023-04-25 17:33:49', '2023-04-25 19:33:49'),
(504, 214, 'åtgärden startades via WP Cron', '2023-04-25 17:34:23', '2023-04-25 19:34:23'),
(505, 214, 'åtgärden slutförd via WP Cron', '2023-04-25 17:34:23', '2023-04-25 19:34:23'),
(506, 215, 'åtgärd skapad', '2023-04-25 17:34:23', '2023-04-25 19:34:23'),
(507, 215, 'åtgärden startades via Async Request', '2023-04-25 17:34:51', '2023-04-25 19:34:51'),
(508, 215, 'åtgärden slutförd via Async Request', '2023-04-25 17:34:51', '2023-04-25 19:34:51'),
(509, 216, 'åtgärd skapad', '2023-04-25 17:34:59', '2023-04-25 19:34:59'),
(510, 217, 'åtgärd skapad', '2023-04-25 17:34:59', '2023-04-25 19:34:59'),
(511, 216, 'åtgärden startades via WP Cron', '2023-04-25 17:35:23', '2023-04-25 19:35:23'),
(512, 216, 'åtgärden slutförd via WP Cron', '2023-04-25 17:35:23', '2023-04-25 19:35:23'),
(513, 217, 'åtgärden startades via WP Cron', '2023-04-25 17:35:23', '2023-04-25 19:35:23'),
(514, 217, 'åtgärden slutförd via WP Cron', '2023-04-25 17:35:23', '2023-04-25 19:35:23'),
(515, 218, 'åtgärd skapad', '2023-04-25 17:35:54', '2023-04-25 19:35:54'),
(516, 219, 'åtgärd skapad', '2023-04-25 17:35:54', '2023-04-25 19:35:54'),
(517, 218, 'åtgärden startades via WP Cron', '2023-04-25 17:36:27', '2023-04-25 19:36:27'),
(518, 218, 'åtgärden slutförd via WP Cron', '2023-04-25 17:36:27', '2023-04-25 19:36:27'),
(519, 219, 'åtgärden startades via WP Cron', '2023-04-25 17:36:27', '2023-04-25 19:36:27'),
(520, 219, 'åtgärden slutförd via WP Cron', '2023-04-25 17:36:27', '2023-04-25 19:36:27'),
(521, 220, 'åtgärd skapad', '2023-04-25 17:36:59', '2023-04-25 19:36:59'),
(522, 221, 'åtgärd skapad', '2023-04-25 17:36:59', '2023-04-25 19:36:59'),
(523, 220, 'åtgärden startades via WP Cron', '2023-04-25 17:37:21', '2023-04-25 19:37:21'),
(524, 220, 'åtgärden slutförd via WP Cron', '2023-04-25 17:37:21', '2023-04-25 19:37:21'),
(525, 221, 'åtgärden startades via WP Cron', '2023-04-25 17:37:21', '2023-04-25 19:37:21'),
(526, 221, 'åtgärden slutförd via WP Cron', '2023-04-25 17:37:21', '2023-04-25 19:37:21'),
(527, 222, 'åtgärd skapad', '2023-04-26 07:40:18', '2023-04-26 09:40:18'),
(528, 222, 'åtgärden startades via WP Cron', '2023-04-26 07:40:22', '2023-04-26 09:40:22'),
(529, 222, 'åtgärden slutförd via WP Cron', '2023-04-26 07:40:22', '2023-04-26 09:40:22'),
(530, 223, 'åtgärd skapad', '2023-04-26 07:40:24', '2023-04-26 09:40:24'),
(531, 223, 'åtgärden startades via Async Request', '2023-04-26 07:41:14', '2023-04-26 09:41:14'),
(532, 223, 'åtgärden slutförd via Async Request', '2023-04-26 07:41:14', '2023-04-26 09:41:14'),
(533, 224, 'åtgärd skapad', '2023-04-26 07:50:36', '2023-04-26 09:50:36'),
(534, 225, 'åtgärd skapad', '2023-04-26 07:50:42', '2023-04-26 09:50:42'),
(535, 224, 'åtgärden startades via WP Cron', '2023-04-26 07:51:21', '2023-04-26 09:51:21'),
(536, 224, 'åtgärden slutförd via WP Cron', '2023-04-26 07:51:21', '2023-04-26 09:51:21'),
(537, 225, 'åtgärden startades via WP Cron', '2023-04-26 07:51:21', '2023-04-26 09:51:21'),
(538, 225, 'åtgärden slutförd via WP Cron', '2023-04-26 07:51:21', '2023-04-26 09:51:21'),
(539, 48, 'åtgärden startades via WP Cron', '2023-04-26 07:59:04', '2023-04-26 09:59:04'),
(540, 48, 'åtgärden slutförd via WP Cron', '2023-04-26 07:59:04', '2023-04-26 09:59:04'),
(541, 226, 'åtgärd skapad', '2023-04-26 07:59:04', '2023-04-26 09:59:04'),
(542, 227, 'åtgärd skapad', '2023-04-26 08:38:56', '2023-04-26 10:38:56'),
(543, 227, 'åtgärden startades via WP Cron', '2023-04-26 08:41:41', '2023-04-26 10:41:41'),
(544, 227, 'åtgärden slutförd via WP Cron', '2023-04-26 08:41:41', '2023-04-26 10:41:41'),
(545, 228, 'åtgärd skapad', '2023-04-26 08:45:53', '2023-04-26 10:45:53'),
(546, 228, 'åtgärden startades via WP Cron', '2023-04-26 08:49:38', '2023-04-26 10:49:38'),
(547, 228, 'åtgärden slutförd via WP Cron', '2023-04-26 08:49:38', '2023-04-26 10:49:38'),
(548, 229, 'åtgärd skapad', '2023-04-26 10:37:44', '2023-04-26 12:37:44'),
(549, 229, 'åtgärden startades via WP Cron', '2023-04-26 10:38:23', '2023-04-26 12:38:23'),
(550, 229, 'åtgärden slutförd via WP Cron', '2023-04-26 10:38:23', '2023-04-26 12:38:23'),
(551, 230, 'åtgärd skapad', '2023-04-26 12:27:45', '2023-04-26 14:27:45'),
(552, 230, 'åtgärden startades via WP Cron', '2023-04-26 12:29:55', '2023-04-26 14:29:55'),
(553, 230, 'åtgärden slutförd via WP Cron', '2023-04-26 12:29:55', '2023-04-26 14:29:55'),
(554, 231, 'åtgärd skapad', '2023-04-26 16:12:57', '2023-04-26 18:12:57'),
(555, 231, 'åtgärden startades via WP Cron', '2023-04-26 16:13:20', '2023-04-26 18:13:20'),
(556, 231, 'åtgärden slutförd via WP Cron', '2023-04-26 16:13:20', '2023-04-26 18:13:20'),
(557, 232, 'åtgärd skapad', '2023-04-26 16:13:57', '2023-04-26 18:13:57'),
(558, 233, 'åtgärd skapad', '2023-04-26 16:13:57', '2023-04-26 18:13:57'),
(559, 232, 'åtgärden startades via Async Request', '2023-04-26 16:13:59', '2023-04-26 18:13:59'),
(560, 232, 'åtgärden slutförd via Async Request', '2023-04-26 16:14:00', '2023-04-26 18:14:00'),
(561, 233, 'åtgärden startades via Async Request', '2023-04-26 16:14:00', '2023-04-26 18:14:00'),
(562, 233, 'åtgärden slutförd via Async Request', '2023-04-26 16:14:00', '2023-04-26 18:14:00'),
(563, 226, 'åtgärden startades via WP Cron', '2023-04-27 08:00:11', '2023-04-27 10:00:11'),
(564, 226, 'åtgärden slutförd via WP Cron', '2023-04-27 08:00:11', '2023-04-27 10:00:11'),
(565, 234, 'åtgärd skapad', '2023-04-27 08:00:11', '2023-04-27 10:00:11'),
(566, 235, 'åtgärd skapad', '2023-04-27 09:20:17', '2023-04-27 11:20:17'),
(567, 235, 'åtgärden startades via WP Cron', '2023-04-27 09:20:24', '2023-04-27 11:20:24'),
(568, 235, 'åtgärden slutförd via WP Cron', '2023-04-27 09:20:24', '2023-04-27 11:20:24'),
(569, 236, 'åtgärd skapad', '2023-04-27 09:20:26', '2023-04-27 11:20:26'),
(570, 237, 'åtgärd skapad', '2023-04-27 09:20:26', '2023-04-27 11:20:26'),
(571, 236, 'åtgärden startades via Async Request', '2023-04-27 09:21:11', '2023-04-27 11:21:11'),
(572, 236, 'åtgärden slutförd via Async Request', '2023-04-27 09:21:11', '2023-04-27 11:21:11'),
(573, 237, 'åtgärden startades via Async Request', '2023-04-27 09:21:11', '2023-04-27 11:21:11'),
(574, 237, 'åtgärden slutförd via Async Request', '2023-04-27 09:21:11', '2023-04-27 11:21:11'),
(575, 238, 'åtgärd skapad', '2023-04-27 09:24:39', '2023-04-27 11:24:39'),
(576, 238, 'åtgärden startades via WP Cron', '2023-04-27 09:25:22', '2023-04-27 11:25:22'),
(577, 238, 'åtgärden slutförd via WP Cron', '2023-04-27 09:25:22', '2023-04-27 11:25:22'),
(578, 239, 'åtgärd skapad', '2023-04-27 09:25:23', '2023-04-27 11:25:23'),
(579, 239, 'åtgärden startades via Async Request', '2023-04-27 09:25:41', '2023-04-27 11:25:41'),
(580, 239, 'åtgärden slutförd via Async Request', '2023-04-27 09:25:41', '2023-04-27 11:25:41'),
(581, 240, 'åtgärd skapad', '2023-04-27 09:27:58', '2023-04-27 11:27:58'),
(582, 240, 'åtgärden startades via WP Cron', '2023-04-27 09:28:22', '2023-04-27 11:28:22'),
(583, 240, 'åtgärden slutförd via WP Cron', '2023-04-27 09:28:22', '2023-04-27 11:28:22'),
(584, 241, 'åtgärd skapad', '2023-04-27 09:28:22', '2023-04-27 11:28:22'),
(585, 242, 'åtgärd skapad', '2023-04-27 09:28:22', '2023-04-27 11:28:22'),
(586, 241, 'åtgärden startades via Async Request', '2023-04-27 09:29:06', '2023-04-27 11:29:06'),
(587, 241, 'åtgärden slutförd via Async Request', '2023-04-27 09:29:06', '2023-04-27 11:29:06'),
(588, 242, 'åtgärden startades via Async Request', '2023-04-27 09:29:06', '2023-04-27 11:29:06'),
(589, 242, 'åtgärden slutförd via Async Request', '2023-04-27 09:29:06', '2023-04-27 11:29:06'),
(590, 243, 'åtgärd skapad', '2023-04-27 09:29:59', '2023-04-27 11:29:59'),
(591, 244, 'åtgärd skapad', '2023-04-27 09:30:06', '2023-04-27 11:30:06'),
(592, 243, 'åtgärden startades via Async Request', '2023-04-27 09:30:07', '2023-04-27 11:30:07'),
(593, 243, 'åtgärden slutförd via Async Request', '2023-04-27 09:30:07', '2023-04-27 11:30:07'),
(594, 244, 'åtgärden startades via Async Request', '2023-04-27 09:30:07', '2023-04-27 11:30:07'),
(595, 244, 'åtgärden slutförd via Async Request', '2023-04-27 09:30:07', '2023-04-27 11:30:07'),
(596, 245, 'åtgärd skapad', '2023-04-27 09:30:36', '2023-04-27 11:30:36'),
(597, 246, 'åtgärd skapad', '2023-04-27 09:30:36', '2023-04-27 11:30:36'),
(598, 245, 'åtgärden startades via Async Request', '2023-04-27 09:31:18', '2023-04-27 11:31:18'),
(599, 245, 'åtgärden slutförd via Async Request', '2023-04-27 09:31:18', '2023-04-27 11:31:18'),
(600, 246, 'åtgärden startades via Async Request', '2023-04-27 09:31:18', '2023-04-27 11:31:18') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(601, 246, 'åtgärden slutförd via Async Request', '2023-04-27 09:31:18', '2023-04-27 11:31:18'),
(602, 247, 'åtgärd skapad', '2023-04-27 09:32:14', '2023-04-27 11:32:14'),
(603, 247, 'åtgärden startades via WP Cron', '2023-04-27 09:32:31', '2023-04-27 11:32:31'),
(604, 247, 'åtgärden slutförd via WP Cron', '2023-04-27 09:32:31', '2023-04-27 11:32:31'),
(605, 248, 'åtgärd skapad', '2023-04-27 09:32:32', '2023-04-27 11:32:32'),
(606, 249, 'åtgärd skapad', '2023-04-27 09:32:32', '2023-04-27 11:32:32'),
(607, 248, 'åtgärden startades via Async Request', '2023-04-27 09:32:38', '2023-04-27 11:32:38'),
(608, 248, 'åtgärden slutförd via Async Request', '2023-04-27 09:32:38', '2023-04-27 11:32:38'),
(609, 249, 'åtgärden startades via Async Request', '2023-04-27 09:32:38', '2023-04-27 11:32:38'),
(610, 249, 'åtgärden slutförd via Async Request', '2023-04-27 09:32:38', '2023-04-27 11:32:38'),
(611, 250, 'åtgärd skapad', '2023-04-27 09:34:40', '2023-04-27 11:34:40'),
(612, 251, 'åtgärd skapad', '2023-04-27 09:35:00', '2023-04-27 11:35:00'),
(613, 250, 'åtgärden startades via WP Cron', '2023-04-27 09:35:22', '2023-04-27 11:35:22'),
(614, 250, 'åtgärden slutförd via WP Cron', '2023-04-27 09:35:22', '2023-04-27 11:35:22'),
(615, 251, 'åtgärden startades via WP Cron', '2023-04-27 09:35:22', '2023-04-27 11:35:22'),
(616, 251, 'åtgärden slutförd via WP Cron', '2023-04-27 09:35:22', '2023-04-27 11:35:22'),
(617, 252, 'åtgärd skapad', '2023-04-27 09:35:47', '2023-04-27 11:35:47'),
(618, 253, 'åtgärd skapad', '2023-04-27 09:36:01', '2023-04-27 11:36:01'),
(619, 252, 'åtgärden startades via WP Cron', '2023-04-27 09:36:29', '2023-04-27 11:36:29'),
(620, 252, 'åtgärden slutförd via WP Cron', '2023-04-27 09:36:29', '2023-04-27 11:36:29'),
(621, 253, 'åtgärden startades via WP Cron', '2023-04-27 09:36:29', '2023-04-27 11:36:29'),
(622, 253, 'åtgärden slutförd via WP Cron', '2023-04-27 09:36:29', '2023-04-27 11:36:29'),
(623, 254, 'åtgärd skapad', '2023-04-27 09:37:06', '2023-04-27 11:37:06'),
(624, 255, 'åtgärd skapad', '2023-04-27 09:37:16', '2023-04-27 11:37:16'),
(625, 254, 'åtgärden startades via WP Cron', '2023-04-27 09:37:21', '2023-04-27 11:37:21'),
(626, 254, 'åtgärden slutförd via WP Cron', '2023-04-27 09:37:21', '2023-04-27 11:37:21'),
(627, 255, 'åtgärden startades via WP Cron', '2023-04-27 09:37:21', '2023-04-27 11:37:21'),
(628, 255, 'åtgärden slutförd via WP Cron', '2023-04-27 09:37:21', '2023-04-27 11:37:21'),
(629, 256, 'åtgärd skapad', '2023-04-27 10:33:07', '2023-04-27 12:33:07'),
(630, 256, 'åtgärden startades via WP Cron', '2023-04-27 10:34:18', '2023-04-27 12:34:18'),
(631, 256, 'åtgärden slutförd via WP Cron', '2023-04-27 10:34:18', '2023-04-27 12:34:18'),
(632, 257, 'åtgärd skapad', '2023-04-27 10:34:42', '2023-04-27 12:34:42'),
(633, 257, 'åtgärden startades via WP Cron', '2023-04-27 10:35:50', '2023-04-27 12:35:50'),
(634, 257, 'åtgärden slutförd via WP Cron', '2023-04-27 10:35:50', '2023-04-27 12:35:50'),
(635, 258, 'åtgärd skapad', '2023-04-27 10:35:51', '2023-04-27 12:35:51'),
(636, 259, 'åtgärd skapad', '2023-04-27 10:35:57', '2023-04-27 12:35:57'),
(637, 258, 'åtgärden startades via Async Request', '2023-04-27 10:36:17', '2023-04-27 12:36:17'),
(638, 258, 'åtgärden slutförd via Async Request', '2023-04-27 10:36:17', '2023-04-27 12:36:17'),
(639, 259, 'åtgärden startades via Async Request', '2023-04-27 10:36:17', '2023-04-27 12:36:17'),
(640, 259, 'åtgärden slutförd via Async Request', '2023-04-27 10:36:17', '2023-04-27 12:36:17'),
(641, 260, 'åtgärd skapad', '2023-04-27 12:09:55', '2023-04-27 14:09:55'),
(642, 260, 'åtgärden startades via WP Cron', '2023-04-27 12:10:55', '2023-04-27 14:10:55'),
(643, 260, 'åtgärden slutförd via WP Cron', '2023-04-27 12:10:55', '2023-04-27 14:10:55'),
(644, 261, 'åtgärd skapad', '2023-04-27 20:16:53', '2023-04-27 22:16:53'),
(645, 261, 'åtgärden startades via Async Request', '2023-04-27 20:18:06', '2023-04-27 22:18:06'),
(646, 261, 'åtgärden slutförd via Async Request', '2023-04-27 20:18:06', '2023-04-27 22:18:06'),
(647, 262, 'åtgärd skapad', '2023-04-27 20:37:11', '2023-04-27 22:37:11'),
(648, 262, 'åtgärden startades via WP Cron', '2023-04-27 20:38:31', '2023-04-27 22:38:31'),
(649, 262, 'åtgärden slutförd via WP Cron', '2023-04-27 20:38:32', '2023-04-27 22:38:32'),
(650, 263, 'åtgärd skapad', '2023-04-27 21:09:29', '2023-04-27 23:09:29'),
(651, 263, 'åtgärden startades via WP Cron', '2023-04-27 21:11:08', '2023-04-27 23:11:08'),
(652, 263, 'åtgärden slutförd via WP Cron', '2023-04-27 21:11:08', '2023-04-27 23:11:08'),
(653, 264, 'åtgärd skapad', '2023-04-27 21:12:17', '2023-04-27 23:12:17'),
(654, 264, 'åtgärden startades via WP Cron', '2023-04-27 21:13:31', '2023-04-27 23:13:31'),
(655, 264, 'åtgärden slutförd via WP Cron', '2023-04-27 21:13:31', '2023-04-27 23:13:31'),
(656, 234, 'åtgärden startades via WP Cron', '2023-04-28 08:00:29', '2023-04-28 10:00:29'),
(657, 234, 'åtgärden slutförd via WP Cron', '2023-04-28 08:00:29', '2023-04-28 10:00:29'),
(658, 265, 'åtgärd skapad', '2023-04-28 08:00:29', '2023-04-28 10:00:29'),
(659, 266, 'åtgärd skapad', '2023-04-28 08:00:30', '2023-04-28 10:00:30'),
(660, 266, 'åtgärden startades via WP Cron', '2023-04-28 08:02:51', '2023-04-28 10:02:51'),
(661, 266, 'åtgärden slutförd via WP Cron', '2023-04-28 08:02:51', '2023-04-28 10:02:51'),
(662, 265, 'åtgärden startades via WP Cron', '2023-05-01 07:18:10', '2023-05-01 09:18:10'),
(663, 265, 'åtgärden slutförd via WP Cron', '2023-05-01 07:18:11', '2023-05-01 09:18:11'),
(664, 267, 'åtgärd skapad', '2023-05-01 07:18:11', '2023-05-01 09:18:11'),
(665, 268, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(666, 269, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(667, 270, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(668, 271, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(669, 272, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(670, 273, 'åtgärd skapad', '2023-05-01 11:58:49', '2023-05-01 13:58:49'),
(671, 268, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(672, 268, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(673, 269, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(674, 269, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(675, 270, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(676, 270, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(677, 271, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(678, 271, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(679, 272, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(680, 272, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(681, 273, 'åtgärden startades via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(682, 273, 'åtgärden slutförd via WP Cron', '2023-05-01 11:59:37', '2023-05-01 13:59:37'),
(683, 274, 'åtgärd skapad', '2023-05-01 12:38:13', '2023-05-01 14:38:13'),
(684, 274, 'åtgärden startades via WP Cron', '2023-05-01 12:38:54', '2023-05-01 14:38:54'),
(685, 274, 'åtgärden slutförd via WP Cron', '2023-05-01 12:38:55', '2023-05-01 14:38:55'),
(686, 275, 'åtgärd skapad', '2023-05-01 12:38:55', '2023-05-01 14:38:55'),
(687, 276, 'åtgärd skapad', '2023-05-01 12:39:01', '2023-05-01 14:39:01'),
(688, 277, 'åtgärd skapad', '2023-05-01 12:39:01', '2023-05-01 14:39:01'),
(689, 278, 'åtgärd skapad', '2023-05-01 12:39:01', '2023-05-01 14:39:01'),
(690, 275, 'åtgärden startades via Async Request', '2023-05-01 12:39:15', '2023-05-01 14:39:15'),
(691, 275, 'åtgärden slutförd via Async Request', '2023-05-01 12:39:15', '2023-05-01 14:39:15'),
(692, 276, 'åtgärden startades via Async Request', '2023-05-01 12:39:15', '2023-05-01 14:39:15'),
(693, 276, 'åtgärden slutförd via Async Request', '2023-05-01 12:39:15', '2023-05-01 14:39:15'),
(694, 277, 'åtgärden startades via Async Request', '2023-05-01 12:39:15', '2023-05-01 14:39:15'),
(695, 277, 'åtgärden slutförd via Async Request', '2023-05-01 12:39:16', '2023-05-01 14:39:16'),
(696, 278, 'åtgärden startades via Async Request', '2023-05-01 12:39:16', '2023-05-01 14:39:16'),
(697, 278, 'åtgärden slutförd via Async Request', '2023-05-01 12:39:16', '2023-05-01 14:39:16'),
(698, 279, 'åtgärd skapad', '2023-05-01 12:40:10', '2023-05-01 14:40:10'),
(699, 279, 'åtgärden startades via Async Request', '2023-05-01 12:40:18', '2023-05-01 14:40:18'),
(700, 279, 'åtgärden slutförd via Async Request', '2023-05-01 12:40:18', '2023-05-01 14:40:18') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(701, 280, 'åtgärd skapad', '2023-05-01 12:42:58', '2023-05-01 14:42:58'),
(702, 280, 'åtgärden startades via WP Cron', '2023-05-01 12:43:23', '2023-05-01 14:43:23'),
(703, 280, 'åtgärden slutförd via WP Cron', '2023-05-01 12:43:23', '2023-05-01 14:43:23'),
(704, 281, 'åtgärd skapad', '2023-05-01 12:43:27', '2023-05-01 14:43:27'),
(705, 281, 'åtgärden startades via WP Cron', '2023-05-01 12:44:21', '2023-05-01 14:44:21'),
(706, 281, 'åtgärden slutförd via WP Cron', '2023-05-01 12:44:21', '2023-05-01 14:44:21'),
(707, 282, 'åtgärd skapad', '2023-05-01 12:47:40', '2023-05-01 14:47:40'),
(708, 283, 'åtgärd skapad', '2023-05-01 12:48:06', '2023-05-01 14:48:06'),
(709, 284, 'åtgärd skapad', '2023-05-01 12:48:06', '2023-05-01 14:48:06'),
(710, 285, 'åtgärd skapad', '2023-05-01 12:48:06', '2023-05-01 14:48:06'),
(711, 282, 'åtgärden startades via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(712, 282, 'åtgärden slutförd via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(713, 283, 'åtgärden startades via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(714, 283, 'åtgärden slutförd via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(715, 284, 'åtgärden startades via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(716, 284, 'åtgärden slutförd via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(717, 285, 'åtgärden startades via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(718, 285, 'åtgärden slutförd via Async Request', '2023-05-01 12:48:16', '2023-05-01 14:48:16'),
(719, 286, 'åtgärd skapad', '2023-05-01 12:48:48', '2023-05-01 14:48:48'),
(720, 287, 'åtgärd skapad', '2023-05-01 12:48:50', '2023-05-01 14:48:50'),
(721, 288, 'åtgärd skapad', '2023-05-01 12:48:50', '2023-05-01 14:48:50'),
(722, 289, 'åtgärd skapad', '2023-05-01 12:48:50', '2023-05-01 14:48:50'),
(723, 287, 'åtgärden startades via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(724, 287, 'åtgärden slutförd via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(725, 288, 'åtgärden startades via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(726, 288, 'åtgärden slutförd via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(727, 289, 'åtgärden startades via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(728, 289, 'åtgärden slutförd via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(729, 286, 'åtgärden startades via Async Request', '2023-05-01 12:49:18', '2023-05-01 14:49:18'),
(730, 286, 'åtgärden slutförd via Async Request', '2023-05-01 12:49:19', '2023-05-01 14:49:19'),
(731, 290, 'åtgärd skapad', '2023-05-01 14:31:19', '2023-05-01 16:31:19'),
(732, 290, 'åtgärden startades via WP Cron', '2023-05-01 14:31:28', '2023-05-01 16:31:28'),
(733, 290, 'åtgärden slutförd via WP Cron', '2023-05-01 14:31:29', '2023-05-01 16:31:29'),
(734, 267, 'åtgärden startades via WP Cron', '2023-05-02 07:19:04', '2023-05-02 09:19:04'),
(735, 267, 'åtgärden slutförd via WP Cron', '2023-05-02 07:19:04', '2023-05-02 09:19:04'),
(736, 291, 'åtgärd skapad', '2023-05-02 07:19:04', '2023-05-02 09:19:04'),
(737, 292, 'åtgärd skapad', '2023-05-02 11:21:08', '2023-05-02 13:21:08'),
(738, 292, 'åtgärden startades via WP Cron', '2023-05-02 11:21:38', '2023-05-02 13:21:38'),
(739, 292, 'åtgärden slutförd via WP Cron', '2023-05-02 11:21:38', '2023-05-02 13:21:38'),
(740, 293, 'åtgärd skapad', '2023-05-02 11:21:38', '2023-05-02 13:21:38'),
(741, 294, 'åtgärd skapad', '2023-05-02 11:21:44', '2023-05-02 13:21:44'),
(742, 295, 'åtgärd skapad', '2023-05-02 11:21:44', '2023-05-02 13:21:44'),
(743, 293, 'åtgärden startades via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(744, 293, 'åtgärden slutförd via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(745, 294, 'åtgärden startades via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(746, 294, 'åtgärden slutförd via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(747, 295, 'åtgärden startades via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(748, 295, 'åtgärden slutförd via Async Request', '2023-05-02 11:21:53', '2023-05-02 13:21:53'),
(749, 296, 'åtgärd skapad', '2023-05-02 11:28:13', '2023-05-02 13:28:13'),
(750, 296, 'åtgärden startades via WP Cron', '2023-05-02 11:28:21', '2023-05-02 13:28:21'),
(751, 296, 'åtgärden slutförd via WP Cron', '2023-05-02 11:28:21', '2023-05-02 13:28:21'),
(752, 297, 'åtgärd skapad', '2023-05-02 11:28:21', '2023-05-02 13:28:21'),
(753, 297, 'åtgärden startades via Async Request', '2023-05-02 11:28:46', '2023-05-02 13:28:46'),
(754, 297, 'åtgärden slutförd via Async Request', '2023-05-02 11:28:46', '2023-05-02 13:28:46'),
(755, 298, 'åtgärd skapad', '2023-05-02 19:17:07', '2023-05-02 21:17:07'),
(756, 298, 'åtgärden startades via WP Cron', '2023-05-02 19:17:25', '2023-05-02 21:17:25'),
(757, 298, 'åtgärden slutförd via WP Cron', '2023-05-02 19:17:25', '2023-05-02 21:17:25'),
(758, 299, 'åtgärd skapad', '2023-05-02 19:17:26', '2023-05-02 21:17:26'),
(759, 300, 'åtgärd skapad', '2023-05-02 19:17:32', '2023-05-02 21:17:32'),
(760, 301, 'åtgärd skapad', '2023-05-02 19:17:32', '2023-05-02 21:17:32'),
(761, 302, 'åtgärd skapad', '2023-05-02 19:17:32', '2023-05-02 21:17:32'),
(762, 299, 'åtgärden startades via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(763, 299, 'åtgärden slutförd via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(764, 300, 'åtgärden startades via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(765, 300, 'åtgärden slutförd via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(766, 301, 'åtgärden startades via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(767, 301, 'åtgärden slutförd via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(768, 302, 'åtgärden startades via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(769, 302, 'åtgärden slutförd via Async Request', '2023-05-02 19:17:43', '2023-05-02 21:17:43'),
(770, 303, 'åtgärd skapad', '2023-05-02 19:18:39', '2023-05-02 21:18:39'),
(771, 303, 'åtgärden startades via WP Cron', '2023-05-02 19:19:22', '2023-05-02 21:19:22'),
(772, 303, 'åtgärden slutförd via WP Cron', '2023-05-02 19:19:22', '2023-05-02 21:19:22'),
(773, 304, 'åtgärd skapad', '2023-05-02 19:20:54', '2023-05-02 21:20:54'),
(774, 304, 'åtgärden startades via WP Cron', '2023-05-02 19:21:22', '2023-05-02 21:21:22'),
(775, 304, 'åtgärden slutförd via WP Cron', '2023-05-02 19:21:22', '2023-05-02 21:21:22'),
(776, 305, 'åtgärd skapad', '2023-05-02 19:23:05', '2023-05-02 21:23:05'),
(777, 305, 'åtgärden startades via WP Cron', '2023-05-02 19:23:27', '2023-05-02 21:23:27'),
(778, 305, 'åtgärden slutförd via WP Cron', '2023-05-02 19:23:27', '2023-05-02 21:23:27'),
(779, 306, 'åtgärd skapad', '2023-05-02 19:26:13', '2023-05-02 21:26:13'),
(780, 307, 'åtgärd skapad', '2023-05-02 19:26:18', '2023-05-02 21:26:18'),
(781, 306, 'åtgärden startades via WP Cron', '2023-05-02 19:26:21', '2023-05-02 21:26:21'),
(782, 306, 'åtgärden slutförd via WP Cron', '2023-05-02 19:26:21', '2023-05-02 21:26:21'),
(783, 307, 'åtgärden startades via WP Cron', '2023-05-02 19:26:21', '2023-05-02 21:26:21'),
(784, 307, 'åtgärden slutförd via WP Cron', '2023-05-02 19:26:21', '2023-05-02 21:26:21'),
(785, 308, 'åtgärd skapad', '2023-05-02 19:27:06', '2023-05-02 21:27:06'),
(786, 308, 'åtgärden startades via WP Cron', '2023-05-02 19:27:22', '2023-05-02 21:27:22'),
(787, 308, 'åtgärden slutförd via WP Cron', '2023-05-02 19:27:22', '2023-05-02 21:27:22'),
(788, 309, 'åtgärd skapad', '2023-05-02 19:29:03', '2023-05-02 21:29:03'),
(789, 310, 'åtgärd skapad', '2023-05-02 19:29:03', '2023-05-02 21:29:03'),
(790, 309, 'åtgärden startades via WP Cron', '2023-05-02 19:29:22', '2023-05-02 21:29:22'),
(791, 309, 'åtgärden slutförd via WP Cron', '2023-05-02 19:29:23', '2023-05-02 21:29:23'),
(792, 310, 'åtgärden startades via WP Cron', '2023-05-02 19:29:23', '2023-05-02 21:29:23'),
(793, 310, 'åtgärden slutförd via WP Cron', '2023-05-02 19:29:23', '2023-05-02 21:29:23'),
(794, 311, 'åtgärd skapad', '2023-05-02 19:29:42', '2023-05-02 21:29:42'),
(795, 312, 'åtgärd skapad', '2023-05-02 19:29:44', '2023-05-02 21:29:44'),
(796, 311, 'åtgärden startades via WP Cron', '2023-05-02 19:30:25', '2023-05-02 21:30:25'),
(797, 311, 'åtgärden slutförd via WP Cron', '2023-05-02 19:30:25', '2023-05-02 21:30:25'),
(798, 312, 'åtgärden startades via WP Cron', '2023-05-02 19:30:25', '2023-05-02 21:30:25'),
(799, 312, 'åtgärden slutförd via WP Cron', '2023-05-02 19:30:25', '2023-05-02 21:30:25'),
(800, 313, 'åtgärd skapad', '2023-05-02 19:30:33', '2023-05-02 21:30:33') ;
INSERT INTO `wp_actionscheduler_logs` ( `log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(801, 313, 'åtgärden startades via Async Request', '2023-05-02 19:30:52', '2023-05-02 21:30:52'),
(802, 313, 'åtgärden slutförd via Async Request', '2023-05-02 19:30:52', '2023-05-02 21:30:52'),
(803, 314, 'åtgärd skapad', '2023-05-02 19:32:19', '2023-05-02 21:32:19'),
(804, 314, 'åtgärden startades via Async Request', '2023-05-02 19:33:04', '2023-05-02 21:33:04'),
(805, 314, 'åtgärden slutförd via Async Request', '2023-05-02 19:33:04', '2023-05-02 21:33:04'),
(806, 315, 'åtgärd skapad', '2023-05-02 19:34:27', '2023-05-02 21:34:27'),
(807, 316, 'åtgärd skapad', '2023-05-02 19:34:45', '2023-05-02 21:34:45'),
(808, 317, 'åtgärd skapad', '2023-05-02 19:34:45', '2023-05-02 21:34:45'),
(809, 315, 'åtgärden startades via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(810, 315, 'åtgärden slutförd via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(811, 316, 'åtgärden startades via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(812, 316, 'åtgärden slutförd via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(813, 317, 'åtgärden startades via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(814, 317, 'åtgärden slutförd via WP Cron', '2023-05-02 19:35:22', '2023-05-02 21:35:22'),
(815, 318, 'åtgärd skapad', '2023-05-02 19:35:38', '2023-05-02 21:35:38'),
(816, 318, 'åtgärden startades via Async Request', '2023-05-02 19:35:49', '2023-05-02 21:35:49'),
(817, 318, 'åtgärden slutförd via Async Request', '2023-05-02 19:35:49', '2023-05-02 21:35:49'),
(818, 319, 'åtgärd skapad', '2023-05-02 19:36:33', '2023-05-02 21:36:33'),
(819, 320, 'åtgärd skapad', '2023-05-02 19:36:33', '2023-05-02 21:36:33'),
(820, 321, 'åtgärd skapad', '2023-05-02 19:36:33', '2023-05-02 21:36:33'),
(821, 321, 'åtgärden startades via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(822, 321, 'åtgärden slutförd via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(823, 319, 'åtgärden startades via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(824, 319, 'åtgärden slutförd via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(825, 320, 'åtgärden startades via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(826, 320, 'åtgärden slutförd via Async Request', '2023-05-02 19:36:53', '2023-05-02 21:36:53'),
(827, 322, 'åtgärd skapad', '2023-05-02 19:36:58', '2023-05-02 21:36:58'),
(828, 322, 'åtgärden startades via WP Cron', '2023-05-02 19:37:23', '2023-05-02 21:37:23'),
(829, 322, 'åtgärden slutförd via WP Cron', '2023-05-02 19:37:24', '2023-05-02 21:37:24'),
(830, 323, 'åtgärd skapad', '2023-05-02 19:38:21', '2023-05-02 21:38:21'),
(831, 324, 'åtgärd skapad', '2023-05-02 19:38:21', '2023-05-02 21:38:21'),
(832, 325, 'åtgärd skapad', '2023-05-02 19:38:40', '2023-05-02 21:38:40'),
(833, 323, 'åtgärden startades via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(834, 323, 'åtgärden slutförd via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(835, 324, 'åtgärden startades via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(836, 324, 'åtgärden slutförd via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(837, 325, 'åtgärden startades via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(838, 325, 'åtgärden slutförd via Async Request', '2023-05-02 19:39:07', '2023-05-02 21:39:07'),
(839, 291, 'åtgärden startades via WP Cron', '2023-05-03 07:19:15', '2023-05-03 09:19:15'),
(840, 291, 'åtgärden slutförd via WP Cron', '2023-05-03 07:19:15', '2023-05-03 09:19:15'),
(841, 326, 'åtgärd skapad', '2023-05-03 07:19:15', '2023-05-03 09:19:15'),
(842, 327, 'åtgärd skapad', '2023-05-03 10:06:29', '2023-05-03 12:06:29'),
(843, 327, 'åtgärden startades via Async Request', '2023-05-03 10:06:55', '2023-05-03 12:06:55'),
(844, 327, 'åtgärden slutförd via Async Request', '2023-05-03 10:06:55', '2023-05-03 12:06:55'),
(845, 328, 'åtgärd skapad', '2023-05-03 10:07:11', '2023-05-03 12:07:11'),
(846, 329, 'åtgärd skapad', '2023-05-03 10:07:14', '2023-05-03 12:07:14'),
(847, 328, 'åtgärden startades via WP Cron', '2023-05-03 10:07:21', '2023-05-03 12:07:21'),
(848, 328, 'åtgärden slutförd via WP Cron', '2023-05-03 10:07:21', '2023-05-03 12:07:21'),
(849, 329, 'åtgärden startades via WP Cron', '2023-05-03 10:07:21', '2023-05-03 12:07:21'),
(850, 329, 'åtgärden slutförd via WP Cron', '2023-05-03 10:07:21', '2023-05-03 12:07:21'),
(851, 326, 'åtgärden startades via WP Cron', '2023-05-04 07:24:14', '2023-05-04 09:24:14'),
(852, 326, 'åtgärden slutförd via WP Cron', '2023-05-04 07:24:15', '2023-05-04 09:24:15'),
(853, 330, 'åtgärd skapad', '2023-05-04 07:24:15', '2023-05-04 09:24:15'),
(854, 331, 'åtgärd skapad', '2023-05-04 12:03:11', '2023-05-04 14:03:11'),
(855, 331, 'åtgärden startades via WP Cron', '2023-05-04 12:03:25', '2023-05-04 14:03:25'),
(856, 331, 'åtgärden slutförd via WP Cron', '2023-05-04 12:03:25', '2023-05-04 14:03:25'),
(857, 332, 'åtgärd skapad', '2023-05-04 12:03:26', '2023-05-04 14:03:26'),
(858, 333, 'åtgärd skapad', '2023-05-04 12:03:32', '2023-05-04 14:03:32'),
(859, 334, 'åtgärd skapad', '2023-05-04 12:03:32', '2023-05-04 14:03:32'),
(860, 332, 'åtgärden startades via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(861, 332, 'åtgärden slutförd via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(862, 333, 'åtgärden startades via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(863, 333, 'åtgärden slutförd via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(864, 334, 'åtgärden startades via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(865, 334, 'åtgärden slutförd via WP Cron', '2023-05-04 12:05:42', '2023-05-04 14:05:42'),
(866, 330, 'åtgärden startades via WP Cron', '2023-05-05 07:24:29', '2023-05-05 09:24:29'),
(867, 330, 'åtgärden slutförd via WP Cron', '2023-05-05 07:24:29', '2023-05-05 09:24:29'),
(868, 335, 'åtgärd skapad', '2023-05-05 07:24:29', '2023-05-05 09:24:29') ;

#
# End of data contents of table `wp_actionscheduler_logs`
# --------------------------------------------------------



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10)),
  KEY `woo_idx_comment_type` (`comment_type`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En kommentarsförfattare', 'wapuu@wordpress.example', 'https://sv.wordpress.org/', '', '2023-04-24 13:27:03', '2023-04-24 11:27:03', 'Hej, det här är en kommentar.\nFör att komma igång med granskning, redigering och borttagning av kommentarer, gå till vyn ”Kommentarer” i adminpanelen.\nKommentarsförfattares profilbilder kommer från <a href="https://sv.gravatar.com/">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0),
(2, 262, 'WooCommerce', '', '', '', '2023-04-27 12:35:51', '2023-04-27 10:35:51', 'Lagernivåerna minskade: DRYING TOWEL BIG (torkduk) 10&rarr;9, LOGO HOODIE - SVART - Medium (hoodie-medium)<span class="description"></span> 10&rarr;9', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 262, 'WooCommerce', '', '', '', '2023-04-27 12:35:51', '2023-04-27 10:35:51', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 262, 'WooCommerce', '', '', '', '2023-04-27 12:35:57', '2023-04-27 10:35:57', 'Payment via Klarna Payments, order ID: 77b39cf0-cdc6-4760-9a8d-584a4808ec9c', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 261, 'WooCommerce', '', '', '', '2023-04-27 14:09:55', '2023-04-27 12:09:55', 'Obetald beställning avbruten - tidsgräns uppnådd. Beställningsstatus ändrad från Inväntar betalning till Avbruten.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 291, 'WooCommerce', '', '', '', '2023-05-01 14:38:55', '2023-05-01 12:38:55', 'Lagernivåerna minskade: PURIFY S+ SCHAMPO - 5 liter (purifysplus-5L)<span class="description"></span> 10&rarr;9, T-SHIRT - YARIS GR - Medium (tshirt-medium)<span class="description"></span> 9&rarr;8, AIR FRESHENER - Äpple (airfreshener-äpple)<span class="description"></span> 10&rarr;9', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(7, 291, 'WooCommerce', '', '', '', '2023-05-01 14:38:55', '2023-05-01 12:38:55', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(8, 291, 'WooCommerce', '', '', '', '2023-05-01 14:39:01', '2023-05-01 12:39:01', 'Payment via Klarna Payments, order ID: 7d9e62a0-1ccc-4b2e-834d-6fbfccea9357', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(9, 291, 'carro', 'andersson.carolina@medieinstitutet.se', '', '', '2023-05-01 14:40:13', '2023-05-01 12:40:13', 'Beställningsdetaljer har skickats manuellt till kund.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(10, 262, 'carro', 'andersson.carolina@medieinstitutet.se', '', '', '2023-05-01 14:43:02', '2023-05-01 12:43:02', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(11, 262, 'carro', 'andersson.carolina@medieinstitutet.se', '', '', '2023-05-01 14:43:04', '2023-05-01 12:43:04', 'Färdigbehandlad beställning email notification manually sent.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(12, 293, 'WooCommerce', '', '', '', '2023-05-01 14:48:02', '2023-05-01 12:48:02', 'Lagernivåerna minskade: APC - INTERIOR CLEANER - 500 ml, Jordgubb (apc-jordgubb)<span class="description"></span> 10&rarr;9, ELEVATE - SNOW FOAM - 5 liter (elevate-5L)<span class="description"></span> 10&rarr;9, PURIFY S - SCHAMPO GLOSS - 500 ml (purifys-500ml)<span class="description"></span> 10&rarr;9, VISION+ GLASS CLEANER 500ML (visionglas) 10&rarr;9', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(13, 293, 'WooCommerce', '', '', '', '2023-05-01 14:48:02', '2023-05-01 12:48:02', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(14, 293, 'WooCommerce', '', '', '', '2023-05-01 14:48:06', '2023-05-01 12:48:06', 'Payment via Klarna Payments, order ID: fa52bf60-b2ef-45e5-bb60-fd9b1bdf0367', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(15, 293, 'WooCommerce', '', '', '', '2023-05-01 14:48:48', '2023-05-01 12:48:48', 'Lagernivåerna ökade: APC - INTERIOR CLEANER - 500 ml, Jordgubb (apc-jordgubb)<span class="description"></span> 9&rarr;10, ELEVATE - SNOW FOAM - 5 liter (elevate-5L)<span class="description"></span> 9&rarr;10, PURIFY S - SCHAMPO GLOSS - 500 ml (purifys-500ml)<span class="description"></span> 9&rarr;10, VISION+ GLASS CLEANER 500ML (visionglas) 9&rarr;10', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(16, 293, 'elin', 'elin.robertsson@medieinstitutet.se', '', '', '2023-05-01 14:48:48', '2023-05-01 12:48:48', 'Beställningsstatus ändrad från Behandlas till Inväntar betalning.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(17, 293, 'elin', 'elin.robertsson@medieinstitutet.se', '', '', '2023-05-01 14:48:50', '2023-05-01 12:48:50', 'Kundfaktura / Beställningsdetaljer email notification manually sent.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(18, 293, 'elin', 'elin.robertsson@medieinstitutet.se', '', '', '2023-05-01 14:49:04', '2023-05-01 12:49:04', 'Beställningsdetaljer har skickats manuellt till kund.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(19, 293, 'WooCommerce', '', '', '', '2023-05-01 16:31:19', '2023-05-01 14:31:19', 'Obetald beställning avbruten - tidsgräns uppnådd. Beställningsstatus ändrad från Inväntar betalning till Avbruten.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(20, 298, 'WooCommerce', '', '', '', '2023-05-02 13:21:39', '2023-05-02 11:21:39', 'Lagernivåerna minskade: DRYING TOWEL BIG (torkduk) 9&rarr;8, EXTRACT - ALKALISK AVFETTNING - 25 liter (extract-25L)<span class="description"></span> 10&rarr;9, T-SHIRT - YARIS GR - Large (tshirt-large)<span class="description"></span> 8&rarr;7, APPLICATOR (applicator) 10&rarr;9, REFINED - RUBBER AND TRIM 500ML (refined) 10&rarr;9', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(21, 298, 'WooCommerce', '', '', '', '2023-05-02 13:21:39', '2023-05-02 11:21:39', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(22, 298, 'WooCommerce', '', '', '', '2023-05-02 13:21:44', '2023-05-02 11:21:44', 'Payment via Klarna Payments, order ID: b83a4575-59db-4a6c-a404-3f91320e0362', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(23, 298, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 13:28:16', '2023-05-02 11:28:16', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(24, 298, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 13:28:19', '2023-05-02 11:28:19', 'Beställningsdetaljer har skickats manuellt till kund.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(25, 298, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 13:28:21', '2023-05-02 11:28:21', 'Färdigbehandlad beställning email notification manually sent.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(26, 298, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 13:28:23', '2023-05-02 11:28:23', 'Beställningsdetaljer har skickats manuellt till kund.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(27, 298, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 13:28:26', '2023-05-02 11:28:26', 'Färdigbehandlad beställning email notification manually sent.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(28, 315, 'WooCommerce', '', '', '', '2023-05-02 21:17:26', '2023-05-02 19:17:26', 'Lagernivåerna minskade: APC - INTERIOR CLEANER - 500 ml, Viol (apc-viol)<span class="description"></span> 10&rarr;9, AIR FRESHENER - Jordgubb (airfreshener-jordgubb)<span class="description"></span> 10&rarr;9, VISION+ GLASS CLEANER 500ML (visionglas) 10&rarr;9, LOGO HOODIE - SVART - Medium (hoodie-medium)<span class="description"></span> 9&rarr;8', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(29, 315, 'WooCommerce', '', '', '', '2023-05-02 21:17:26', '2023-05-02 19:17:26', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(30, 315, 'WooCommerce', '', '', '', '2023-05-02 21:17:31', '2023-05-02 19:17:31', 'Payment via Klarna Payments, order ID: 11ca38da-3282-4571-be3a-6e485616d910', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(31, 315, 'sandra', 'sandra.hostkannerberg@medieinstitutet.se', '', '', '2023-05-02 21:18:43', '2023-05-02 19:18:43', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(32, 316, 'WooCommerce', '', '', '', '2023-05-02 21:21:11', '2023-05-02 19:21:11', 'Lagernivåerna minskade: DRYING TOWEL BIG (torkduk) 8&rarr;7', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(33, 316, 'WooCommerce', '', '', '', '2023-05-02 21:21:11', '2023-05-02 19:21:11', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(34, 316, 'WooCommerce', '', '', '', '2023-05-02 21:21:15', '2023-05-02 19:21:15', 'Payment via Klarna Payments, order ID: 8240ceb6-e68b-4e65-a55a-901f8fd2735c', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(35, 316, 'sandra', 'sandra.hostkannerberg@medieinstitutet.se', '', '', '2023-05-02 21:23:07', '2023-05-02 19:23:07', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(36, 317, 'WooCommerce', '', '', '', '2023-05-02 21:26:14', '2023-05-02 19:26:14', 'Lagernivåerna minskade: APPLICATOR (applicator) 9&rarr;8, PURIFY S+ SCHAMPO - 500 ml (purifysplus-500ml)<span class="description"></span> 10&rarr;9, WASH BUCKET (washbucket) 10&rarr;9', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(37, 317, 'WooCommerce', '', '', '', '2023-05-02 21:26:14', '2023-05-02 19:26:14', 'Betalning sker vid leverans. Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(38, 317, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:27:08', '2023-05-02 19:27:08', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(39, 317, 'WooCommerce', '', '', '', '2023-05-02 21:29:01', '2023-05-02 19:29:01', 'Lagersaldo för #97 ökades från 8 till 9.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(40, 317, 'WooCommerce', '', '', '', '2023-05-02 21:29:44', '2023-05-02 19:29:44', 'Beställningsstatus satt till återbetalning. För att återbetala belopp till kunden måste du skapa en återbetalning genom din betalningsmodul.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(41, 317, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:29:44', '2023-05-02 19:29:44', 'Beställningsstatus ändrad från Färdigbehandlad till Återbetald.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(42, 317, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:30:35', '2023-05-02 19:30:35', 'Beställningsstatus ändrad från Återbetald till Färdigbehandlad.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(43, 317, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:32:19', '2023-05-02 19:32:19', 'Beställningsstatus ändrad från Färdigbehandlad till Återbetald.', 0, 'post-trashed', 'WooCommerce', 'order_note', 0, 0),
(44, 320, 'WooCommerce', '', '', '', '2023-05-02 21:34:40', '2023-05-02 19:34:40', 'Lagernivåerna minskade: EXTRACT - ALKALISK AVFETTNING - 5 liter (extract-5L)<span class="description"></span> 10&rarr;9, APC - INTERIOR CLEANER - 500 ml, Äpple (apc-apple)<span class="description"></span> 10&rarr;9', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(45, 320, 'WooCommerce', '', '', '', '2023-05-02 21:34:40', '2023-05-02 19:34:40', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(46, 320, 'WooCommerce', '', '', '', '2023-05-02 21:34:45', '2023-05-02 19:34:45', 'Payment via Klarna Payments, order ID: e55b879c-6829-43f7-b7f7-488251a03a4c', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(47, 321, 'WooCommerce', '', '', '', '2023-05-02 21:35:39', '2023-05-02 19:35:39', 'Lagernivåerna minskade: VISION+ GLASS CLEANER 500ML (visionglas) 9&rarr;8', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(48, 321, 'WooCommerce', '', '', '', '2023-05-02 21:35:39', '2023-05-02 19:35:39', 'Betalning sker vid leverans. Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(49, 320, 'WooCommerce', '', '', '', '2023-05-02 21:36:31', '2023-05-02 19:36:31', 'Lagersaldo för #71 ökades från 9 till 10.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(50, 320, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:37:01', '2023-05-02 19:37:01', 'Beställningsstatus ändrad från Behandlas till Färdigbehandlad.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(51, 321, 'WooCommerce', '', '', '', '2023-05-02 21:38:19', '2023-05-02 19:38:19', 'Lagersaldo för #67 ökades från 8 till 9.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(52, 321, 'WooCommerce', '', '', '', '2023-05-02 21:38:40', '2023-05-02 19:38:40', 'Beställningsstatus satt till återbetalning. För att återbetala belopp till kunden måste du skapa en återbetalning genom din betalningsmodul.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(53, 321, 'linus', 'linus.lundell@medieinstitutet.se', '', '', '2023-05-02 21:38:40', '2023-05-02 19:38:40', 'Beställningsstatus ändrad från Behandlas till Återbetald.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(54, 329, 'WooCommerce', '', '', '', '2023-05-03 12:06:41', '2023-05-03 10:06:41', 'Lagernivåerna minskade: APPLICATOR (applicator) 9&rarr;8, DRYING TOWEL BIG (torkduk) 7&rarr;5', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(55, 329, 'WooCommerce', '', '', '', '2023-05-03 12:06:41', '2023-05-03 10:06:41', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(56, 329, 'WooCommerce', '', '', '', '2023-05-03 12:06:46', '2023-05-03 10:06:46', 'Payment via Klarna Payments, order ID: ea9a1dbc-59f4-4d3f-9498-0439e664fe83', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(57, 329, 'WooCommerce', '', '', '', '2023-05-03 12:07:14', '2023-05-03 10:07:14', 'Beställningsstatus satt till återbetalning. För att återbetala belopp till kunden måste du skapa en återbetalning genom din betalningsmodul.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(58, 329, 'carro', 'andersson.carolina@medieinstitutet.se', '', '', '2023-05-03 12:07:14', '2023-05-03 10:07:14', 'Beställningsstatus ändrad från Behandlas till Återbetald.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(59, 344, 'WooCommerce', '', '', '', '2023-05-04 14:03:26', '2023-05-04 12:03:26', 'Lagernivåerna minskade: AIR FRESHENER - Jordgubb (airfreshener-jordgubb)<span class="description"></span> 9&rarr;8, ELEVATE - SNOW FOAM - 5 liter (elevate-5L)<span class="description"></span> 10&rarr;9', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(60, 344, 'WooCommerce', '', '', '', '2023-05-04 14:03:26', '2023-05-04 12:03:26', 'Beställningsstatus ändrad från Inväntar betalning till Behandlas.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(61, 344, 'WooCommerce', '', '', '', '2023-05-04 14:03:32', '2023-05-04 12:03:32', 'Payment via Klarna Payments, order ID: d48d4b5b-db6c-4efe-b965-708e9fe0b26a', 0, '1', 'WooCommerce', 'order_note', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_litespeed_url`
#

DROP TABLE IF EXISTS `wp_litespeed_url`;


#
# Table structure of table `wp_litespeed_url`
#

CREATE TABLE `wp_litespeed_url` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cache_tags` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`(191)),
  KEY `cache_tags` (`cache_tags`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_litespeed_url`
#

#
# End of data contents of table `wp_litespeed_url`
# --------------------------------------------------------



#
# Delete any existing table `wp_litespeed_url_file`
#

DROP TABLE IF EXISTS `wp_litespeed_url_file`;


#
# Table structure of table `wp_litespeed_url_file`
#

CREATE TABLE `wp_litespeed_url_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url_id` bigint(20) NOT NULL,
  `vary` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of final vary',
  `filename` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'md5 of file content',
  `type` tinyint(4) NOT NULL COMMENT 'css=1,js=2,ccss=3,ucss=4',
  `mobile` tinyint(4) NOT NULL COMMENT 'mobile=1',
  `webp` tinyint(4) NOT NULL COMMENT 'webp=1',
  `expired` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `filename` (`filename`),
  KEY `type` (`type`),
  KEY `url_id_2` (`url_id`,`vary`,`type`),
  KEY `filename_2` (`filename`,`expired`),
  KEY `url_id` (`url_id`,`expired`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_litespeed_url_file`
#

#
# End of data contents of table `wp_litespeed_url_file`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=6735 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/webshop_grupp1', 'yes'),
(2, 'home', 'http://localhost/webshop_grupp1', 'yes'),
(3, 'blogname', 'webshop_grupp1', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sandra.hostkannerberg@medieinstitutet.se', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', '', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y-m-d H:i', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:12:"produkter/?$";s:27:"index.php?post_type=product";s:42:"produkter/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:37:"produkter/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:29:"produkter/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:8:"butik/?$";s:25:"index.php?post_type=butik";s:38:"butik/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=butik&feed=$matches[1]";s:33:"butik/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?post_type=butik&feed=$matches[1]";s:25:"butik/page/([0-9]{1,})/?$";s:43:"index.php?post_type=butik&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:33:"butik/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"butik/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"butik/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"butik/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"butik/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"butik/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"butik/([^/]+)/embed/?$";s:38:"index.php?butik=$matches[1]&embed=true";s:26:"butik/([^/]+)/trackback/?$";s:32:"index.php?butik=$matches[1]&tb=1";s:46:"butik/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?butik=$matches[1]&feed=$matches[2]";s:41:"butik/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?butik=$matches[1]&feed=$matches[2]";s:34:"butik/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?butik=$matches[1]&paged=$matches[2]";s:41:"butik/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?butik=$matches[1]&cpage=$matches[2]";s:31:"butik/([^/]+)/wc-api(/(.*))?/?$";s:46:"index.php?butik=$matches[1]&wc-api=$matches[3]";s:37:"butik/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:48:"butik/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:30:"butik/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?butik=$matches[1]&page=$matches[2]";s:22:"butik/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"butik/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"butik/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"butik/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"butik/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"butik/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=197&cpage=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:13:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:18:"butiker-plugin.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:67:"klarna-payments-for-woocommerce/klarna-payments-for-woocommerce.php";i:4;s:35:"litespeed-cache/litespeed-cache.php";i:5;s:23:"ml-slider/ml-slider.php";i:6;s:29:"otter-blocks/otter-blocks.php";i:7;s:47:"shipping-method-drone/shipping-method-drone.php";i:8;s:49:"woocommerce-email-test/woocommerce-email-test.php";i:9;s:80:"woocommerce-pdf-invoices-packing-slips/woocommerce-pdf-invoices-packingslips.php";i:10;s:27:"woocommerce/woocommerce.php";i:11;s:31:"wp-google-maps/wpGoogleMaps.php";i:12;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront-child', 'yes'),
(42, 'comment_registration', '', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:"litespeed-cache/litespeed-cache.php";s:47:"LiteSpeed\\Activation::uninstall_litespeed_cache";}', 'no'),
(80, 'timezone_string', 'Europe/Stockholm', 'yes'),
(81, 'page_for_posts', '184', 'yes'),
(82, 'page_on_front', '197', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1697887623', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'sv_SE', 'yes'),
(103, 'user_count', '5', 'no'),
(104, 'widget_block', 'a:35:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:159:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Senaste inläggen</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:231:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Senaste kommentarer</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:143:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Arkiv</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Kategorier</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}i:7;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">OM OSS</h3>\n<!-- /wp:heading -->";}i:10;a:1:{s:7:"content";s:94:"<!-- wp:heading {"level":3} -->\n<h3 class="wp-block-heading">KONTAKT</h3>\n<!-- /wp:heading -->";}i:12;a:1:{s:7:"content";s:527:"<!-- wp:social-links {"iconColor":"white","iconColorValue":"#ffffff","openInNewTab":true,"className":"is-style-logos-only","layout":{"type":"flex","orientation":"horizontal"}} -->\n<ul class="wp-block-social-links has-icon-color is-style-logos-only"><!-- wp:social-link {"url":"https://www.facebook.com/","service":"facebook"} /-->\n\n<!-- wp:social-link {"url":"https://www.instagram.com/","service":"instagram"} /-->\n\n<!-- wp:social-link {"url":"https://www.youtube.com/","service":"youtube"} /--></ul>\n<!-- /wp:social-links -->";}i:13;a:1:{s:7:"content";s:101:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">SOCIALA MEDIER</h4>\n<!-- /wp:heading -->";}i:14;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">OM OSS</h4>\n<!-- /wp:heading -->";}i:15;a:1:{s:7:"content";s:94:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">KONTAKT</h4>\n<!-- /wp:heading -->";}i:16;a:1:{s:7:"content";s:100:"<!-- wp:paragraph -->\n<p>Tershine<br>Arenavägen 35<br>121 77 Johanneshov</p>\n<!-- /wp:paragraph -->";}i:17;a:1:{s:7:"content";s:160:"<!-- wp:paragraph -->\n<p>Tel: 0123456789<br>E-post:&nbsp;<a rel="noreferrer noopener" href="" target="_blank">info@thecompany.com</a></p>\n<!-- /wp:paragraph -->";}i:18;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">OM OSS</h4>\n<!-- /wp:heading -->";}i:19;a:1:{s:7:"content";s:163:"<!-- wp:paragraph -->\n<p>Fordonsvård för dig som älskar glans. <br>Snabba leveranser och grym support! <br>May the gloss be with you.</p>\n<!-- /wp:paragraph -->";}i:21;a:1:{s:7:"content";s:74:"<!-- wp:paragraph -->\n<p>Fri frakt från 299 kr</p>\n<!-- /wp:paragraph -->";}i:22;a:1:{s:7:"content";s:181:"<!-- wp:paragraph -->\n<p><a href="//localhost/webshop_grupp1/kopvillkor/" data-type="URL" data-id="//localhost/webshop_grupp1/kopvillkor/">Köpvillkor</a></p>\n<!-- /wp:paragraph -->";}i:23;a:1:{s:7:"content";s:211:"<!-- wp:paragraph -->\n<p><a href="http://localhost/webshop_grupp1/integritetspolicy/" data-type="URL" data-id="http://localhost/webshop_grupp1/integritetspolicy/">Integritetspolicy</a></p>\n<!-- /wp:paragraph -->";}i:24;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">OM OSS</h4>\n<!-- /wp:heading -->";}i:25;a:1:{s:7:"content";s:161:"<!-- wp:paragraph -->\n<p>Fordonsvård för dig som älskar glans.<br>Snabba leveranser och grym support!<br>May the gloss be with you.</p>\n<!-- /wp:paragraph -->";}i:26;a:1:{s:7:"content";s:226:"<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading"><a href="http://localhost/webshop_grupp1/kopvillkor/" data-type="URL" data-id="http://localhost/webshop_grupp1/kopvillkor/">Köpvillkor</a></h5>\n<!-- /wp:heading -->";}i:27;a:1:{s:7:"content";s:246:"<!-- wp:heading {"level":5} -->\n<h5 class="wp-block-heading"><a href="http://localhost/webshop_grupp1/integritetspolicy/" data-type="URL" data-id="http://localhost/webshop_grupp1/integritetspolicy/">Integritetspolicy</a></h5>\n<!-- /wp:heading -->";}i:28;a:1:{s:7:"content";s:94:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">KONTAKT</h4>\n<!-- /wp:heading -->";}i:29;a:1:{s:7:"content";s:100:"<!-- wp:paragraph -->\n<p>Tershine<br>Arenavägen 35<br>121 77 Johanneshov</p>\n<!-- /wp:paragraph -->";}i:30;a:1:{s:7:"content";s:98:"<!-- wp:paragraph -->\n<p>Tel: 0123456789<br>E-post: info@thecompany.com</p>\n<!-- /wp:paragraph -->";}i:31;a:1:{s:7:"content";s:455:"<!-- wp:social-links {"iconColor":"white","iconColorValue":"#ffffff","className":"is-style-logos-only"} -->\n<ul class="wp-block-social-links has-icon-color is-style-logos-only"><!-- wp:social-link {"url":"https://www.facebook.com/","service":"facebook"} /-->\n\n<!-- wp:social-link {"url":"https://www.instagram.com/","service":"instagram"} /-->\n\n<!-- wp:social-link {"url":"https://www.youtube.com/","service":"youtube"} /--></ul>\n<!-- /wp:social-links -->";}i:32;a:1:{s:7:"content";s:101:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">SOCIALA MEDIER</h4>\n<!-- /wp:heading -->";}i:33;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">OM OSS</h4>\n<!-- /wp:heading -->";}i:34;a:1:{s:7:"content";s:94:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">KONTAKT</h4>\n<!-- /wp:heading -->";}i:35;a:1:{s:7:"content";s:93:"<!-- wp:heading {"level":4} -->\n<h4 class="wp-block-heading">OM OSS</h4>\n<!-- /wp:heading -->";}i:36;a:1:{s:7:"content";s:68:"<!-- wp:paragraph -->\n<p>Rabattkod 100OFF</p>\n<!-- /wp:paragraph -->";}i:37;a:1:{s:7:"content";s:417:"<!-- wp:themeisle-blocks/font-awesome-icons {"id":"wp-block-themeisle-blocks-font-awesome-icons-5eb1da06","prefix":"fas","icon":"truck"} -->\n<div id="wp-block-themeisle-blocks-font-awesome-icons-5eb1da06" class="wp-block-themeisle-blocks-font-awesome-icons"><span class="wp-block-themeisle-blocks-font-awesome-icons-container"><i class="fas fa-truck"></i></span></div>\n<!-- /wp:themeisle-blocks/font-awesome-icons -->";}i:38;a:1:{s:7:"content";s:415:"<!-- wp:themeisle-blocks/font-awesome-icons {"id":"wp-block-themeisle-blocks-font-awesome-icons-58522e46","prefix":"fas","icon":"gift"} -->\n<div id="wp-block-themeisle-blocks-font-awesome-icons-58522e46" class="wp-block-themeisle-blocks-font-awesome-icons"><span class="wp-block-themeisle-blocks-font-awesome-icons-container"><i class="fas fa-gift"></i></span></div>\n<!-- /wp:themeisle-blocks/font-awesome-icons -->";}i:39;a:1:{s:7:"content";s:80:"<!-- wp:paragraph -->\n<p>Telefonnummer: 070-000 00 00</p>\n<!-- /wp:paragraph -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:13:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"block-33";i:1;s:8:"block-28";i:2;s:8:"block-24";i:3;s:8:"block-14";i:4;s:8:"block-10";i:5;s:7:"block-7";}s:7:"footer1";a:4:{i:0;s:8:"block-35";i:1;s:8:"block-25";i:2;s:8:"block-26";i:3;s:8:"block-27";}s:7:"footer2";a:3:{i:0;s:8:"block-34";i:1;s:8:"block-29";i:2;s:8:"block-30";}s:7:"footer3";a:2:{i:0;s:8:"block-32";i:1;s:8:"block-31";}s:10:"infobanner";a:4:{i:0;s:8:"block-37";i:1;s:8:"block-21";i:2;s:8:"block-38";i:3;s:8:"block-36";}s:8:"checkout";a:1:{i:0;s:8:"block-39";}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:8:"header-1";a:0:{}s:8:"footer-1";a:4:{i:0;s:8:"block-18";i:1;s:8:"block-19";i:2;s:8:"block-22";i:3;s:8:"block-23";}s:8:"footer-2";a:3:{i:0;s:8:"block-15";i:1;s:8:"block-16";i:2;s:8:"block-17";}s:8:"footer-3";a:2:{i:0;s:8:"block-13";i:1;s:8:"block-12";}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(106, 'cron', 'a:17:{i:1683273374;a:2:{s:27:"litespeed_task_imgoptm_pull";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:16:"litespeed_filter";s:4:"args";a:0:{}s:8:"interval";i:60;}}s:19:"litespeed_task_lqip";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:16:"litespeed_filter";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1683273380;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1683273382;a:2:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1683273389;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1683273392;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1683275223;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1683276815;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1683284182;a:2:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"woocommerce_cleanup_rate_limits";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1683286023;a:5:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1683286041;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1683286042;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1683294982;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1683324000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1683631623;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1683705442;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}i:1685304213;a:1:{s:29:"otter_montly_scheduled_events";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'theme_mods_twentytwentythree', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1682409684;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'yes'),
(124, 'https_detection_errors', 'a:1:{s:20:"https_request_failed";a:1:{i:0;s:28:"HTTPS-begäran misslyckades.";}}', 'yes'),
(141, 'can_compress_scripts', '0', 'no'),
(156, 'finished_updating_comment_type', '1', 'yes'),
(188, 'action_scheduler_hybrid_store_demarkation', '45', 'yes'),
(189, 'schema-ActionScheduler_StoreSchema', '6.0.1682409380', 'yes'),
(190, 'schema-ActionScheduler_LoggerSchema', '3.0.1682409380', 'yes'),
(193, 'woocommerce_schema_version', '430', 'yes'),
(194, 'woocommerce_store_address', 'Arenavägen 35', 'yes'),
(195, 'woocommerce_store_address_2', '', 'yes'),
(196, 'woocommerce_store_city', 'JOHANNESHOV', 'yes'),
(197, 'woocommerce_default_country', 'SE', 'yes'),
(198, 'woocommerce_store_postcode', '12177', 'yes'),
(199, 'woocommerce_allowed_countries', 'all', 'yes'),
(200, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(201, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(202, 'woocommerce_ship_to_countries', '', 'yes'),
(203, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(204, 'woocommerce_default_customer_address', 'base', 'yes'),
(205, 'woocommerce_calc_taxes', 'yes', 'yes'),
(206, 'woocommerce_enable_coupons', 'yes', 'yes'),
(207, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(208, 'woocommerce_currency', 'SEK', 'yes'),
(209, 'woocommerce_currency_pos', 'right_space', 'yes'),
(210, 'woocommerce_price_thousand_sep', '', 'yes'),
(211, 'woocommerce_price_decimal_sep', ',', 'yes'),
(212, 'woocommerce_price_num_decimals', '2', 'yes'),
(213, 'woocommerce_shop_page_id', '46', 'yes'),
(214, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(215, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(216, 'woocommerce_placeholder_image', '45', 'yes'),
(217, 'woocommerce_weight_unit', 'kg', 'yes'),
(218, 'woocommerce_dimension_unit', 'cm', 'yes'),
(219, 'woocommerce_enable_reviews', 'yes', 'yes'),
(220, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(221, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(222, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(223, 'woocommerce_review_rating_required', 'yes', 'no'),
(224, 'woocommerce_manage_stock', 'yes', 'yes'),
(225, 'woocommerce_hold_stock_minutes', '60', 'no'),
(226, 'woocommerce_notify_low_stock', 'yes', 'no'),
(227, 'woocommerce_notify_no_stock', 'yes', 'no'),
(228, 'woocommerce_stock_email_recipient', 'sandra.hostkannerberg@medieinstitutet.se', 'no'),
(229, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(230, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(231, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(232, 'woocommerce_stock_format', '', 'yes'),
(233, 'woocommerce_file_download_method', 'force', 'no'),
(234, 'woocommerce_downloads_redirect_fallback_allowed', 'no', 'no'),
(235, 'woocommerce_downloads_require_login', 'no', 'no'),
(236, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(237, 'woocommerce_downloads_deliver_inline', '', 'no'),
(238, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(239, 'woocommerce_attribute_lookup_enabled', 'no', 'yes'),
(240, 'woocommerce_attribute_lookup_direct_updates', 'no', 'yes'),
(241, 'woocommerce_prices_include_tax', 'yes', 'yes'),
(242, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(243, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(244, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(245, 'woocommerce_tax_classes', '', 'yes'),
(246, 'woocommerce_tax_display_shop', 'incl', 'yes'),
(247, 'woocommerce_tax_display_cart', 'incl', 'yes'),
(248, 'woocommerce_price_display_suffix', '', 'yes'),
(249, 'woocommerce_tax_total_display', 'single', 'no'),
(250, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(251, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(252, 'woocommerce_ship_to_destination', 'shipping', 'no'),
(253, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(254, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(255, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(256, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(257, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(258, 'woocommerce_registration_generate_username', 'yes', 'no'),
(259, 'woocommerce_registration_generate_password', 'yes', 'no'),
(260, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(261, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(262, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(263, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(264, 'woocommerce_checkout_privacy_policy_text', 'Dina personuppgifter kommer att användas för att behandla din beställning, stödja din upplevelse på denna webbplats och för andra ändamål som beskrivs i vår [privacy_policy].', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(265, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(266, 'woocommerce_trash_pending_orders', '', 'no'),
(267, 'woocommerce_trash_failed_orders', '', 'no'),
(268, 'woocommerce_trash_cancelled_orders', '', 'no'),
(269, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(270, 'woocommerce_email_from_name', 'webshop_grupp1', 'no'),
(271, 'woocommerce_email_from_address', 'sandra.hostkannerberg@medieinstitutet.se', 'no'),
(272, 'woocommerce_email_header_image', '', 'no'),
(273, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(274, 'woocommerce_email_base_color', '#7f54b3', 'no'),
(275, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(276, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(277, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(278, 'woocommerce_merchant_email_notifications', 'no', 'no'),
(279, 'woocommerce_cart_page_id', '47', 'no'),
(280, 'woocommerce_checkout_page_id', '48', 'no'),
(281, 'woocommerce_myaccount_page_id', '49', 'no'),
(282, 'woocommerce_terms_page_id', '50', 'yes'),
(283, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(284, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(285, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(286, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(287, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(288, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(289, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(290, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(291, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(292, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(293, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(294, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(295, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(296, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(297, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(298, 'woocommerce_api_enabled', 'no', 'yes'),
(299, 'woocommerce_allow_tracking', 'no', 'no'),
(300, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(301, 'woocommerce_analytics_enabled', 'yes', 'yes'),
(302, 'woocommerce_navigation_enabled', 'no', 'yes'),
(303, 'woocommerce_new_product_management_enabled', 'no', 'yes'),
(304, 'woocommerce_feature_custom_order_tables_enabled', 'no', 'yes'),
(305, 'woocommerce_single_image_width', '600', 'yes'),
(306, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(307, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(308, 'woocommerce_demo_store', 'no', 'no'),
(309, 'wc_downloads_approved_directories_mode', 'enabled', 'yes'),
(310, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:8:"/product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(311, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(312, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(315, 'default_product_cat', '15', 'yes'),
(317, 'woocommerce_refund_returns_page_id', '50', 'yes'),
(320, 'woocommerce_paypal_settings', 'a:23:{s:7:"enabled";s:2:"no";s:5:"title";s:6:"PayPal";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.";s:5:"email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:8:"advanced";s:0:"";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:16:"ipn_notification";s:3:"yes";s:14:"receiver_email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:3:"yes";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";s:12:"_should_load";s:2:"no";}', 'yes'),
(321, 'woocommerce_version', '7.6.0', 'yes'),
(322, 'woocommerce_db_version', '7.6.0', 'yes'),
(323, 'woocommerce_admin_install_timestamp', '1682409382', 'yes'),
(324, 'woocommerce_inbox_variant_assignment', '12', 'yes'),
(328, 'recently_activated', 'a:1:{s:25:"menu-icons/menu-icons.php";i:1682668829;}', 'yes'),
(330, 'action_scheduler_lock_async-request-runner', '1683273390', 'yes'),
(331, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:"no_secure_connection";}', 'yes'),
(332, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:"database_prefix";s:32:"H1xSDJDfw13PNFvNiGkInxsCZezujgUn";}', 'yes'),
(334, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(335, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(336, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(337, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(338, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(339, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(340, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(341, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(342, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(343, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(344, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(345, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'wc_remote_inbox_notifications_stored_state', 'O:8:"stdClass":2:{s:22:"there_were_no_products";b:1;s:22:"there_are_now_products";b:1;}', 'no'),
(361, 'wc_blocks_db_schema_version', '260', 'yes'),
(377, 'woocommerce_task_list_tracked_completed_tasks', 'a:7:{i:0;s:8:"purchase";i:1;s:13:"store_details";i:2;s:8:"shipping";i:3;s:3:"tax";i:4;s:15:"review-shipping";i:5;s:8:"products";i:6;s:8:"payments";}', 'yes'),
(387, 'woocommerce_onboarding_profile', 'a:13:{s:18:"is_agree_marketing";b:0;s:11:"store_email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:20:"is_store_country_set";b:1;s:8:"industry";a:1:{i:0;a:2:{s:4:"slug";s:5:"other";s:6:"detail";s:18:"Bilvårdsprodukter";}}s:13:"product_types";a:1:{i:0;s:8:"physical";}s:13:"product_count";s:6:"11-100";s:14:"selling_venues";s:12:"brick-mortar";s:16:"number_employees";s:3:"<10";s:7:"revenue";s:16:"more-than-250000";s:12:"setup_client";b:0;s:19:"business_extensions";a:0:{}s:5:"theme";s:10:"storefront";s:9:"completed";b:1;}', 'yes'),
(388, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(396, 'current_theme', 'Storefront Childtheme', 'yes'),
(397, 'theme_switched', '', 'yes'),
(398, 'theme_mods_storefront', 'a:3:{s:18:"nav_menu_locations";a:1:{s:7:"primary";i:44;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1682627966;s:4:"data";a:7:{s:19:"wp_inactive_widgets";a:4:{i:0;s:8:"block-14";i:1;s:8:"block-10";i:2;s:7:"block-7";i:3;s:8:"block-21";}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:8:"header-1";a:0:{}s:8:"footer-1";a:4:{i:0;s:8:"block-18";i:1;s:8:"block-19";i:2;s:8:"block-22";i:3;s:8:"block-23";}s:8:"footer-2";a:3:{i:0;s:8:"block-15";i:1;s:8:"block-16";i:2;s:8:"block-17";}s:8:"footer-3";a:2:{i:0;s:8:"block-13";i:1;s:8:"block-12";}s:8:"footer-4";a:0:{}}}}', 'yes'),
(399, 'woocommerce_catalog_rows', '4', 'yes'),
(400, 'woocommerce_catalog_columns', '3', 'yes'),
(401, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(403, 'storefront_nux_fresh_site', '0', 'yes'),
(419, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(428, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(521, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(528, 'woocommerce_flat_rate_2_settings', 'a:8:{s:5:"title";s:13:"Fast pris DHL";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:2:"49";s:13:"class_cost_46";s:2:"19";s:13:"class_cost_47";s:2:"29";s:13:"class_cost_45";s:0:"";s:13:"no_class_cost";s:0:"";s:4:"type";s:5:"order";}', 'yes'),
(558, 'product_cat_children', 'a:2:{i:19;a:2:{i:0;i:20;i:1;i:21;}i:17;a:2:{i:0;i:33;i:1;i:34;}}', 'yes'),
(585, 'woocommerce_ces_product_feedback_shown', '1', 'yes'),
(1203, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(1263, 'wpgmza_db_version', '9.0.18', 'yes'),
(1264, 'wpgmza_global_settings', '{"engine":"google-maps","internal_engine":"legacy","google_maps_api_key":false,"default_marker_icon":"http:\\/\\/localhost\\/webshop_grupp1\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi3.png","developer_mode":false,"user_interface_style":"default","wpgmza_gdpr_enabled":1,"wpgmza_gdpr_default_notice":"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\"wpgmza_gdpr_company_name\\"><\\/span>, for the purpose(s) of <span name=\\"wpgmza_gdpr_retention_purpose\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\"state\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\"https:\\/\\/developers.google.com\\/maps\\/terms\\">see here<\\/a> and <a href=\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\">here<\\/a> for Google\'s terms. Please also see <a href=\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>","wpgmza_gdpr_company_name":"webshop_grupp1","wpgmza_gdpr_retention_purpose":"displaying map tiles, geocoding addresses and calculating and display directions.","wpgmza_gdpr_button_label":"I agree","wpgmza_marker_xml_location":"C:\\\\MAMP\\\\htdocs\\\\webshop_grupp1\\\\wp-content\\\\uploads\\\\wp-google-maps\\\\","wpgmza_marker_xml_url":"http:\\/\\/localhost\\/webshop_grupp1\\/wp-content\\/uploads\\/wp-google-maps\\/","wpgmza_maps_engine":"google-maps","wpgmza_maps_engine_dialog_done":true,"action":"wpgmza_save_settings","wpgmza_settings_map_full_screen_control":false,"wpgmza_settings_map_streetview":false,"wpgmza_settings_map_zoom":false,"wpgmza_settings_map_pan":false,"wpgmza_settings_map_type":false,"wpgmza_settings_map_tilt_controls":false,"wpgmza_settings_map_scroll":false,"wpgmza_settings_map_draggable":false,"wpgmza_settings_map_clickzoom":false,"wpgmza_settings_cat_logic":"0","wpgmza_settings_filterbycat_type":"1","use_fontawesome":"4.*","tile_server_url":"https:\\/\\/{a-c}.tile.openstreetmap.org\\/{z}\\/{x}\\/{y}.png","tile_server_url_override":"","wpgmza_load_engine_api_condition":"where-required","wpgmza_always_include_engine_api_on_pages":"","wpgmza_always_exclude_engine_api_on_pages":"","wpgmza_prevent_other_plugins_and_theme_loading_api":false,"wpgmza_settings_access_level":"manage_options","wpgmza_settings_retina_width":"","wpgmza_settings_retina_height":"","wpgmza_force_greedy_gestures":false,"disable_lightbox_images":false,"gallery_item_source_size":null,"wpgmza_settings_image_resizing":false,"wpgmza_settings_image_width":"","wpgmza_settings_image_height":"","wpgmza_settings_infowindow_width":"","wpgmza_settings_infowindow_links":false,"wpgmza_settings_infowindow_address":false,"infowindow_hide_category":false,"wpgmza_settings_infowindow_link_text":"","wpgmza_settings_map_open_marker_by":"1","wpgmza_settings_disable_infowindows":false,"wpgmza_settings_markerlist_icon":false,"wpgmza_settings_markerlist_link":false,"wpgmza_settings_markerlist_title":false,"wpgmza_settings_markerlist_address":false,"wpgmza_settings_markerlist_category":false,"wpgmza_settings_markerlist_description":false,"wpgmza_do_not_enqueue_datatables":false,"wpgmza_default_items":null,"wpgmza_settings_carousel_markerlist_theme":null,"wpgmza_settings_carousel_markerlist_image":false,"wpgmza_settings_carousel_markerlist_title":false,"wpgmza_settings_carousel_markerlist_icon":false,"wpgmza_settings_carousel_markerlist_address":false,"wpgmza_settings_carousel_markerlist_description":false,"wpgmza_settings_carousel_markerlist_marker_link":false,"wpgmza_settings_carousel_markerlist_directions":false,"wpgmza_settings_carousel_markerlist_resize_image":false,"carousel_lazyload":false,"carousel_autoheight":false,"carousel_pagination":false,"carousel_navigation":false,"wpgmza_do_not_enqueue_owl_carousel":false,"wpgmza_do_not_enqueue_owl_carousel_themes":false,"carousel_items":"5","carousel_items_tablet":"3","carousel_items_mobile":"1","carousel_autoplay":"5000","wpgmza_store_locator_radii":"","wpgmza_google_maps_api_key":"AIzaSyD8xjMrbRu4RvUrKCDCTzukOE-IwRCimVQ","importer_google_maps_api_key":"","open_layers_api_key":"","open_route_service_key":"","wpgmza_settings_marker_pull":"0","wpgmza_custom_css":"","wpgmza_custom_js":"","disable_compressed_path_variables":false,"disable_autoptimize_compatibility_fix":false,"enable_dynamic_sql_refac_filter":false,"disable_automatic_backups":false,"disable_google_fonts":false,"wpgmza_developer_mode":false,"wpgmza_gdpr_require_consent_before_load":false,"wpgmza_gdpr_override_notice":false,"wpgmza_gdpr_notice_override_text":"","infowindow_hide_title":false,"infowindow_hide_gallery":false,"infowindow_hide_description":false,"infowindow_hide_marker_fields":false,"categoryTreeSource":null,"woo_product_location_editor_enabled":false,"woo_checkout_map_enabled":false,"woo_checkout_map_placement":null,"enable_batch_loading":false,"fetchMarkersBatchSize":"100"}', 'yes'),
(1265, 'WPGMZA_OTHER_SETTINGS', 'a:104:{s:6:"engine";s:11:"google-maps";s:15:"internal_engine";s:6:"legacy";s:19:"google_maps_api_key";b:0;s:19:"default_marker_icon";s:91:"http://localhost/webshop_grupp1/wp-content/plugins/wp-google-maps/images/spotlight-poi3.png";s:14:"developer_mode";b:0;s:20:"user_interface_style";s:7:"default";s:19:"wpgmza_gdpr_enabled";i:1;s:26:"wpgmza_gdpr_default_notice";s:1960:"<p>\r\n	I agree for my personal data to be processed by <span name="wpgmza_gdpr_company_name"></span>, for the purpose(s) of <span name="wpgmza_gdpr_retention_purpose"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the "state" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href="https://developers.google.com/maps/terms">see here</a> and <a href="https://maps.google.com/help/terms_maps.html">here</a> for Google\'s terms. Please also see <a href="https://policies.google.com/privacy?hl=en-GB&amp;gl=uk">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>";s:24:"wpgmza_gdpr_company_name";s:14:"webshop_grupp1";s:29:"wpgmza_gdpr_retention_purpose";s:81:"displaying map tiles, geocoding addresses and calculating and display directions.";s:24:"wpgmza_gdpr_button_label";s:7:"I agree";s:26:"wpgmza_marker_xml_location";s:64:"C:\\MAMP\\htdocs\\webshop_grupp1\\wp-content\\uploads\\wp-google-maps\\";s:21:"wpgmza_marker_xml_url";s:66:"http://localhost/webshop_grupp1/wp-content/uploads/wp-google-maps/";s:18:"wpgmza_maps_engine";s:11:"google-maps";s:30:"wpgmza_maps_engine_dialog_done";b:1;s:6:"action";s:20:"wpgmza_save_settings";s:39:"wpgmza_settings_map_full_screen_control";b:0;s:30:"wpgmza_settings_map_streetview";b:0;s:24:"wpgmza_settings_map_zoom";b:0;s:23:"wpgmza_settings_map_pan";b:0;s:24:"wpgmza_settings_map_type";b:0;s:33:"wpgmza_settings_map_tilt_controls";b:0;s:26:"wpgmza_settings_map_scroll";b:0;s:29:"wpgmza_settings_map_draggable";b:0;s:29:"wpgmza_settings_map_clickzoom";b:0;s:25:"wpgmza_settings_cat_logic";s:1:"0";s:32:"wpgmza_settings_filterbycat_type";s:1:"1";s:15:"use_fontawesome";s:3:"4.*";s:15:"tile_server_url";s:52:"https://{a-c}.tile.openstreetmap.org/{z}/{x}/{y}.png";s:24:"tile_server_url_override";s:0:"";s:32:"wpgmza_load_engine_api_condition";s:14:"where-required";s:41:"wpgmza_always_include_engine_api_on_pages";s:0:"";s:41:"wpgmza_always_exclude_engine_api_on_pages";s:0:"";s:50:"wpgmza_prevent_other_plugins_and_theme_loading_api";b:0;s:28:"wpgmza_settings_access_level";s:14:"manage_options";s:28:"wpgmza_settings_retina_width";s:0:"";s:29:"wpgmza_settings_retina_height";s:0:"";s:28:"wpgmza_force_greedy_gestures";b:0;s:23:"disable_lightbox_images";b:0;s:24:"gallery_item_source_size";N;s:30:"wpgmza_settings_image_resizing";b:0;s:27:"wpgmza_settings_image_width";s:0:"";s:28:"wpgmza_settings_image_height";s:0:"";s:32:"wpgmza_settings_infowindow_width";s:0:"";s:32:"wpgmza_settings_infowindow_links";b:0;s:34:"wpgmza_settings_infowindow_address";b:0;s:24:"infowindow_hide_category";b:0;s:36:"wpgmza_settings_infowindow_link_text";s:0:"";s:34:"wpgmza_settings_map_open_marker_by";s:1:"1";s:35:"wpgmza_settings_disable_infowindows";b:0;s:31:"wpgmza_settings_markerlist_icon";b:0;s:31:"wpgmza_settings_markerlist_link";b:0;s:32:"wpgmza_settings_markerlist_title";b:0;s:34:"wpgmza_settings_markerlist_address";b:0;s:35:"wpgmza_settings_markerlist_category";b:0;s:38:"wpgmza_settings_markerlist_description";b:0;s:32:"wpgmza_do_not_enqueue_datatables";b:0;s:20:"wpgmza_default_items";N;s:41:"wpgmza_settings_carousel_markerlist_theme";N;s:41:"wpgmza_settings_carousel_markerlist_image";b:0;s:41:"wpgmza_settings_carousel_markerlist_title";b:0;s:40:"wpgmza_settings_carousel_markerlist_icon";b:0;s:43:"wpgmza_settings_carousel_markerlist_address";b:0;s:47:"wpgmza_settings_carousel_markerlist_description";b:0;s:47:"wpgmza_settings_carousel_markerlist_marker_link";b:0;s:46:"wpgmza_settings_carousel_markerlist_directions";b:0;s:48:"wpgmza_settings_carousel_markerlist_resize_image";b:0;s:17:"carousel_lazyload";b:0;s:19:"carousel_autoheight";b:0;s:19:"carousel_pagination";b:0;s:19:"carousel_navigation";b:0;s:34:"wpgmza_do_not_enqueue_owl_carousel";b:0;s:41:"wpgmza_do_not_enqueue_owl_carousel_themes";b:0;s:14:"carousel_items";s:1:"5";s:21:"carousel_items_tablet";s:1:"3";s:21:"carousel_items_mobile";s:1:"1";s:17:"carousel_autoplay";s:4:"5000";s:26:"wpgmza_store_locator_radii";s:0:"";s:26:"wpgmza_google_maps_api_key";s:39:"AIzaSyD8xjMrbRu4RvUrKCDCTzukOE-IwRCimVQ";s:28:"importer_google_maps_api_key";s:0:"";s:19:"open_layers_api_key";s:0:"";s:22:"open_route_service_key";s:0:"";s:27:"wpgmza_settings_marker_pull";s:1:"0";s:17:"wpgmza_custom_css";s:0:"";s:16:"wpgmza_custom_js";s:0:"";s:33:"disable_compressed_path_variables";b:0;s:37:"disable_autoptimize_compatibility_fix";b:0;s:31:"enable_dynamic_sql_refac_filter";b:0;s:25:"disable_automatic_backups";b:0;s:20:"disable_google_fonts";b:0;s:21:"wpgmza_developer_mode";b:0;s:39:"wpgmza_gdpr_require_consent_before_load";b:0;s:27:"wpgmza_gdpr_override_notice";b:0;s:32:"wpgmza_gdpr_notice_override_text";s:0:"";s:21:"infowindow_hide_title";b:0;s:23:"infowindow_hide_gallery";b:0;s:27:"infowindow_hide_description";b:0;s:29:"infowindow_hide_marker_fields";b:0;s:18:"categoryTreeSource";N;s:35:"woo_product_location_editor_enabled";b:0;s:24:"woo_checkout_map_enabled";b:0;s:26:"woo_checkout_map_placement";N;s:20:"enable_batch_loading";b:0;s:21:"fetchMarkersBatchSize";s:3:"100";}', 'yes'),
(1266, 'wpgmza_xml_location', 'C:\\MAMP\\htdocs\\webshop_grupp1\\wp-content\\uploads\\wp-google-maps\\', 'yes'),
(1267, 'wpgmza_xml_url', 'http://localhost/webshop_grupp1/wp-content/uploads/wp-google-maps/', 'yes'),
(1268, 'wpgmza_temp_api', 'AIzaSyDo_fG7DXBOVvdhlrLa-PHREuFDpTklWhY', 'yes'),
(1269, 'wpgmza-first-run', '2023-04-25T14:13:52+0000', 'yes'),
(1270, 'wpgmza_welcome_screen_done', '1', 'yes'),
(1271, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1275, 'litespeed.conf.__activation', '-1', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1276, 'litespeed.purge.queue', '-1', 'yes'),
(1277, 'litespeed.purge.queue2', '-1', 'yes'),
(1278, 'litespeed.cloud._summary', '{"curr_request.ver":0,"last_request.ver":1683269952,"news.utime":1683269957,"curr_request.news":0,"last_request.news":1683269957}', 'yes'),
(1279, 'litespeed.conf._version', '5.4', 'yes'),
(1280, 'litespeed.conf.hash', 'aCQJV10FV2eIpUIqLUfvbLGUb8xYfSKU', 'yes'),
(1281, 'litespeed.conf.auto_upgrade', '', 'yes'),
(1282, 'litespeed.conf.api_key', '', 'yes'),
(1283, 'litespeed.conf.server_ip', '', 'yes'),
(1284, 'litespeed.conf.guest', '', 'yes'),
(1285, 'litespeed.conf.guest_optm', '', 'yes'),
(1286, 'litespeed.conf.news', '1', 'yes'),
(1287, 'litespeed.conf.guest_uas', '["Lighthouse","GTmetrix","Google","Pingdom","bot","PTST","HeadlessChrome"]', 'yes'),
(1288, 'litespeed.conf.guest_ips', '["208.70.247.157","172.255.48.130","172.255.48.131","172.255.48.132","172.255.48.133","172.255.48.134","172.255.48.135","172.255.48.136","172.255.48.137","172.255.48.138","172.255.48.139","172.255.48.140","172.255.48.141","172.255.48.142","172.255.48.143","172.255.48.144","172.255.48.145","172.255.48.146","172.255.48.147","52.229.122.240","104.214.72.101","13.66.7.11","13.85.24.83","13.85.24.90","13.85.82.26","40.74.242.253","40.74.243.13","40.74.243.176","104.214.48.247","157.55.189.189","104.214.110.135","70.37.83.240","65.52.36.250","13.78.216.56","52.162.212.163","23.96.34.105","65.52.113.236","172.255.61.34","172.255.61.35","172.255.61.36","172.255.61.37","172.255.61.38","172.255.61.39","172.255.61.40","104.41.2.19","191.235.98.164","191.235.99.221","191.232.194.51","52.237.235.185","52.237.250.73","52.237.236.145","104.211.143.8","104.211.165.53","52.172.14.87","40.83.89.214","52.175.57.81","20.188.63.151","20.52.36.49","52.246.165.153","51.144.102.233","13.76.97.224","102.133.169.66","52.231.199.170","13.53.162.7","40.123.218.94"]', 'yes'),
(1289, 'litespeed.conf.cache', '1', 'yes'),
(1290, 'litespeed.conf.cache-priv', '1', 'yes'),
(1291, 'litespeed.conf.cache-commenter', '1', 'yes'),
(1292, 'litespeed.conf.cache-rest', '1', 'yes'),
(1293, 'litespeed.conf.cache-page_login', '1', 'yes'),
(1294, 'litespeed.conf.cache-favicon', '1', 'yes'),
(1295, 'litespeed.conf.cache-resources', '1', 'yes'),
(1296, 'litespeed.conf.cache-mobile', '', 'yes'),
(1297, 'litespeed.conf.cache-mobile_rules', '["Mobile","Android","Silk\\/","Kindle","BlackBerry","Opera Mini","Opera Mobi"]', 'yes'),
(1298, 'litespeed.conf.cache-browser', '', 'yes'),
(1299, 'litespeed.conf.cache-exc_useragents', '[]', 'yes'),
(1300, 'litespeed.conf.cache-exc_cookies', '[]', 'yes'),
(1301, 'litespeed.conf.cache-exc_qs', '[]', 'yes'),
(1302, 'litespeed.conf.cache-exc_cat', '[]', 'yes'),
(1303, 'litespeed.conf.cache-exc_tag', '[]', 'yes'),
(1304, 'litespeed.conf.cache-force_uri', '[]', 'yes'),
(1305, 'litespeed.conf.cache-force_pub_uri', '[]', 'yes'),
(1306, 'litespeed.conf.cache-priv_uri', '[]', 'yes'),
(1307, 'litespeed.conf.cache-exc', '[]', 'yes'),
(1308, 'litespeed.conf.cache-exc_roles', '[]', 'yes'),
(1309, 'litespeed.conf.cache-drop_qs', '["fbclid","gclid","utm*","_ga"]', 'yes'),
(1310, 'litespeed.conf.cache-ttl_pub', '604800', 'yes'),
(1311, 'litespeed.conf.cache-ttl_priv', '1800', 'yes'),
(1312, 'litespeed.conf.cache-ttl_frontpage', '604800', 'yes'),
(1313, 'litespeed.conf.cache-ttl_feed', '604800', 'yes'),
(1314, 'litespeed.conf.cache-ttl_rest', '604800', 'yes'),
(1315, 'litespeed.conf.cache-ttl_browser', '31557600', 'yes'),
(1316, 'litespeed.conf.cache-ttl_status', '["404 3600","500 600"]', 'yes'),
(1317, 'litespeed.conf.cache-login_cookie', '', 'yes'),
(1318, 'litespeed.conf.cache-vary_group', '[]', 'yes'),
(1319, 'litespeed.conf.purge-upgrade', '1', 'yes'),
(1320, 'litespeed.conf.purge-stale', '', 'yes'),
(1321, 'litespeed.conf.purge-post_all', '', 'yes'),
(1322, 'litespeed.conf.purge-post_f', '1', 'yes'),
(1323, 'litespeed.conf.purge-post_h', '1', 'yes'),
(1324, 'litespeed.conf.purge-post_p', '1', 'yes'),
(1325, 'litespeed.conf.purge-post_pwrp', '1', 'yes'),
(1326, 'litespeed.conf.purge-post_a', '1', 'yes'),
(1327, 'litespeed.conf.purge-post_y', '', 'yes'),
(1328, 'litespeed.conf.purge-post_m', '1', 'yes'),
(1329, 'litespeed.conf.purge-post_d', '', 'yes'),
(1330, 'litespeed.conf.purge-post_t', '1', 'yes'),
(1331, 'litespeed.conf.purge-post_pt', '1', 'yes'),
(1332, 'litespeed.conf.purge-timed_urls', '[]', 'yes'),
(1333, 'litespeed.conf.purge-timed_urls_time', '', 'yes'),
(1334, 'litespeed.conf.purge-hook_all', '["switch_theme","wp_create_nav_menu","wp_update_nav_menu","wp_delete_nav_menu","create_term","edit_terms","delete_term","add_link","edit_link","delete_link"]', 'yes'),
(1335, 'litespeed.conf.esi', '', 'yes'),
(1336, 'litespeed.conf.esi-cache_admbar', '1', 'yes'),
(1337, 'litespeed.conf.esi-cache_commform', '1', 'yes'),
(1338, 'litespeed.conf.esi-nonce', '["stats_nonce","subscribe_nonce"]', 'yes'),
(1339, 'litespeed.conf.util-instant_click', '', 'yes'),
(1340, 'litespeed.conf.util-no_https_vary', '', 'yes'),
(1341, 'litespeed.conf.debug-disable_all', '', 'yes'),
(1342, 'litespeed.conf.debug', '', 'yes'),
(1343, 'litespeed.conf.debug-ips', '["127.0.0.1"]', 'yes'),
(1344, 'litespeed.conf.debug-level', '', 'yes'),
(1345, 'litespeed.conf.debug-filesize', '3', 'yes'),
(1346, 'litespeed.conf.debug-cookie', '', 'yes'),
(1347, 'litespeed.conf.debug-collaps_qs', '', 'yes'),
(1348, 'litespeed.conf.debug-inc', '[]', 'yes'),
(1349, 'litespeed.conf.debug-exc', '[]', 'yes'),
(1350, 'litespeed.conf.debug-exc_strings', '[]', 'yes'),
(1351, 'litespeed.conf.db_optm-revisions_max', '0', 'yes'),
(1352, 'litespeed.conf.db_optm-revisions_age', '0', 'yes'),
(1353, 'litespeed.conf.optm-css_min', '', 'yes'),
(1354, 'litespeed.conf.optm-css_comb', '', 'yes'),
(1355, 'litespeed.conf.optm-css_comb_ext_inl', '1', 'yes'),
(1356, 'litespeed.conf.optm-ucss', '', 'yes'),
(1357, 'litespeed.conf.optm-ucss_inline', '', 'yes'),
(1358, 'litespeed.conf.optm-ucss_whitelist', '[]', 'yes'),
(1359, 'litespeed.conf.optm-ucss_file_exc_inline', '[]', 'yes'),
(1360, 'litespeed.conf.optm-ucss_exc', '[]', 'yes'),
(1361, 'litespeed.conf.optm-css_exc', '[]', 'yes'),
(1362, 'litespeed.conf.optm-js_min', '', 'yes'),
(1363, 'litespeed.conf.optm-js_comb', '', 'yes'),
(1364, 'litespeed.conf.optm-js_comb_ext_inl', '1', 'yes'),
(1365, 'litespeed.conf.optm-js_exc', '["jquery.js","jquery.min.js"]', 'yes'),
(1366, 'litespeed.conf.optm-html_min', '', 'yes'),
(1367, 'litespeed.conf.optm-html_lazy', '[]', 'yes'),
(1368, 'litespeed.conf.optm-qs_rm', '', 'yes'),
(1369, 'litespeed.conf.optm-ggfonts_rm', '', 'yes'),
(1370, 'litespeed.conf.optm-css_async', '', 'yes'),
(1371, 'litespeed.conf.optm-ccss_per_url', '', 'yes'),
(1372, 'litespeed.conf.optm-ccss_sep_posttype', '["page"]', 'yes'),
(1373, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(1374, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(1375, 'litespeed.conf.optm-css_font_display', '', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1376, 'litespeed.conf.optm-js_defer', '', 'yes'),
(1377, 'litespeed.conf.optm-emoji_rm', '', 'yes'),
(1378, 'litespeed.conf.optm-noscript_rm', '', 'yes'),
(1379, 'litespeed.conf.optm-ggfonts_async', '', 'yes'),
(1380, 'litespeed.conf.optm-exc_roles', '[]', 'yes'),
(1381, 'litespeed.conf.optm-ccss_con', '', 'yes'),
(1382, 'litespeed.conf.optm-js_defer_exc', '["jquery.js","jquery.min.js","gtm.js","analytics.js"]', 'yes'),
(1383, 'litespeed.conf.optm-gm_js_exc', '[]', 'yes'),
(1384, 'litespeed.conf.optm-dns_prefetch', '[]', 'yes'),
(1385, 'litespeed.conf.optm-dns_prefetch_ctrl', '', 'yes'),
(1386, 'litespeed.conf.optm-exc', '[]', 'yes'),
(1387, 'litespeed.conf.optm-guest_only', '1', 'yes'),
(1388, 'litespeed.conf.object', '', 'yes'),
(1389, 'litespeed.conf.object-kind', '', 'yes'),
(1390, 'litespeed.conf.object-host', 'localhost', 'yes'),
(1391, 'litespeed.conf.object-port', '11211', 'yes'),
(1392, 'litespeed.conf.object-life', '360', 'yes'),
(1393, 'litespeed.conf.object-persistent', '1', 'yes'),
(1394, 'litespeed.conf.object-admin', '1', 'yes'),
(1395, 'litespeed.conf.object-transients', '1', 'yes'),
(1396, 'litespeed.conf.object-db_id', '0', 'yes'),
(1397, 'litespeed.conf.object-user', '', 'yes'),
(1398, 'litespeed.conf.object-pswd', '', 'yes'),
(1399, 'litespeed.conf.object-global_groups', '["users","userlogins","useremail","userslugs","usermeta","user_meta","site-transient","site-options","site-lookup","site-details","blog-lookup","blog-details","blog-id-cache","rss","global-posts","global-cache-test"]', 'yes'),
(1400, 'litespeed.conf.object-non_persistent_groups', '["comment","counts","plugins","wc_session_id"]', 'yes'),
(1401, 'litespeed.conf.discuss-avatar_cache', '', 'yes'),
(1402, 'litespeed.conf.discuss-avatar_cron', '', 'yes'),
(1403, 'litespeed.conf.discuss-avatar_cache_ttl', '604800', 'yes'),
(1404, 'litespeed.conf.optm-localize', '', 'yes'),
(1405, 'litespeed.conf.optm-localize_domains', '["### Popular scripts ###","https:\\/\\/platform.twitter.com\\/widgets.js","https:\\/\\/connect.facebook.net\\/en_US\\/fbevents.js"]', 'yes'),
(1406, 'litespeed.conf.media-lazy', '', 'yes'),
(1407, 'litespeed.conf.media-lazy_placeholder', '', 'yes'),
(1408, 'litespeed.conf.media-placeholder_resp', '', 'yes'),
(1409, 'litespeed.conf.media-placeholder_resp_color', '#cfd4db', 'yes'),
(1410, 'litespeed.conf.media-placeholder_resp_svg', '<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}"><rect width="100%" height="100%" style="fill:{color};fill-opacity: 0.1;"/></svg>', 'yes'),
(1411, 'litespeed.conf.media-lqip', '', 'yes'),
(1412, 'litespeed.conf.media-lqip_qual', '4', 'yes'),
(1413, 'litespeed.conf.media-lqip_min_w', '150', 'yes'),
(1414, 'litespeed.conf.media-lqip_min_h', '150', 'yes'),
(1415, 'litespeed.conf.media-placeholder_resp_async', '1', 'yes'),
(1416, 'litespeed.conf.media-iframe_lazy', '', 'yes'),
(1417, 'litespeed.conf.media-add_missing_sizes', '', 'yes'),
(1418, 'litespeed.conf.media-lazy_exc', '[]', 'yes'),
(1419, 'litespeed.conf.media-lazy_cls_exc', '["wmu-preview-img"]', 'yes'),
(1420, 'litespeed.conf.media-lazy_parent_cls_exc', '[]', 'yes'),
(1421, 'litespeed.conf.media-iframe_lazy_cls_exc', '[]', 'yes'),
(1422, 'litespeed.conf.media-iframe_lazy_parent_cls_exc', '[]', 'yes'),
(1423, 'litespeed.conf.media-lazy_uri_exc', '[]', 'yes'),
(1424, 'litespeed.conf.media-lqip_exc', '[]', 'yes'),
(1425, 'litespeed.conf.media-vpi', '', 'yes'),
(1426, 'litespeed.conf.media-vpi_cron', '', 'yes'),
(1427, 'litespeed.conf.img_optm-auto', '', 'yes'),
(1428, 'litespeed.conf.img_optm-cron', '1', 'yes'),
(1429, 'litespeed.conf.img_optm-ori', '1', 'yes'),
(1430, 'litespeed.conf.img_optm-rm_bkup', '', 'yes'),
(1431, 'litespeed.conf.img_optm-webp', '', 'yes'),
(1432, 'litespeed.conf.img_optm-lossless', '', 'yes'),
(1433, 'litespeed.conf.img_optm-exif', '1', 'yes'),
(1434, 'litespeed.conf.img_optm-webp_attr', '["img.src","div.data-thumb","img.data-src","img.data-lazyload","div.data-large_image","img.retina_logo_url","div.data-parallax-image","div.data-vc-parallax-image","video.poster"]', 'yes'),
(1435, 'litespeed.conf.img_optm-webp_replace_srcset', '', 'yes'),
(1436, 'litespeed.conf.img_optm-jpg_quality', '82', 'yes'),
(1437, 'litespeed.conf.crawler', '', 'yes'),
(1438, 'litespeed.conf.crawler-usleep', '500', 'yes'),
(1439, 'litespeed.conf.crawler-run_duration', '400', 'yes'),
(1440, 'litespeed.conf.crawler-run_interval', '600', 'yes'),
(1441, 'litespeed.conf.crawler-crawl_interval', '302400', 'yes'),
(1442, 'litespeed.conf.crawler-threads', '3', 'yes'),
(1443, 'litespeed.conf.crawler-timeout', '30', 'yes'),
(1444, 'litespeed.conf.crawler-load_limit', '1', 'yes'),
(1445, 'litespeed.conf.crawler-sitemap', '', 'yes'),
(1446, 'litespeed.conf.crawler-drop_domain', '1', 'yes'),
(1447, 'litespeed.conf.crawler-map_timeout', '120', 'yes'),
(1448, 'litespeed.conf.crawler-roles', '[]', 'yes'),
(1449, 'litespeed.conf.crawler-cookies', '[]', 'yes'),
(1450, 'litespeed.conf.misc-heartbeat_front', '', 'yes'),
(1451, 'litespeed.conf.misc-heartbeat_front_ttl', '60', 'yes'),
(1452, 'litespeed.conf.misc-heartbeat_back', '', 'yes'),
(1453, 'litespeed.conf.misc-heartbeat_back_ttl', '60', 'yes'),
(1454, 'litespeed.conf.misc-heartbeat_editor', '', 'yes'),
(1455, 'litespeed.conf.misc-heartbeat_editor_ttl', '15', 'yes'),
(1456, 'litespeed.conf.cdn', '', 'yes'),
(1457, 'litespeed.conf.cdn-ori', '[]', 'yes'),
(1458, 'litespeed.conf.cdn-ori_dir', '["wp-content","wp-includes"]', 'yes'),
(1459, 'litespeed.conf.cdn-exc', '[]', 'yes'),
(1460, 'litespeed.conf.cdn-quic', '', 'yes'),
(1461, 'litespeed.conf.cdn-cloudflare', '', 'yes'),
(1462, 'litespeed.conf.cdn-cloudflare_email', '', 'yes'),
(1463, 'litespeed.conf.cdn-cloudflare_key', '', 'yes'),
(1464, 'litespeed.conf.cdn-cloudflare_name', '', 'yes'),
(1465, 'litespeed.conf.cdn-cloudflare_zone', '', 'yes'),
(1466, 'litespeed.conf.cdn-mapping', '[{"url":"","inc_img":"1","inc_css":"1","inc_js":"1","filetype":[".aac",".css",".eot",".gif",".jpeg",".jpg",".js",".less",".mp3",".mp4",".ogg",".otf",".pdf",".png",".svg",".ttf",".webp",".woff",".woff2"]}]', 'yes'),
(1467, 'litespeed.conf.cdn-attr', '[".src",".data-src",".href",".poster","source.srcset"]', 'yes'),
(1468, 'litespeed.conf.qc-token', '', 'yes'),
(1469, 'litespeed.conf.qc-nameservers', '', 'yes'),
(1471, 'litespeed.gui.lscwp_whm_install', '-1', 'yes'),
(1472, 'litespeed.gui.dismiss', '-1', 'yes'),
(1473, 'litespeed.gui._summary', '{"new_version":1683036884,"score":1683641684}', 'yes'),
(1474, 'litespeed.data.upgrading', '-1', 'yes'),
(1475, 'litespeed.admin_display.messages', '-1', 'yes'),
(1480, 'ms_was_installed_on', '1682432185', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1481, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1499, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1683273364;}', 'no'),
(2007, 'ms_hide_all_ads_until', '1683653897', 'yes'),
(2009, 'ml-slider_children', 'a:0:{}', 'yes'),
(2010, 'metaslider_systemcheck', 'a:2:{s:16:"wordPressVersion";b:0;s:12:"imageLibrary";b:0;}', 'no'),
(2011, 'metaslider_tour_cancelled_on', 'add-slide', 'yes'),
(2129, 'storefront_nux_guided_tour', '1', 'yes'),
(2214, 'category_children', 'a:1:{i:39;a:1:{i:0;i:41;}}', 'yes'),
(2417, 'theme_mods_storefront-child', 'a:5:{i:0;b:0;s:18:"nav_menu_locations";a:3:{s:7:"primary";i:44;s:11:"produktmeny";i:48;s:8:"handheld";i:49;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1682627872;s:4:"data";a:11:{s:19:"wp_inactive_widgets";a:3:{i:0;s:8:"block-14";i:1;s:8:"block-10";i:2;s:7:"block-7";}s:7:"footer1";a:0:{}s:7:"footer2";a:0:{}s:7:"footer3";a:0:{}s:10:"infobanner";a:1:{i:0;s:8:"block-21";}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:8:"header-1";a:0:{}s:8:"footer-1";a:4:{i:0;s:8:"block-18";i:1;s:8:"block-19";i:2;s:8:"block-22";i:3;s:8:"block-23";}s:8:"footer-2";a:3:{i:0;s:8:"block-15";i:1;s:8:"block-16";i:2;s:8:"block-17";}s:8:"footer-3";a:2:{i:0;s:8:"block-13";i:1;s:8:"block-12";}s:8:"footer-4";a:0:{}}}s:11:"custom_logo";i:238;}', 'yes'),
(2428, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(2526, 'litespeed.optimize.timestamp_purge_css', '1682498335', 'yes'),
(2629, 'metaslider_default_settings', 'a:4:{s:5:"title";s:13:"New Slideshow";s:9:"fullWidth";b:1;s:5:"width";s:4:"1084";s:6:"height";s:3:"650";}', 'yes'),
(2823, 'recovery_mode_email_last_sent', '1682515124', 'yes'),
(2894, 'site_logo', '238', 'yes'),
(3074, 'wpgmza-installer-paused', '2023-04-27', 'yes'),
(3139, 'wpgmza_google_maps_api_key', 'AIzaSyD8xjMrbRu4RvUrKCDCTzukOE-IwRCimVQ', 'yes'),
(3142, 'wpgmza-tour-progress-mapEditor', 'sleep_2023-04-27', 'yes'),
(3179, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.7.6";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1682534264;s:7:"version";s:5:"5.7.6";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(3403, 'acf_version', '6.1.4', 'yes'),
(3432, 'woocommerce_flat_rate_3_settings', 'a:8:{s:5:"title";s:18:"Fast pris PostNord";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:2:"59";s:13:"class_cost_46";s:2:"19";s:13:"class_cost_47";s:2:"49";s:13:"class_cost_45";s:0:"";s:13:"no_class_cost";s:0:"";s:4:"type";s:5:"order";}', 'yes'),
(3434, 'woocommerce_flat_rate_4_settings', 'a:8:{s:5:"title";s:8:"Drönare";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:3:"199";s:13:"class_cost_46";s:2:"79";s:13:"class_cost_47";s:2:"99";s:13:"class_cost_45";s:0:"";s:13:"no_class_cost";s:0:"";s:4:"type";s:5:"order";}', 'yes'),
(3435, 'woocommerce_free_shipping_6_settings', 'a:4:{s:5:"title";s:9:"Fri frakt";s:8:"requires";s:10:"min_amount";s:10:"min_amount";s:3:"299";s:16:"ignore_discounts";s:2:"no";}', 'yes'),
(3593, 'woocommerce_klarna_payments_settings', 'a:137:{s:7:"enabled";s:3:"yes";s:5:"title";s:6:"Klarna";s:11:"description";s:0:"";s:8:"testmode";s:3:"yes";s:7:"logging";s:3:"yes";s:13:"extra_logging";s:3:"yes";s:19:"hide_what_is_klarna";s:2:"no";s:20:"float_what_is_klarna";s:3:"yes";s:17:"send_product_urls";s:3:"yes";s:12:"add_to_email";s:2:"no";s:13:"customer_type";s:3:"b2c";s:14:"credentials_au";s:0:"";s:14:"merchant_id_au";s:0:"";s:16:"shared_secret_au";s:0:"";s:19:"test_merchant_id_au";s:0:"";s:21:"test_shared_secret_au";s:0:"";s:14:"credentials_at";s:0:"";s:14:"merchant_id_at";s:0:"";s:16:"shared_secret_at";s:0:"";s:19:"test_merchant_id_at";s:0:"";s:21:"test_shared_secret_at";s:0:"";s:14:"credentials_be";s:0:"";s:14:"merchant_id_be";s:0:"";s:16:"shared_secret_be";s:0:"";s:19:"test_merchant_id_be";s:0:"";s:21:"test_shared_secret_be";s:0:"";s:14:"credentials_ca";s:0:"";s:14:"merchant_id_ca";s:0:"";s:16:"shared_secret_ca";s:0:"";s:19:"test_merchant_id_ca";s:0:"";s:21:"test_shared_secret_ca";s:0:"";s:14:"credentials_cz";s:0:"";s:14:"merchant_id_cz";s:0:"";s:16:"shared_secret_cz";s:0:"";s:19:"test_merchant_id_cz";s:0:"";s:21:"test_shared_secret_cz";s:0:"";s:14:"credentials_dk";s:0:"";s:14:"merchant_id_dk";s:0:"";s:16:"shared_secret_dk";s:0:"";s:19:"test_merchant_id_dk";s:0:"";s:21:"test_shared_secret_dk";s:0:"";s:14:"credentials_de";s:0:"";s:14:"merchant_id_de";s:0:"";s:16:"shared_secret_de";s:0:"";s:19:"test_merchant_id_de";s:0:"";s:21:"test_shared_secret_de";s:0:"";s:14:"credentials_fi";s:0:"";s:14:"merchant_id_fi";s:0:"";s:16:"shared_secret_fi";s:0:"";s:19:"test_merchant_id_fi";s:0:"";s:21:"test_shared_secret_fi";s:0:"";s:14:"credentials_fr";s:0:"";s:14:"merchant_id_fr";s:0:"";s:16:"shared_secret_fr";s:0:"";s:19:"test_merchant_id_fr";s:0:"";s:21:"test_shared_secret_fr";s:0:"";s:14:"credentials_gr";s:0:"";s:14:"merchant_id_gr";s:0:"";s:16:"shared_secret_gr";s:0:"";s:19:"test_merchant_id_gr";s:0:"";s:21:"test_shared_secret_gr";s:0:"";s:14:"credentials_ie";s:0:"";s:14:"merchant_id_ie";s:0:"";s:16:"shared_secret_ie";s:0:"";s:19:"test_merchant_id_ie";s:0:"";s:21:"test_shared_secret_ie";s:0:"";s:14:"credentials_it";s:0:"";s:14:"merchant_id_it";s:0:"";s:16:"shared_secret_it";s:0:"";s:19:"test_merchant_id_it";s:0:"";s:21:"test_shared_secret_it";s:0:"";s:14:"credentials_nl";s:0:"";s:14:"merchant_id_nl";s:0:"";s:16:"shared_secret_nl";s:0:"";s:19:"test_merchant_id_nl";s:0:"";s:21:"test_shared_secret_nl";s:0:"";s:14:"credentials_no";s:0:"";s:14:"merchant_id_no";s:0:"";s:16:"shared_secret_no";s:0:"";s:19:"test_merchant_id_no";s:0:"";s:21:"test_shared_secret_no";s:0:"";s:14:"credentials_nz";s:0:"";s:14:"merchant_id_nz";s:0:"";s:16:"shared_secret_nz";s:0:"";s:19:"test_merchant_id_nz";s:0:"";s:21:"test_shared_secret_nz";s:0:"";s:14:"credentials_mx";s:0:"";s:14:"merchant_id_mx";s:0:"";s:16:"shared_secret_mx";s:0:"";s:19:"test_merchant_id_mx";s:0:"";s:21:"test_shared_secret_mx";s:0:"";s:14:"credentials_pl";s:0:"";s:14:"merchant_id_pl";s:0:"";s:16:"shared_secret_pl";s:0:"";s:19:"test_merchant_id_pl";s:0:"";s:21:"test_shared_secret_pl";s:0:"";s:14:"credentials_pt";s:0:"";s:14:"merchant_id_pt";s:0:"";s:16:"shared_secret_pt";s:0:"";s:19:"test_merchant_id_pt";s:0:"";s:21:"test_shared_secret_pt";s:0:"";s:14:"credentials_es";s:0:"";s:14:"merchant_id_es";s:0:"";s:16:"shared_secret_es";s:0:"";s:19:"test_merchant_id_es";s:0:"";s:21:"test_shared_secret_es";s:0:"";s:14:"credentials_ro";s:0:"";s:14:"merchant_id_ro";s:0:"";s:16:"shared_secret_ro";s:0:"";s:19:"test_merchant_id_ro";s:0:"";s:21:"test_shared_secret_ro";s:0:"";s:14:"credentials_se";s:0:"";s:14:"merchant_id_se";s:0:"";s:16:"shared_secret_se";s:0:"";s:19:"test_merchant_id_se";s:20:"PK72426_e7b7e05e39dd";s:21:"test_shared_secret_se";s:16:"hOa1OanFM2Xjo1BG";s:14:"credentials_ch";s:0:"";s:14:"merchant_id_ch";s:0:"";s:16:"shared_secret_ch";s:0:"";s:19:"test_merchant_id_ch";s:0:"";s:21:"test_shared_secret_ch";s:0:"";s:14:"credentials_gb";s:0:"";s:14:"merchant_id_gb";s:0:"";s:16:"shared_secret_gb";s:0:"";s:19:"test_merchant_id_gb";s:0:"";s:21:"test_shared_secret_gb";s:0:"";s:14:"credentials_us";s:0:"";s:14:"merchant_id_us";s:0:"";s:16:"shared_secret_us";s:0:"";s:19:"test_merchant_id_us";s:0:"";s:21:"test_shared_secret_us";s:0:"";s:14:"iframe_options";s:0:"";s:12:"color_border";s:0:"";s:21:"color_border_selected";s:0:"";s:10:"color_text";s:0:"";s:13:"color_details";s:0:"";s:13:"radius_border";s:0:"";}', 'yes'),
(3608, 'woocommerce_cod_settings', 'a:6:{s:7:"enabled";s:3:"yes";s:5:"title";s:19:"Betala vid leverans";s:11:"description";s:28:"Betala kontant vid leverans.";s:12:"instructions";s:28:"Betala kontant vid leverans.";s:18:"enable_for_methods";a:0:{}s:18:"enable_for_virtual";s:3:"yes";}', 'yes'),
(3609, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:15:"klarna_payments";i:3;}', 'yes'),
(3646, 'theme_mods_twentytwentyone', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:44;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1682591027;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:13:{i:0;s:8:"block-14";i:1;s:8:"block-10";i:2;s:7:"block-7";i:3;s:8:"block-18";i:4;s:8:"block-19";i:5;s:8:"block-22";i:6;s:8:"block-23";i:7;s:8:"block-15";i:8;s:8:"block-16";i:9;s:8:"block-17";i:10;s:8:"block-13";i:11;s:8:"block-12";i:12;s:8:"block-21";}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}}}}', 'yes'),
(3810, 'wc_email_test_order_id', '262', 'yes'),
(3831, 'woocommerce_admin_last_orders_milestone', '1', 'yes'),
(4324, 'wpo_wcpdf_random_string', '2e09489c7b1e6a53f66f665ac6cb63ac', 'yes'),
(4325, 'wpo_wcpdf_settings_general', 'a:4:{s:16:"download_display";s:7:"display";s:13:"template_path";s:14:"default/Simple";s:13:"currency_font";s:0:"";s:10:"paper_size";s:2:"a4";}', 'yes'),
(4326, 'wpo_wcpdf_documents_settings_invoice', 'a:8:{s:7:"enabled";s:1:"1";s:19:"attach_to_email_ids";a:1:{s:24:"customer_completed_order";s:1:"1";}s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:12:"display_date";s:0:"";s:14:"display_number";s:0:"";s:13:"number_format";a:3:{s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:7:"padding";s:0:"";}s:18:"my_account_buttons";s:9:"available";}', 'yes'),
(4327, 'wpo_wcpdf_documents_settings_packing-slip', 'a:1:{s:7:"enabled";i:1;}', 'yes'),
(4328, 'wpo_wcpdf_settings_debug', 'a:2:{s:14:"enable_cleanup";i:1;s:12:"cleanup_days";i:7;}', 'yes'),
(4331, 'wpo_wcpdf_version', '3.5.2', 'yes'),
(4337, 'wpo_wcpdf_installed_template_paths', 'a:1:{s:104:"C:/MAMP/htdocs/webshop_grupp1/wp-content/plugins/woocommerce-pdf-invoices-packing-slips/templates/Simple";s:14:"default/Simple";}', 'yes'),
(4445, 'wpo_wcpdf_hide_attachments_hint', '1', 'yes'),
(4531, 'menu_icons_install', '1682667759', 'yes'),
(4550, 'woocommerce_sales_record_date', '2023-05-02', 'yes'),
(4551, 'woocommerce_sales_record_amount', '3603.25', 'yes'),
(4564, 'otter_blocks_install', '1682668879', 'yes'),
(4567, 'themeisle_blocks_db_version', '2.2.6', 'yes'),
(4569, 'themeisle_blocks_settings_redirect', '', 'yes'),
(4571, 'action_scheduler_migration_status', 'complete', 'yes'),
(5539, 'themeisle_sdk_notifications', 'a:2:{s:17:"last_notification";a:2:{s:2:"id";s:24:"otter_blocks_logger_flag";s:10:"display_at";i:1683028890;}s:24:"last_notification_active";i:1683114859;}', 'yes'),
(6129, 'woocommerce_task_list_reminder_bar_hidden', 'yes', 'yes'),
(6267, 'otter_blocks_logger_flag', 'no', 'yes'),
(6443, 'woocommerce_our_own_drone_shipping_settings', 'a:5:{s:7:"enabled";s:3:"yes";s:6:"weight";s:2:"30";s:5:"title";s:14:"Frakt Drönare";s:8:"distance";s:4:"1000";s:11:"cost_per_km";s:2:"10";}', 'yes') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2644 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2023/04/elevate.webp'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/elevate.webp";s:8:"filesize";i:20726;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"elevate-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3710;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"elevate-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:900;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"elevate-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5188;}s:6:"medium";a:5:{s:4:"file";s:20:"elevate-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3466;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"elevate-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1416;}s:12:"medium_large";a:5:{s:4:"file";s:20:"elevate-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10438;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(5, 6, '_wp_attached_file', '2023/04/elevate5l.webp'),
(6, 6, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/elevate5l.webp";s:8:"filesize";i:23062;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"elevate5l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4168;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"elevate5l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:964;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"elevate5l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5764;}s:6:"medium";a:5:{s:4:"file";s:22:"elevate5l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3658;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"elevate5l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1596;}s:12:"medium_large";a:5:{s:4:"file";s:22:"elevate5l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12518;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(7, 7, '_wp_attached_file', '2023/04/extract.webp'),
(8, 7, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/extract.webp";s:8:"filesize";i:17318;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"extract-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2910;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"extract-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:732;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"extract-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4068;}s:6:"medium";a:5:{s:4:"file";s:20:"extract-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2558;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"extract-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1110;}s:12:"medium_large";a:5:{s:4:"file";s:20:"extract-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8550;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(9, 8, '_wp_attached_file', '2023/04/extract5l.webp'),
(10, 8, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/extract5l.webp";s:8:"filesize";i:38166;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"extract5l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5402;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"extract5l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1114;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"extract5l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7852;}s:6:"medium";a:5:{s:4:"file";s:22:"extract5l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4776;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"extract5l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1862;}s:12:"medium_large";a:5:{s:4:"file";s:22:"extract5l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20470;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(11, 9, '_wp_attached_file', '2023/04/extract25l.webp'),
(12, 9, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:23:"2023/04/extract25l.webp";s:8:"filesize";i:23092;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:23:"extract25l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3612;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:23:"extract25l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:802;}s:18:"woocommerce_single";a:5:{s:4:"file";s:23:"extract25l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5002;}s:6:"medium";a:5:{s:4:"file";s:23:"extract25l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3176;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"extract25l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1338;}s:12:"medium_large";a:5:{s:4:"file";s:23:"extract25l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12228;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(13, 10, '_wp_attached_file', '2023/04/purifys.webp'),
(14, 10, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/purifys.webp";s:8:"filesize";i:19104;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"purifys-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3216;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"purifys-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:848;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"purifys-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4496;}s:6:"medium";a:5:{s:4:"file";s:20:"purifys-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2860;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"purifys-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1300;}s:12:"medium_large";a:5:{s:4:"file";s:20:"purifys-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9422;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(15, 11, '_wp_attached_file', '2023/04/purifys-1.webp'),
(16, 11, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/purifys-1.webp";s:8:"filesize";i:18242;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"purifys-1-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3054;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"purifys-1-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:802;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"purifys-1-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4328;}s:6:"medium";a:5:{s:4:"file";s:22:"purifys-1-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2816;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"purifys-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1238;}s:12:"medium_large";a:5:{s:4:"file";s:22:"purifys-1-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9292;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(17, 12, '_wp_attached_file', '2023/04/purifys5l.webp'),
(18, 12, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/purifys5l.webp";s:8:"filesize";i:60324;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"purifys5l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8230;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"purifys5l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1392;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"purifys5l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12404;}s:6:"medium";a:5:{s:4:"file";s:22:"purifys5l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7356;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"purifys5l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2536;}s:12:"medium_large";a:5:{s:4:"file";s:22:"purifys5l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:33666;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(19, 13, '_wp_attached_file', '2023/04/purifys5l-1.webp'),
(20, 13, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:24:"2023/04/purifys5l-1.webp";s:8:"filesize";i:57066;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:24:"purifys5l-1-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8388;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:24:"purifys5l-1-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1460;}s:18:"woocommerce_single";a:5:{s:4:"file";s:24:"purifys5l-1-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12510;}s:6:"medium";a:5:{s:4:"file";s:24:"purifys5l-1-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7402;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"purifys5l-1-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2564;}s:12:"medium_large";a:5:{s:4:"file";s:24:"purifys5l-1-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:32620;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(21, 14, '_wp_attached_file', '2023/04/refined.webp'),
(22, 14, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/refined.webp";s:8:"filesize";i:19604;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"refined-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3402;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"refined-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:870;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"refined-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4758;}s:6:"medium";a:5:{s:4:"file";s:20:"refined-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2846;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"refined-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1316;}s:12:"medium_large";a:5:{s:4:"file";s:20:"refined-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9734;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(23, 15, '_wp_attached_file', '2023/04/refined2.webp'),
(24, 15, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/refined2.webp";s:8:"filesize";i:128354;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"refined2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:20754;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"refined2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4036;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"refined2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:28782;}s:6:"medium";a:5:{s:4:"file";s:21:"refined2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:18544;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"refined2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7340;}s:12:"medium_large";a:5:{s:4:"file";s:21:"refined2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:70880;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 16, '_wp_attached_file', '2023/04/vision.webp'),
(26, 16, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:19:"2023/04/vision.webp";s:8:"filesize";i:21564;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:19:"vision-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4058;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:19:"vision-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:970;}s:18:"woocommerce_single";a:5:{s:4:"file";s:19:"vision-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5288;}s:6:"medium";a:5:{s:4:"file";s:19:"vision-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3586;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"vision-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1630;}s:12:"medium_large";a:5:{s:4:"file";s:19:"vision-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11710;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(27, 17, '_wp_attached_file', '2023/04/airfreshener-apple.webp'),
(28, 17, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:31:"2023/04/airfreshener-apple.webp";s:8:"filesize";i:47870;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:31:"airfreshener-apple-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5758;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:31:"airfreshener-apple-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1206;}s:18:"woocommerce_single";a:5:{s:4:"file";s:31:"airfreshener-apple-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9592;}s:6:"medium";a:5:{s:4:"file";s:31:"airfreshener-apple-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5460;}s:9:"thumbnail";a:5:{s:4:"file";s:31:"airfreshener-apple-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2036;}s:12:"medium_large";a:5:{s:4:"file";s:31:"airfreshener-apple-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27164;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(29, 18, '_wp_attached_file', '2023/04/airfreshener-jordgubbe.webp'),
(30, 18, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:35:"2023/04/airfreshener-jordgubbe.webp";s:8:"filesize";i:48320;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:35:"airfreshener-jordgubbe-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6188;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:35:"airfreshener-jordgubbe-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1200;}s:18:"woocommerce_single";a:5:{s:4:"file";s:35:"airfreshener-jordgubbe-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9462;}s:6:"medium";a:5:{s:4:"file";s:35:"airfreshener-jordgubbe-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5222;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"airfreshener-jordgubbe-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2088;}s:12:"medium_large";a:5:{s:4:"file";s:35:"airfreshener-jordgubbe-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27534;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 19, '_wp_attached_file', '2023/04/airfreshener-samlingsbild.webp'),
(32, 19, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:38:"2023/04/airfreshener-samlingsbild.webp";s:8:"filesize";i:70102;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:38:"airfreshener-samlingsbild-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12424;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:38:"airfreshener-samlingsbild-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2326;}s:18:"woocommerce_single";a:5:{s:4:"file";s:38:"airfreshener-samlingsbild-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:18030;}s:6:"medium";a:5:{s:4:"file";s:38:"airfreshener-samlingsbild-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11126;}s:9:"thumbnail";a:5:{s:4:"file";s:38:"airfreshener-samlingsbild-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4084;}s:12:"medium_large";a:5:{s:4:"file";s:38:"airfreshener-samlingsbild-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:42936;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(33, 20, '_wp_attached_file', '2023/04/airfreshener-vanilj.webp'),
(34, 20, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:32:"2023/04/airfreshener-vanilj.webp";s:8:"filesize";i:45416;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"airfreshener-vanilj-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5258;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"airfreshener-vanilj-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1068;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"airfreshener-vanilj-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8656;}s:6:"medium";a:5:{s:4:"file";s:32:"airfreshener-vanilj-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4604;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"airfreshener-vanilj-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1762;}s:12:"medium_large";a:5:{s:4:"file";s:32:"airfreshener-vanilj-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:25402;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(35, 21, '_wp_attached_file', '2023/04/APCapple.webp'),
(36, 21, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/APCapple.webp";s:8:"filesize";i:15442;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"APCapple-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4218;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"APCapple-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1082;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"APCapple-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5558;}s:6:"medium";a:5:{s:4:"file";s:21:"APCapple-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3806;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"APCapple-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1716;}s:12:"medium_large";a:5:{s:4:"file";s:21:"APCapple-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12362;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(37, 22, '_wp_attached_file', '2023/04/APC-apple-5l.webp'),
(38, 22, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:25:"2023/04/APC-apple-5l.webp";s:8:"filesize";i:46894;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"APC-apple-5l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6932;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"APC-apple-5l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1252;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"APC-apple-5l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10418;}s:6:"medium";a:5:{s:4:"file";s:25:"APC-apple-5l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6060;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"APC-apple-5l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2192;}s:12:"medium_large";a:5:{s:4:"file";s:25:"APC-apple-5l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:26850;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(39, 23, '_wp_attached_file', '2023/04/APCcedertra.webp'),
(40, 23, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:24:"2023/04/APCcedertra.webp";s:8:"filesize";i:22848;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:24:"APCcedertra-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3990;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:24:"APCcedertra-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1058;}s:18:"woocommerce_single";a:5:{s:4:"file";s:24:"APCcedertra-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5214;}s:6:"medium";a:5:{s:4:"file";s:24:"APCcedertra-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3662;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"APCcedertra-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1614;}s:12:"medium_large";a:5:{s:4:"file";s:24:"APCcedertra-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12122;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 24, '_wp_attached_file', '2023/04/APCjordgubbe.webp'),
(42, 24, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:25:"2023/04/APCjordgubbe.webp";s:8:"filesize";i:23100;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"APCjordgubbe-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3950;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"APCjordgubbe-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1084;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"APCjordgubbe-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5194;}s:6:"medium";a:5:{s:4:"file";s:25:"APCjordgubbe-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3558;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"APCjordgubbe-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1634;}s:12:"medium_large";a:5:{s:4:"file";s:25:"APCjordgubbe-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11964;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(43, 25, '_wp_attached_file', '2023/04/APClime.webp'),
(44, 25, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/APClime.webp";s:8:"filesize";i:14638;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"APClime-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3788;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"APClime-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1016;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"APClime-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5498;}s:6:"medium";a:5:{s:4:"file";s:20:"APClime-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3686;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"APClime-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1592;}s:12:"medium_large";a:5:{s:4:"file";s:20:"APClime-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11766;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(45, 26, '_wp_attached_file', '2023/04/APCmelon.webp'),
(46, 26, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/APCmelon.webp";s:8:"filesize";i:21658;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"APCmelon-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4072;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"APCmelon-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1032;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"APCmelon-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5352;}s:6:"medium";a:5:{s:4:"file";s:21:"APCmelon-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3608;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"APCmelon-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1634;}s:12:"medium_large";a:5:{s:4:"file";s:21:"APCmelon-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11678;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(47, 27, '_wp_attached_file', '2023/04/APC-melon-5l.webp'),
(48, 27, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:25:"2023/04/APC-melon-5l.webp";s:8:"filesize";i:47012;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"APC-melon-5l-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6966;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"APC-melon-5l-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1330;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"APC-melon-5l-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10478;}s:6:"medium";a:5:{s:4:"file";s:25:"APC-melon-5l-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6094;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"APC-melon-5l-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2244;}s:12:"medium_large";a:5:{s:4:"file";s:25:"APC-melon-5l-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27068;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(49, 28, '_wp_attached_file', '2023/04/APCviol.webp'),
(50, 28, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/APCviol.webp";s:8:"filesize";i:14096;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"APCviol-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3846;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"APCviol-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:926;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"APCviol-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5146;}s:6:"medium";a:5:{s:4:"file";s:20:"APCviol-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3438;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"APCviol-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1524;}s:12:"medium_large";a:5:{s:4:"file";s:20:"APCviol-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11272;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 29, '_wp_attached_file', '2023/04/tershine-tshirt.webp'),
(52, 29, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:28:"2023/04/tershine-tshirt.webp";s:8:"filesize";i:48450;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:28:"tershine-tshirt-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7908;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:28:"tershine-tshirt-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1542;}s:18:"woocommerce_single";a:5:{s:4:"file";s:28:"tershine-tshirt-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11436;}s:6:"medium";a:5:{s:4:"file";s:28:"tershine-tshirt-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7122;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"tershine-tshirt-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2680;}s:12:"medium_large";a:5:{s:4:"file";s:28:"tershine-tshirt-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27554;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 30, '_wp_attached_file', '2023/04/tershine-tshirt-2.webp'),
(54, 30, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:30:"2023/04/tershine-tshirt-2.webp";s:8:"filesize";i:58126;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"tershine-tshirt-2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14180;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"tershine-tshirt-2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2962;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"tershine-tshirt-2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:18950;}s:6:"medium";a:5:{s:4:"file";s:30:"tershine-tshirt-2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12618;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"tershine-tshirt-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5036;}s:12:"medium_large";a:5:{s:4:"file";s:30:"tershine-tshirt-2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:42728;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(55, 31, '_wp_attached_file', '2023/04/tershine-tshirt-3.webp'),
(56, 31, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:30:"2023/04/tershine-tshirt-3.webp";s:8:"filesize";i:22232;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"tershine-tshirt-3-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6822;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"tershine-tshirt-3-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1500;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"tershine-tshirt-3-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8880;}s:6:"medium";a:5:{s:4:"file";s:30:"tershine-tshirt-3-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6180;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"tershine-tshirt-3-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2508;}s:12:"medium_large";a:5:{s:4:"file";s:30:"tershine-tshirt-3-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:17958;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 32, '_wp_attached_file', '2023/04/tershine-hoodie.webp'),
(58, 32, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:28:"2023/04/tershine-hoodie.webp";s:8:"filesize";i:33414;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:28:"tershine-hoodie-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4982;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:28:"tershine-hoodie-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1012;}s:18:"woocommerce_single";a:5:{s:4:"file";s:28:"tershine-hoodie-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6962;}s:6:"medium";a:5:{s:4:"file";s:28:"tershine-hoodie-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4354;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"tershine-hoodie-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1810;}s:12:"medium_large";a:5:{s:4:"file";s:28:"tershine-hoodie-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:17168;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 33, '_wp_attached_file', '2023/04/applicator.webp'),
(60, 33, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:23:"2023/04/applicator.webp";s:8:"filesize";i:94236;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:23:"applicator-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11040;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:23:"applicator-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1138;}s:18:"woocommerce_single";a:5:{s:4:"file";s:23:"applicator-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:18118;}s:6:"medium";a:5:{s:4:"file";s:23:"applicator-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9494;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"applicator-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2382;}s:12:"medium_large";a:5:{s:4:"file";s:23:"applicator-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:57376;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 34, '_wp_attached_file', '2023/04/applicator2.webp'),
(62, 34, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:24:"2023/04/applicator2.webp";s:8:"filesize";i:75644;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:24:"applicator2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:10638;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:24:"applicator2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2412;}s:18:"woocommerce_single";a:5:{s:4:"file";s:24:"applicator2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14572;}s:6:"medium";a:5:{s:4:"file";s:24:"applicator2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9416;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"applicator2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3944;}s:12:"medium_large";a:5:{s:4:"file";s:24:"applicator2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:32872;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 35, '_wp_attached_file', '2023/04/hink.webp'),
(64, 35, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:17:"2023/04/hink.webp";s:8:"filesize";i:44668;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:17:"hink-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9152;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:17:"hink-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1758;}s:18:"woocommerce_single";a:5:{s:4:"file";s:17:"hink-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12734;}s:6:"medium";a:5:{s:4:"file";s:17:"hink-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8180;}s:9:"thumbnail";a:5:{s:4:"file";s:17:"hink-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3144;}s:12:"medium_large";a:5:{s:4:"file";s:17:"hink-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:28758;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(65, 36, '_wp_attached_file', '2023/04/hink2.webp'),
(66, 36, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:18:"2023/04/hink2.webp";s:8:"filesize";i:126922;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:18:"hink2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:25502;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:18:"hink2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4460;}s:18:"woocommerce_single";a:5:{s:4:"file";s:18:"hink2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:36266;}s:6:"medium";a:5:{s:4:"file";s:18:"hink2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:22888;}s:9:"thumbnail";a:5:{s:4:"file";s:18:"hink2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8602;}s:12:"medium_large";a:5:{s:4:"file";s:18:"hink2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:85684;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(67, 37, '_wp_attached_file', '2023/04/p-skiva.webp') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(68, 37, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/p-skiva.webp";s:8:"filesize";i:42624;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"p-skiva-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6184;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"p-skiva-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1470;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"p-skiva-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8386;}s:6:"medium";a:5:{s:4:"file";s:20:"p-skiva-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5532;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"p-skiva-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2362;}s:12:"medium_large";a:5:{s:4:"file";s:20:"p-skiva-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:21410;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(69, 38, '_wp_attached_file', '2023/04/p-skiva2.webp'),
(70, 38, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/p-skiva2.webp";s:8:"filesize";i:160688;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"p-skiva2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:13774;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"p-skiva2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2210;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"p-skiva2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:22444;}s:6:"medium";a:5:{s:4:"file";s:21:"p-skiva2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11868;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"p-skiva2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4082;}s:12:"medium_large";a:5:{s:4:"file";s:21:"p-skiva2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:85354;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(71, 39, '_wp_attached_file', '2023/04/spray-pump-alkaline.webp'),
(72, 39, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:32:"2023/04/spray-pump-alkaline.webp";s:8:"filesize";i:21024;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"spray-pump-alkaline-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4206;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"spray-pump-alkaline-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1080;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"spray-pump-alkaline-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5388;}s:6:"medium";a:5:{s:4:"file";s:32:"spray-pump-alkaline-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3776;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"spray-pump-alkaline-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1766;}s:12:"medium_large";a:5:{s:4:"file";s:32:"spray-pump-alkaline-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11040;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(73, 40, '_wp_attached_file', '2023/04/spray-pump-alkaline2.webp'),
(74, 40, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:33:"2023/04/spray-pump-alkaline2.webp";s:8:"filesize";i:65220;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:33:"spray-pump-alkaline2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9736;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:33:"spray-pump-alkaline2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2532;}s:18:"woocommerce_single";a:5:{s:4:"file";s:33:"spray-pump-alkaline2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12844;}s:6:"medium";a:5:{s:4:"file";s:33:"spray-pump-alkaline2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9182;}s:9:"thumbnail";a:5:{s:4:"file";s:33:"spray-pump-alkaline2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4004;}s:12:"medium_large";a:5:{s:4:"file";s:33:"spray-pump-alkaline2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:26092;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(75, 41, '_wp_attached_file', '2023/04/spray-pump-petroleum.webp'),
(76, 41, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:33:"2023/04/spray-pump-petroleum.webp";s:8:"filesize";i:19526;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:33:"spray-pump-petroleum-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3662;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:33:"spray-pump-petroleum-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:942;}s:18:"woocommerce_single";a:5:{s:4:"file";s:33:"spray-pump-petroleum-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4734;}s:6:"medium";a:5:{s:4:"file";s:33:"spray-pump-petroleum-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3258;}s:9:"thumbnail";a:5:{s:4:"file";s:33:"spray-pump-petroleum-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1528;}s:12:"medium_large";a:5:{s:4:"file";s:33:"spray-pump-petroleum-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9772;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 43, '_wp_attached_file', '2023/04/sticker.webp'),
(80, 43, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/sticker.webp";s:8:"filesize";i:15660;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"sticker-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3078;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"sticker-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1032;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"sticker-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3700;}s:6:"medium";a:5:{s:4:"file";s:20:"sticker-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2860;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"sticker-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1528;}s:12:"medium_large";a:5:{s:4:"file";s:20:"sticker-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6886;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 44, '_wp_attached_file', '2023/04/sticker2.webp'),
(82, 44, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/sticker2.webp";s:8:"filesize";i:82750;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"sticker2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8566;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"sticker2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2012;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"sticker2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11970;}s:6:"medium";a:5:{s:4:"file";s:21:"sticker2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8042;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"sticker2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3340;}s:12:"medium_large";a:5:{s:4:"file";s:21:"sticker2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27872;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 51, '_edit_lock', '1682588099:2'),
(86, 51, '_edit_last', '2'),
(87, 51, 'total_sales', '2'),
(88, 51, '_tax_status', 'taxable'),
(89, 51, '_tax_class', ''),
(90, 51, '_manage_stock', 'no'),
(91, 51, '_backorders', 'no'),
(92, 51, '_sold_individually', 'no'),
(93, 51, '_virtual', 'no'),
(94, 51, '_downloadable', 'no'),
(95, 51, '_download_limit', '-1'),
(96, 51, '_download_expiry', '-1'),
(97, 51, '_stock', NULL),
(98, 51, '_stock_status', 'instock'),
(99, 51, '_wc_average_rating', '0'),
(100, 51, '_wc_review_count', '0'),
(101, 51, '_product_attributes', 'a:1:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(102, 51, '_product_version', '7.6.0'),
(103, 52, '_wp_attached_file', '2023/04/purifys-2.webp'),
(104, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/purifys-2.webp";s:8:"filesize";i:18242;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"purifys-2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3054;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"purifys-2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:802;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"purifys-2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4328;}s:6:"medium";a:5:{s:4:"file";s:22:"purifys-2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2816;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"purifys-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1238;}s:12:"medium_large";a:5:{s:4:"file";s:22:"purifys-2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9292;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(105, 52, '_wp_attachment_image_alt', 'keramiskt schampo med doft'),
(106, 53, '_variation_description', ''),
(107, 53, 'total_sales', '0'),
(108, 53, '_tax_status', 'taxable'),
(109, 53, '_tax_class', 'parent'),
(110, 53, '_manage_stock', 'yes'),
(111, 53, '_backorders', 'no'),
(112, 53, '_sold_individually', 'no'),
(113, 53, '_virtual', 'no'),
(114, 53, '_downloadable', 'no'),
(115, 53, '_download_limit', '-1'),
(116, 53, '_download_expiry', '-1'),
(117, 53, '_stock', '9'),
(118, 53, '_stock_status', 'instock'),
(119, 53, '_wc_average_rating', '0'),
(120, 53, '_wc_review_count', '0'),
(121, 53, 'attribute_pa_volym', '5-liter'),
(122, 53, '_product_version', '7.6.0'),
(123, 54, '_variation_description', ''),
(124, 54, 'total_sales', '0'),
(125, 54, '_tax_status', 'taxable'),
(126, 54, '_tax_class', 'parent'),
(127, 54, '_manage_stock', 'yes'),
(128, 54, '_backorders', 'no'),
(129, 54, '_sold_individually', 'no'),
(130, 54, '_virtual', 'no'),
(131, 54, '_downloadable', 'no'),
(132, 54, '_download_limit', '-1'),
(133, 54, '_download_expiry', '-1'),
(134, 54, '_stock', '9'),
(135, 54, '_stock_status', 'instock'),
(136, 54, '_wc_average_rating', '0'),
(137, 54, '_wc_review_count', '0'),
(138, 54, 'attribute_pa_volym', '500-ml'),
(139, 54, '_product_version', '7.6.0'),
(140, 53, '_sku', 'purifysplus-5L'),
(141, 53, '_regular_price', '1298'),
(142, 53, '_weight', '5.5'),
(143, 53, '_thumbnail_id', '12'),
(144, 53, '_price', '1298'),
(146, 12, '_wp_attachment_image_alt', 'keramiskt schampo med doft, 5L'),
(147, 54, '_sku', 'purifysplus-500ml'),
(148, 54, '_regular_price', '249'),
(149, 54, '_weight', '0.7'),
(150, 54, '_thumbnail_id', '52'),
(151, 54, '_price', '249'),
(154, 51, '_thumbnail_id', '52'),
(155, 51, '_weight', '0.7'),
(156, 56, '_edit_lock', '1682588024:2'),
(157, 56, '_edit_last', '2'),
(158, 56, 'total_sales', '1'),
(159, 56, '_tax_status', 'taxable'),
(160, 56, '_tax_class', ''),
(161, 56, '_manage_stock', 'no'),
(162, 56, '_backorders', 'no'),
(163, 56, '_sold_individually', 'no'),
(164, 56, '_virtual', 'no'),
(165, 56, '_downloadable', 'no'),
(166, 56, '_download_limit', '-1'),
(167, 56, '_download_expiry', '-1'),
(168, 56, '_stock', NULL),
(169, 56, '_stock_status', 'instock'),
(170, 56, '_wc_average_rating', '0'),
(171, 56, '_wc_review_count', '0'),
(172, 56, '_product_attributes', 'a:1:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(173, 56, '_product_version', '7.6.0'),
(174, 57, '_variation_description', ''),
(175, 57, 'total_sales', '0'),
(176, 57, '_tax_status', 'taxable'),
(177, 57, '_tax_class', 'parent'),
(178, 57, '_manage_stock', 'yes'),
(179, 57, '_backorders', 'no'),
(180, 57, '_sold_individually', 'no'),
(181, 57, '_virtual', 'no'),
(182, 57, '_downloadable', 'no'),
(183, 57, '_download_limit', '-1'),
(184, 57, '_download_expiry', '-1'),
(185, 57, '_stock', '10'),
(186, 57, '_stock_status', 'instock'),
(187, 57, '_wc_average_rating', '0'),
(188, 57, '_wc_review_count', '0'),
(189, 57, 'attribute_pa_volym', '5-liter'),
(190, 57, '_product_version', '7.6.0'),
(191, 58, '_variation_description', ''),
(192, 58, 'total_sales', '0'),
(193, 58, '_tax_status', 'taxable'),
(194, 58, '_tax_class', 'parent'),
(195, 58, '_manage_stock', 'yes'),
(196, 58, '_backorders', 'no'),
(197, 58, '_sold_individually', 'no'),
(198, 58, '_virtual', 'no'),
(199, 58, '_downloadable', 'no'),
(200, 58, '_download_limit', '-1'),
(201, 58, '_download_expiry', '-1'),
(202, 58, '_stock', '10'),
(203, 58, '_stock_status', 'instock'),
(204, 58, '_wc_average_rating', '0'),
(205, 58, '_wc_review_count', '0'),
(206, 58, 'attribute_pa_volym', '500-ml'),
(207, 58, '_product_version', '7.6.0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(208, 13, '_wp_attachment_image_alt', 'keramiskt schampo'),
(209, 10, '_wp_attachment_image_alt', 'keramiskt schampo'),
(210, 57, '_sku', 'purifys-5L'),
(211, 57, '_regular_price', '1498'),
(212, 57, '_weight', '5.5'),
(213, 57, '_thumbnail_id', '13'),
(214, 57, '_price', '1498'),
(215, 58, '_sku', 'purifys-500ml'),
(216, 58, '_regular_price', '298'),
(217, 58, '_weight', '0.7'),
(218, 58, '_thumbnail_id', '10'),
(219, 58, '_price', '298'),
(222, 56, '_default_attributes', 'a:1:{s:8:"pa_volym";s:6:"500-ml";}'),
(225, 56, '_thumbnail_id', '10'),
(226, 59, '_edit_lock', '1682587965:2'),
(227, 59, '_edit_last', '2'),
(228, 7, '_wp_attachment_image_alt', 'Förpackning med akalisk avfettning'),
(229, 59, 'total_sales', '2'),
(230, 59, '_tax_status', 'taxable'),
(231, 59, '_tax_class', ''),
(232, 59, '_manage_stock', 'no'),
(233, 59, '_backorders', 'no'),
(234, 59, '_sold_individually', 'no'),
(235, 59, '_virtual', 'no'),
(236, 59, '_downloadable', 'no'),
(237, 59, '_download_limit', '-1'),
(238, 59, '_download_expiry', '-1'),
(239, 59, '_stock', NULL),
(240, 59, '_stock_status', 'instock'),
(241, 59, '_wc_average_rating', '0'),
(242, 59, '_wc_review_count', '0'),
(243, 59, '_product_attributes', 'a:1:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(244, 59, '_product_version', '7.6.0'),
(262, 61, '_variation_description', ''),
(263, 61, 'total_sales', '0'),
(264, 61, '_tax_status', 'taxable'),
(265, 61, '_tax_class', 'parent'),
(266, 61, '_manage_stock', 'yes'),
(267, 61, '_backorders', 'no'),
(268, 61, '_sold_individually', 'no'),
(269, 61, '_virtual', 'no'),
(270, 61, '_downloadable', 'no'),
(271, 61, '_download_limit', '-1'),
(272, 61, '_download_expiry', '-1'),
(273, 61, '_stock', '9'),
(274, 61, '_stock_status', 'instock'),
(275, 61, '_wc_average_rating', '0'),
(276, 61, '_wc_review_count', '0'),
(277, 61, 'attribute_pa_volym', '5-liter'),
(278, 61, '_product_version', '7.6.0'),
(296, 9, '_wp_attachment_image_alt', 'Förpackning med akalisk avfettning'),
(297, 8, '_wp_attachment_image_alt', 'Förpackning med akalisk avfettning'),
(303, 61, '_sku', 'elevate-5L'),
(304, 61, '_regular_price', '598'),
(305, 61, '_weight', '5.5'),
(306, 61, '_thumbnail_id', '6'),
(307, 61, '_price', '598'),
(314, 63, '_variation_description', ''),
(315, 63, 'total_sales', '0'),
(316, 63, '_tax_status', 'taxable'),
(317, 63, '_tax_class', 'parent'),
(318, 63, '_manage_stock', 'yes'),
(319, 63, '_backorders', 'no'),
(320, 63, '_sold_individually', 'no'),
(321, 63, '_virtual', 'no'),
(322, 63, '_downloadable', 'no'),
(323, 63, '_download_limit', '-1'),
(324, 63, '_download_expiry', '-1'),
(325, 63, '_stock', '10'),
(326, 63, '_stock_status', 'instock'),
(327, 63, '_wc_average_rating', '0'),
(328, 63, '_wc_review_count', '0'),
(329, 63, 'attribute_pa_volym', '1-liter'),
(330, 63, '_product_version', '7.6.0'),
(333, 59, '_default_attributes', 'a:1:{s:8:"pa_volym";s:7:"1-liter";}'),
(336, 63, '_sku', 'elevate-1L'),
(337, 63, '_regular_price', '189'),
(338, 63, '_weight', '1.5'),
(339, 63, '_thumbnail_id', '5'),
(340, 63, '_price', '189'),
(344, 59, '_thumbnail_id', '5'),
(345, 64, '_edit_lock', '1682942158:2'),
(346, 65, '_edit_lock', '1682417456:1'),
(347, 5, '_wp_attachment_image_alt', 'Förpackning med förtvättmedel'),
(350, 6, '_wp_attachment_image_alt', 'Förpackning med förtvättmedel'),
(353, 67, '_edit_lock', '1682587865:2'),
(354, 67, '_edit_last', '2'),
(355, 16, '_wp_attachment_image_alt', 'Sprayflaska med glasputs'),
(356, 67, '_thumbnail_id', '16'),
(357, 67, '_regular_price', '179'),
(358, 67, 'total_sales', '3'),
(359, 67, '_tax_status', 'taxable'),
(360, 67, '_tax_class', ''),
(361, 67, '_manage_stock', 'yes'),
(362, 67, '_backorders', 'no'),
(363, 67, '_sold_individually', 'no'),
(364, 67, '_virtual', 'no'),
(365, 67, '_downloadable', 'no'),
(366, 67, '_download_limit', '-1'),
(367, 67, '_download_expiry', '-1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(368, 67, '_stock', '9'),
(369, 67, '_stock_status', 'instock'),
(370, 67, '_wc_average_rating', '0'),
(371, 67, '_wc_review_count', '0'),
(372, 67, '_product_version', '7.6.0'),
(373, 67, '_price', '149'),
(374, 68, '_edit_lock', '1682587828:2'),
(375, 68, '_edit_last', '2'),
(376, 68, 'total_sales', '2'),
(377, 68, '_tax_status', 'taxable'),
(378, 68, '_tax_class', ''),
(379, 68, '_manage_stock', 'no'),
(380, 68, '_backorders', 'no'),
(381, 68, '_sold_individually', 'no'),
(382, 68, '_virtual', 'no'),
(383, 68, '_downloadable', 'no'),
(384, 68, '_download_limit', '-1'),
(385, 68, '_download_expiry', '-1'),
(386, 68, '_stock', NULL),
(387, 68, '_stock_status', 'instock'),
(388, 68, '_wc_average_rating', '0'),
(389, 68, '_wc_review_count', '0'),
(390, 68, '_product_attributes', 'a:1:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(391, 68, '_product_version', '7.6.0'),
(392, 69, '_variation_description', ''),
(393, 69, 'total_sales', '0'),
(394, 69, '_tax_status', 'taxable'),
(395, 69, '_tax_class', 'parent'),
(396, 69, '_manage_stock', 'yes'),
(397, 69, '_backorders', 'no'),
(398, 69, '_sold_individually', 'no'),
(399, 69, '_virtual', 'no'),
(400, 69, '_downloadable', 'no'),
(401, 69, '_download_limit', '-1'),
(402, 69, '_download_expiry', '-1'),
(403, 69, '_stock', '10'),
(404, 69, '_stock_status', 'instock'),
(405, 69, '_wc_average_rating', '0'),
(406, 69, '_wc_review_count', '0'),
(407, 69, 'attribute_pa_volym', '1-liter'),
(408, 69, '_product_version', '7.6.0'),
(409, 70, '_variation_description', ''),
(410, 70, 'total_sales', '0'),
(411, 70, '_tax_status', 'taxable'),
(412, 70, '_tax_class', 'parent'),
(413, 70, '_manage_stock', 'yes'),
(414, 70, '_backorders', 'no'),
(415, 70, '_sold_individually', 'no'),
(416, 70, '_virtual', 'no'),
(417, 70, '_downloadable', 'no'),
(418, 70, '_download_limit', '-1'),
(419, 70, '_download_expiry', '-1'),
(420, 70, '_stock', '9'),
(421, 70, '_stock_status', 'instock'),
(422, 70, '_wc_average_rating', '0'),
(423, 70, '_wc_review_count', '0'),
(424, 70, 'attribute_pa_volym', '25-liter'),
(425, 70, '_product_version', '7.6.0'),
(426, 71, '_variation_description', ''),
(427, 71, 'total_sales', '0'),
(428, 71, '_tax_status', 'taxable'),
(429, 71, '_tax_class', 'parent'),
(430, 71, '_manage_stock', 'yes'),
(431, 71, '_backorders', 'no'),
(432, 71, '_sold_individually', 'no'),
(433, 71, '_virtual', 'no'),
(434, 71, '_downloadable', 'no'),
(435, 71, '_download_limit', '-1'),
(436, 71, '_download_expiry', '-1'),
(437, 71, '_stock', '10'),
(438, 71, '_stock_status', 'instock'),
(439, 71, '_wc_average_rating', '0'),
(440, 71, '_wc_review_count', '0'),
(441, 71, 'attribute_pa_volym', '5-liter'),
(442, 71, '_product_version', '7.6.0'),
(443, 69, '_sku', 'extract-1L'),
(444, 69, '_regular_price', '129'),
(445, 69, '_weight', '1.5'),
(446, 69, '_thumbnail_id', '7'),
(447, 69, '_price', '129'),
(448, 70, '_sku', 'extract-25L'),
(449, 70, '_regular_price', '1695'),
(450, 70, '_weight', '25.5'),
(451, 70, '_thumbnail_id', '9'),
(452, 70, '_price', '1695'),
(453, 71, '_sku', 'extract-5L'),
(454, 71, '_regular_price', '395'),
(455, 71, '_weight', '5.5'),
(456, 71, '_thumbnail_id', '8'),
(457, 71, '_price', '395'),
(461, 68, '_default_attributes', 'a:1:{s:8:"pa_volym";s:7:"1-liter";}'),
(465, 68, '_thumbnail_id', '7'),
(466, 67, '_sku', 'visionglas'),
(467, 73, '_edit_lock', '1683027078:4'),
(468, 73, '_edit_last', '2'),
(469, 14, '_wp_attachment_image_alt', 'Förpackning med oljebaserat däckmedel'),
(470, 73, '_thumbnail_id', '14'),
(471, 73, '_sku', 'refined'),
(472, 73, '_regular_price', '198'),
(473, 73, 'total_sales', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(474, 73, '_tax_status', 'taxable'),
(475, 73, '_tax_class', ''),
(476, 73, '_manage_stock', 'yes'),
(477, 73, '_backorders', 'no'),
(478, 73, '_sold_individually', 'no'),
(479, 73, '_virtual', 'no'),
(480, 73, '_downloadable', 'no'),
(481, 73, '_download_limit', '-1'),
(482, 73, '_download_expiry', '-1'),
(483, 73, '_stock', '9'),
(484, 73, '_stock_status', 'instock'),
(485, 73, '_wc_average_rating', '0'),
(486, 73, '_wc_review_count', '0'),
(487, 73, '_product_version', '7.6.0'),
(488, 73, '_price', '198'),
(489, 74, '_edit_lock', '1682587699:2'),
(490, 74, '_edit_last', '2'),
(491, 19, '_wp_attachment_image_alt', 'Air freshener samlingsbild'),
(492, 74, 'total_sales', '3'),
(493, 74, '_tax_status', 'taxable'),
(494, 74, '_tax_class', ''),
(495, 74, '_manage_stock', 'no'),
(496, 74, '_backorders', 'no'),
(497, 74, '_sold_individually', 'no'),
(498, 74, '_virtual', 'no'),
(499, 74, '_downloadable', 'no'),
(500, 74, '_download_limit', '-1'),
(501, 74, '_download_expiry', '-1'),
(502, 74, '_stock', NULL),
(503, 74, '_stock_status', 'instock'),
(504, 74, '_wc_average_rating', '0'),
(505, 74, '_wc_review_count', '0'),
(506, 74, '_product_attributes', 'a:1:{s:9:"pa_dofter";a:6:{s:4:"name";s:9:"pa_dofter";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(507, 74, '_product_version', '7.6.0'),
(508, 75, '_variation_description', ''),
(509, 75, 'total_sales', '0'),
(510, 75, '_tax_status', 'taxable'),
(511, 75, '_tax_class', 'parent'),
(512, 75, '_manage_stock', 'yes'),
(513, 75, '_backorders', 'no'),
(514, 75, '_sold_individually', 'no'),
(515, 75, '_virtual', 'no'),
(516, 75, '_downloadable', 'no'),
(517, 75, '_download_limit', '-1'),
(518, 75, '_download_expiry', '-1'),
(519, 75, '_stock', '9'),
(520, 75, '_stock_status', 'instock'),
(521, 75, '_wc_average_rating', '0'),
(522, 75, '_wc_review_count', '0'),
(523, 75, 'attribute_pa_dofter', 'apple'),
(524, 75, '_product_version', '7.6.0'),
(525, 76, '_variation_description', ''),
(526, 76, 'total_sales', '0'),
(527, 76, '_tax_status', 'taxable'),
(528, 76, '_tax_class', 'parent'),
(529, 76, '_manage_stock', 'yes'),
(530, 76, '_backorders', 'no'),
(531, 76, '_sold_individually', 'no'),
(532, 76, '_virtual', 'no'),
(533, 76, '_downloadable', 'no'),
(534, 76, '_download_limit', '-1'),
(535, 76, '_download_expiry', '-1'),
(536, 76, '_stock', '8'),
(537, 76, '_stock_status', 'instock'),
(538, 76, '_wc_average_rating', '0'),
(539, 76, '_wc_review_count', '0'),
(540, 76, 'attribute_pa_dofter', 'jordgubb'),
(541, 76, '_product_version', '7.6.0'),
(542, 77, '_variation_description', ''),
(543, 77, 'total_sales', '0'),
(544, 77, '_tax_status', 'taxable'),
(545, 77, '_tax_class', 'parent'),
(546, 77, '_manage_stock', 'yes'),
(547, 77, '_backorders', 'no'),
(548, 77, '_sold_individually', 'no'),
(549, 77, '_virtual', 'no'),
(550, 77, '_downloadable', 'no'),
(551, 77, '_download_limit', '-1'),
(552, 77, '_download_expiry', '-1'),
(553, 77, '_stock', '10'),
(554, 77, '_stock_status', 'instock'),
(555, 77, '_wc_average_rating', '0'),
(556, 77, '_wc_review_count', '0'),
(557, 77, 'attribute_pa_dofter', 'vanilj'),
(558, 77, '_product_version', '7.6.0'),
(559, 17, '_wp_attachment_image_alt', 'Air fresh, äpple'),
(560, 18, '_wp_attachment_image_alt', 'Air fresh, jordgubb'),
(561, 20, '_wp_attachment_image_alt', 'Air fresh, vanilj'),
(562, 75, '_sku', 'airfreshener-äpple'),
(563, 75, '_regular_price', '29'),
(564, 75, '_weight', '0.2'),
(565, 75, '_thumbnail_id', '17'),
(566, 75, '_price', '29'),
(567, 76, '_sku', 'airfreshener-jordgubb'),
(568, 76, '_regular_price', '29'),
(569, 76, '_weight', '0.2'),
(570, 76, '_thumbnail_id', '18'),
(571, 76, '_price', '29'),
(572, 77, '_sku', 'airfreshener-vanilj'),
(573, 77, '_regular_price', '29') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(574, 77, '_weight', '0.2'),
(575, 77, '_thumbnail_id', '20'),
(576, 77, '_price', '29'),
(578, 74, '_thumbnail_id', '19'),
(579, 79, '_edit_lock', '1682587809:2'),
(580, 79, '_edit_last', '2'),
(581, 79, 'total_sales', '2'),
(582, 79, '_tax_status', 'taxable'),
(583, 79, '_tax_class', ''),
(584, 79, '_manage_stock', 'no'),
(585, 79, '_backorders', 'no'),
(586, 79, '_sold_individually', 'no'),
(587, 79, '_virtual', 'no'),
(588, 79, '_downloadable', 'no'),
(589, 79, '_download_limit', '-1'),
(590, 79, '_download_expiry', '-1'),
(591, 79, '_stock', NULL),
(592, 79, '_stock_status', 'instock'),
(593, 79, '_wc_average_rating', '0'),
(594, 79, '_wc_review_count', '0'),
(595, 79, '_product_attributes', 'a:1:{s:10:"pa_storlek";a:6:{s:4:"name";s:10:"pa_storlek";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(596, 79, '_product_version', '7.6.0'),
(597, 80, '_variation_description', ''),
(598, 80, 'total_sales', '0'),
(599, 80, '_tax_status', 'taxable'),
(600, 80, '_tax_class', 'parent'),
(601, 80, '_manage_stock', 'yes'),
(602, 80, '_backorders', 'no'),
(603, 80, '_sold_individually', 'no'),
(604, 80, '_virtual', 'no'),
(605, 80, '_downloadable', 'no'),
(606, 80, '_download_limit', '-1'),
(607, 80, '_download_expiry', '-1'),
(608, 80, '_stock', '9'),
(609, 80, '_stock_status', 'instock'),
(610, 80, '_wc_average_rating', '0'),
(611, 80, '_wc_review_count', '0'),
(612, 80, 'attribute_pa_storlek', 'large'),
(613, 80, '_product_version', '7.6.0'),
(614, 81, '_variation_description', ''),
(615, 81, 'total_sales', '0'),
(616, 81, '_tax_status', 'taxable'),
(617, 81, '_tax_class', 'parent'),
(618, 81, '_manage_stock', 'yes'),
(619, 81, '_backorders', 'no'),
(620, 81, '_sold_individually', 'no'),
(621, 81, '_virtual', 'no'),
(622, 81, '_downloadable', 'no'),
(623, 81, '_download_limit', '-1'),
(624, 81, '_download_expiry', '-1'),
(625, 81, '_stock', '8'),
(626, 81, '_stock_status', 'instock'),
(627, 81, '_wc_average_rating', '0'),
(628, 81, '_wc_review_count', '0'),
(629, 81, 'attribute_pa_storlek', 'medium'),
(630, 81, '_product_version', '7.6.0'),
(631, 82, '_variation_description', ''),
(632, 82, 'total_sales', '0'),
(633, 82, '_tax_status', 'taxable'),
(634, 82, '_tax_class', 'parent'),
(635, 82, '_manage_stock', 'yes'),
(636, 82, '_backorders', 'no'),
(637, 82, '_sold_individually', 'no'),
(638, 82, '_virtual', 'no'),
(639, 82, '_downloadable', 'no'),
(640, 82, '_download_limit', '-1'),
(641, 82, '_download_expiry', '-1'),
(642, 82, '_stock', '10'),
(643, 82, '_stock_status', 'instock'),
(644, 82, '_wc_average_rating', '0'),
(645, 82, '_wc_review_count', '0'),
(646, 82, 'attribute_pa_storlek', 'small'),
(647, 82, '_product_version', '7.6.0'),
(648, 80, '_sku', 'hoodie-large'),
(649, 80, '_regular_price', '498'),
(650, 80, '_weight', '0.55'),
(651, 80, '_thumbnail_id', '0'),
(652, 80, '_price', '498'),
(653, 81, '_sku', 'hoodie-medium'),
(654, 81, '_regular_price', '498'),
(655, 81, '_weight', '0.5'),
(656, 81, '_thumbnail_id', '0'),
(657, 81, '_price', '498'),
(658, 82, '_sku', 'hoodie-small'),
(659, 82, '_regular_price', '498'),
(660, 82, '_weight', '0.45'),
(661, 82, '_thumbnail_id', '0'),
(662, 82, '_price', '498'),
(664, 32, '_wp_attachment_image_alt', 'Svart hoodie'),
(666, 83, '_edit_lock', '1682587610:2'),
(667, 83, '_edit_last', '2'),
(668, 83, 'total_sales', '2'),
(669, 83, '_tax_status', 'taxable'),
(670, 83, '_tax_class', ''),
(671, 83, '_manage_stock', 'no'),
(672, 83, '_backorders', 'no'),
(673, 83, '_sold_individually', 'no'),
(674, 83, '_virtual', 'no'),
(675, 83, '_downloadable', 'no'),
(676, 83, '_download_limit', '-1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(677, 83, '_download_expiry', '-1'),
(678, 83, '_stock', NULL),
(679, 83, '_stock_status', 'instock'),
(680, 83, '_wc_average_rating', '0'),
(681, 83, '_wc_review_count', '0'),
(682, 83, '_product_attributes', 'a:1:{s:10:"pa_storlek";a:6:{s:4:"name";s:10:"pa_storlek";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(683, 83, '_product_version', '7.6.0'),
(684, 84, '_variation_description', ''),
(685, 84, 'total_sales', '0'),
(686, 84, '_tax_status', 'taxable'),
(687, 84, '_tax_class', 'parent'),
(688, 84, '_manage_stock', 'yes'),
(689, 84, '_backorders', 'no'),
(690, 84, '_sold_individually', 'no'),
(691, 84, '_virtual', 'no'),
(692, 84, '_downloadable', 'no'),
(693, 84, '_download_limit', '-1'),
(694, 84, '_download_expiry', '-1'),
(695, 84, '_stock', '7'),
(696, 84, '_stock_status', 'instock'),
(697, 84, '_wc_average_rating', '0'),
(698, 84, '_wc_review_count', '0'),
(699, 84, 'attribute_pa_storlek', 'large'),
(700, 84, '_product_version', '7.6.0'),
(701, 85, '_variation_description', ''),
(702, 85, 'total_sales', '0'),
(703, 85, '_tax_status', 'taxable'),
(704, 85, '_tax_class', 'parent'),
(705, 85, '_manage_stock', 'yes'),
(706, 85, '_backorders', 'no'),
(707, 85, '_sold_individually', 'no'),
(708, 85, '_virtual', 'no'),
(709, 85, '_downloadable', 'no'),
(710, 85, '_download_limit', '-1'),
(711, 85, '_download_expiry', '-1'),
(712, 85, '_stock', '8'),
(713, 85, '_stock_status', 'instock'),
(714, 85, '_wc_average_rating', '0'),
(715, 85, '_wc_review_count', '0'),
(716, 85, 'attribute_pa_storlek', 'medium'),
(717, 85, '_product_version', '7.6.0'),
(718, 86, '_variation_description', ''),
(719, 86, 'total_sales', '0'),
(720, 86, '_tax_status', 'taxable'),
(721, 86, '_tax_class', 'parent'),
(722, 86, '_manage_stock', 'yes'),
(723, 86, '_backorders', 'no'),
(724, 86, '_sold_individually', 'no'),
(725, 86, '_virtual', 'no'),
(726, 86, '_downloadable', 'no'),
(727, 86, '_download_limit', '-1'),
(728, 86, '_download_expiry', '-1'),
(729, 86, '_stock', '8'),
(730, 86, '_stock_status', 'instock'),
(731, 86, '_wc_average_rating', '0'),
(732, 86, '_wc_review_count', '0'),
(733, 86, 'attribute_pa_storlek', 'small'),
(734, 86, '_product_version', '7.6.0'),
(735, 84, '_sku', 'tshirt-large'),
(736, 84, '_regular_price', '349'),
(737, 84, '_weight', '0.35'),
(738, 84, '_thumbnail_id', '0'),
(739, 84, '_price', '349'),
(740, 85, '_sku', 'tshirt-medium'),
(741, 85, '_regular_price', '349'),
(742, 85, '_sale_price', '259'),
(743, 85, '_weight', '0.3'),
(744, 85, '_thumbnail_id', '0'),
(745, 85, '_price', '259'),
(746, 86, '_sku', 'tshirt-small'),
(747, 86, '_regular_price', '349'),
(748, 86, '_sale_price', '259'),
(749, 86, '_weight', '0.2'),
(750, 86, '_thumbnail_id', '0'),
(751, 86, '_price', '259'),
(754, 29, '_wp_attachment_image_alt', 't-shirt'),
(755, 30, '_wp_attachment_image_alt', 't-shirt'),
(756, 31, '_wp_attachment_image_alt', 't-shirt'),
(757, 83, '_thumbnail_id', '29'),
(758, 83, '_product_image_gallery', '30,31'),
(759, 87, '_edit_lock', '1682587419:2'),
(760, 87, '_edit_last', '2'),
(761, 35, '_wp_attachment_image_alt', 'hink'),
(762, 87, '_sku', 'washbucket'),
(763, 87, '_regular_price', '349'),
(764, 87, 'total_sales', '1'),
(765, 87, '_tax_status', 'taxable'),
(766, 87, '_tax_class', ''),
(767, 87, '_manage_stock', 'yes'),
(768, 87, '_backorders', 'no'),
(769, 87, '_sold_individually', 'no'),
(770, 87, '_virtual', 'no'),
(771, 87, '_downloadable', 'no'),
(772, 87, '_download_limit', '-1'),
(773, 87, '_download_expiry', '-1'),
(774, 87, '_stock', '9'),
(775, 87, '_stock_status', 'instock'),
(776, 87, '_wc_average_rating', '0'),
(777, 87, '_wc_review_count', '0'),
(778, 87, '_product_version', '7.6.0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(779, 87, '_price', '349'),
(780, 87, '_product_image_gallery', '36'),
(781, 88, '_edit_lock', '1683106170:2'),
(782, 88, '_edit_last', '2'),
(783, 37, '_wp_attachment_image_alt', 'Kombinerad p-skiva och isskrapa'),
(784, 88, '_regular_price', '29'),
(785, 88, 'total_sales', '2'),
(786, 88, '_tax_status', 'taxable'),
(787, 88, '_tax_class', ''),
(788, 88, '_manage_stock', 'no'),
(789, 88, '_backorders', 'no'),
(790, 88, '_sold_individually', 'no'),
(791, 88, '_virtual', 'no'),
(792, 88, '_downloadable', 'no'),
(793, 88, '_download_limit', '-1'),
(794, 88, '_download_expiry', '-1'),
(795, 88, '_stock', NULL),
(796, 88, '_stock_status', 'instock'),
(797, 88, '_wc_average_rating', '0'),
(798, 88, '_wc_review_count', '0'),
(799, 88, '_product_version', '7.6.0'),
(800, 88, '_price', '19'),
(801, 88, '_product_image_gallery', '38'),
(804, 90, '_edit_lock', '1682587481:2'),
(805, 90, '_edit_last', '2'),
(806, 43, '_wp_attachment_image_alt', 'sticker'),
(807, 90, '_thumbnail_id', '43'),
(808, 90, '_regular_price', '25'),
(809, 90, 'total_sales', '0'),
(810, 90, '_tax_status', 'taxable'),
(811, 90, '_tax_class', ''),
(812, 90, '_manage_stock', 'no'),
(813, 90, '_backorders', 'no'),
(814, 90, '_sold_individually', 'no'),
(815, 90, '_virtual', 'no'),
(816, 90, '_downloadable', 'no'),
(817, 90, '_download_limit', '-1'),
(818, 90, '_download_expiry', '-1'),
(819, 90, '_stock', NULL),
(820, 90, '_stock_status', 'instock'),
(821, 90, '_wc_average_rating', '0'),
(822, 90, '_wc_review_count', '0'),
(823, 90, '_product_version', '7.6.0'),
(824, 90, '_price', '25'),
(825, 91, '_edit_lock', '1683209741:1'),
(826, 91, '_edit_last', '2'),
(827, 91, '_regular_price', '249'),
(828, 91, 'total_sales', '5'),
(829, 91, '_tax_status', 'taxable'),
(830, 91, '_tax_class', ''),
(831, 91, '_manage_stock', 'yes'),
(832, 91, '_backorders', 'no'),
(833, 91, '_sold_individually', 'no'),
(834, 91, '_virtual', 'no'),
(835, 91, '_downloadable', 'no'),
(836, 91, '_download_limit', '-1'),
(837, 91, '_download_expiry', '-1'),
(838, 91, '_stock', '5'),
(839, 91, '_stock_status', 'instock'),
(840, 91, '_wc_average_rating', '0'),
(841, 91, '_wc_review_count', '0'),
(842, 91, '_product_version', '7.6.0'),
(843, 91, '_price', '199'),
(844, 92, '_wp_attached_file', '2023/04/drying-towel-big.webp'),
(845, 92, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:29:"2023/04/drying-towel-big.webp";s:8:"filesize";i:142326;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:29:"drying-towel-big-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14508;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:29:"drying-towel-big-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2092;}s:18:"woocommerce_single";a:5:{s:4:"file";s:29:"drying-towel-big-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:23910;}s:6:"medium";a:5:{s:4:"file";s:29:"drying-towel-big-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12558;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"drying-towel-big-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3824;}s:12:"medium_large";a:5:{s:4:"file";s:29:"drying-towel-big-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:81914;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(848, 92, '_wp_attachment_image_alt', 'torkduk'),
(850, 91, '_thumbnail_id', '92'),
(851, 91, '_product_image_gallery', '243'),
(852, 94, '_edit_lock', '1682587217:2'),
(853, 94, '_edit_last', '2'),
(854, 41, '_wp_attachment_image_alt', 'tryckspruta'),
(855, 94, '_thumbnail_id', '41'),
(856, 94, '_regular_price', '295'),
(857, 94, 'total_sales', '0'),
(858, 94, '_tax_status', 'taxable'),
(859, 94, '_tax_class', ''),
(860, 94, '_manage_stock', 'yes'),
(861, 94, '_backorders', 'no'),
(862, 94, '_sold_individually', 'no'),
(863, 94, '_virtual', 'no'),
(864, 94, '_downloadable', 'no'),
(865, 94, '_download_limit', '-1'),
(866, 94, '_download_expiry', '-1'),
(867, 94, '_stock', '10'),
(868, 94, '_stock_status', 'instock'),
(869, 94, '_wc_average_rating', '0'),
(870, 94, '_wc_review_count', '0'),
(871, 94, '_product_version', '7.6.0'),
(872, 94, '_price', '295'),
(873, 94, '_sku', 'spraypump-petroleum'),
(874, 91, '_sku', 'torkduk'),
(875, 96, '_edit_lock', '1683109471:2'),
(876, 96, '_edit_last', '2'),
(877, 39, '_wp_attachment_image_alt', 'spray'),
(878, 40, '_wp_attachment_image_alt', 'spray'),
(879, 96, '_thumbnail_id', '39'),
(880, 96, '_sku', 'spraypump-akalisk'),
(881, 96, '_regular_price', '249'),
(882, 96, 'total_sales', '0'),
(883, 96, '_tax_status', 'taxable') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(884, 96, '_tax_class', ''),
(885, 96, '_manage_stock', 'yes'),
(886, 96, '_backorders', 'no'),
(887, 96, '_sold_individually', 'no'),
(888, 96, '_virtual', 'no'),
(889, 96, '_downloadable', 'no'),
(890, 96, '_download_limit', '-1'),
(891, 96, '_download_expiry', '-1'),
(892, 96, '_stock', '10'),
(893, 96, '_stock_status', 'instock'),
(894, 96, '_wc_average_rating', '0'),
(895, 96, '_wc_review_count', '0'),
(896, 96, '_product_version', '7.6.0'),
(897, 96, '_price', '249'),
(898, 96, '_product_image_gallery', '40'),
(899, 97, '_edit_lock', '1682590720:2'),
(900, 97, '_edit_last', '2'),
(901, 33, '_wp_attachment_image_alt', 'applicator'),
(902, 97, '_thumbnail_id', '33'),
(903, 97, '_sku', 'applicator'),
(904, 97, '_regular_price', '49'),
(905, 97, 'total_sales', '3'),
(906, 97, '_tax_status', 'taxable'),
(907, 97, '_tax_class', ''),
(908, 97, '_manage_stock', 'yes'),
(909, 97, '_backorders', 'no'),
(910, 97, '_sold_individually', 'no'),
(911, 97, '_virtual', 'no'),
(912, 97, '_downloadable', 'no'),
(913, 97, '_download_limit', '-1'),
(914, 97, '_download_expiry', '-1'),
(915, 97, '_stock', '8'),
(916, 97, '_stock_status', 'instock'),
(917, 97, '_wc_average_rating', '0'),
(918, 97, '_wc_review_count', '0'),
(919, 97, '_product_version', '7.6.0'),
(920, 97, '_price', '49'),
(921, 98, '_edit_lock', '1683109500:2'),
(922, 98, '_edit_last', '2'),
(923, 98, 'total_sales', '3'),
(924, 98, '_tax_status', 'taxable'),
(925, 98, '_tax_class', ''),
(926, 98, '_manage_stock', 'no'),
(927, 98, '_backorders', 'no'),
(928, 98, '_sold_individually', 'no'),
(929, 98, '_virtual', 'no'),
(930, 98, '_downloadable', 'no'),
(931, 98, '_download_limit', '-1'),
(932, 98, '_download_expiry', '-1'),
(933, 98, '_stock', NULL),
(934, 98, '_stock_status', 'instock'),
(935, 98, '_wc_average_rating', '0'),
(936, 98, '_wc_review_count', '0'),
(937, 98, '_product_attributes', 'a:2:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}s:9:"pa_dofter";a:6:{s:4:"name";s:9:"pa_dofter";s:5:"value";s:0:"";s:8:"position";i:1;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(938, 98, '_product_version', '7.6.0'),
(939, 99, '_variation_description', ''),
(940, 99, 'total_sales', '0'),
(941, 99, '_tax_status', 'taxable'),
(942, 99, '_tax_class', 'parent'),
(943, 99, '_manage_stock', 'yes'),
(944, 99, '_backorders', 'no'),
(945, 99, '_sold_individually', 'no'),
(946, 99, '_virtual', 'no'),
(947, 99, '_downloadable', 'no'),
(948, 99, '_download_limit', '-1'),
(949, 99, '_download_expiry', '-1'),
(950, 99, '_stock', '10'),
(951, 99, '_stock_status', 'instock'),
(952, 99, '_wc_average_rating', '0'),
(953, 99, '_wc_review_count', '0'),
(954, 99, 'attribute_pa_dofter', 'apple'),
(955, 99, 'attribute_pa_volym', '5-liter'),
(956, 99, '_product_version', '7.6.0'),
(1011, 103, '_variation_description', ''),
(1012, 103, 'total_sales', '0'),
(1013, 103, '_tax_status', 'taxable'),
(1014, 103, '_tax_class', 'parent'),
(1015, 103, '_manage_stock', 'yes'),
(1016, 103, '_backorders', 'no'),
(1017, 103, '_sold_individually', 'no'),
(1018, 103, '_virtual', 'no'),
(1019, 103, '_downloadable', 'no'),
(1020, 103, '_download_limit', '-1'),
(1021, 103, '_download_expiry', '-1'),
(1022, 103, '_stock', '10'),
(1023, 103, '_stock_status', 'instock'),
(1024, 103, '_wc_average_rating', '0'),
(1025, 103, '_wc_review_count', '0'),
(1026, 103, 'attribute_pa_dofter', 'melon'),
(1027, 103, 'attribute_pa_volym', '5-liter'),
(1028, 103, '_product_version', '7.6.0'),
(1065, 106, '_variation_description', ''),
(1066, 106, 'total_sales', '0'),
(1067, 106, '_tax_status', 'taxable'),
(1068, 106, '_tax_class', 'parent'),
(1069, 106, '_manage_stock', 'yes'),
(1070, 106, '_backorders', 'no'),
(1071, 106, '_sold_individually', 'no'),
(1072, 106, '_virtual', 'no'),
(1073, 106, '_downloadable', 'no') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1074, 106, '_download_limit', '-1'),
(1075, 106, '_download_expiry', '-1'),
(1076, 106, '_stock', '9'),
(1077, 106, '_stock_status', 'instock'),
(1078, 106, '_wc_average_rating', '0'),
(1079, 106, '_wc_review_count', '0'),
(1080, 106, 'attribute_pa_dofter', 'apple'),
(1081, 106, 'attribute_pa_volym', '500-ml'),
(1082, 106, '_product_version', '7.6.0'),
(1083, 107, '_variation_description', ''),
(1084, 107, 'total_sales', '0'),
(1085, 107, '_tax_status', 'taxable'),
(1086, 107, '_tax_class', 'parent'),
(1087, 107, '_manage_stock', 'yes'),
(1088, 107, '_backorders', 'no'),
(1089, 107, '_sold_individually', 'no'),
(1090, 107, '_virtual', 'no'),
(1091, 107, '_downloadable', 'no'),
(1092, 107, '_download_limit', '-1'),
(1093, 107, '_download_expiry', '-1'),
(1094, 107, '_stock', '10'),
(1095, 107, '_stock_status', 'instock'),
(1096, 107, '_wc_average_rating', '0'),
(1097, 107, '_wc_review_count', '0'),
(1098, 107, 'attribute_pa_dofter', 'cedertra'),
(1099, 107, 'attribute_pa_volym', '500-ml'),
(1100, 107, '_product_version', '7.6.0'),
(1101, 108, '_variation_description', ''),
(1102, 108, 'total_sales', '0'),
(1103, 108, '_tax_status', 'taxable'),
(1104, 108, '_tax_class', 'parent'),
(1105, 108, '_manage_stock', 'yes'),
(1106, 108, '_backorders', 'no'),
(1107, 108, '_sold_individually', 'no'),
(1108, 108, '_virtual', 'no'),
(1109, 108, '_downloadable', 'no'),
(1110, 108, '_download_limit', '-1'),
(1111, 108, '_download_expiry', '-1'),
(1112, 108, '_stock', '10'),
(1113, 108, '_stock_status', 'instock'),
(1114, 108, '_wc_average_rating', '0'),
(1115, 108, '_wc_review_count', '0'),
(1116, 108, 'attribute_pa_dofter', 'jordgubb'),
(1117, 108, 'attribute_pa_volym', '500-ml'),
(1118, 108, '_product_version', '7.6.0'),
(1119, 109, '_variation_description', ''),
(1120, 109, 'total_sales', '0'),
(1121, 109, '_tax_status', 'taxable'),
(1122, 109, '_tax_class', 'parent'),
(1123, 109, '_manage_stock', 'yes'),
(1124, 109, '_backorders', 'no'),
(1125, 109, '_sold_individually', 'no'),
(1126, 109, '_virtual', 'no'),
(1127, 109, '_downloadable', 'no'),
(1128, 109, '_download_limit', '-1'),
(1129, 109, '_download_expiry', '-1'),
(1130, 109, '_stock', '10'),
(1131, 109, '_stock_status', 'instock'),
(1132, 109, '_wc_average_rating', '0'),
(1133, 109, '_wc_review_count', '0'),
(1134, 109, 'attribute_pa_dofter', 'lime'),
(1135, 109, 'attribute_pa_volym', '500-ml'),
(1136, 109, '_product_version', '7.6.0'),
(1137, 110, '_variation_description', ''),
(1138, 110, 'total_sales', '0'),
(1139, 110, '_tax_status', 'taxable'),
(1140, 110, '_tax_class', 'parent'),
(1141, 110, '_manage_stock', 'yes'),
(1142, 110, '_backorders', 'no'),
(1143, 110, '_sold_individually', 'no'),
(1144, 110, '_virtual', 'no'),
(1145, 110, '_downloadable', 'no'),
(1146, 110, '_download_limit', '-1'),
(1147, 110, '_download_expiry', '-1'),
(1148, 110, '_stock', '10'),
(1149, 110, '_stock_status', 'instock'),
(1150, 110, '_wc_average_rating', '0'),
(1151, 110, '_wc_review_count', '0'),
(1152, 110, 'attribute_pa_dofter', 'melon'),
(1153, 110, 'attribute_pa_volym', '500-ml'),
(1154, 110, '_product_version', '7.6.0'),
(1173, 112, '_variation_description', ''),
(1174, 112, 'total_sales', '0'),
(1175, 112, '_tax_status', 'taxable'),
(1176, 112, '_tax_class', 'parent'),
(1177, 112, '_manage_stock', 'yes'),
(1178, 112, '_backorders', 'no'),
(1179, 112, '_sold_individually', 'no'),
(1180, 112, '_virtual', 'no'),
(1181, 112, '_downloadable', 'no'),
(1182, 112, '_download_limit', '-1'),
(1183, 112, '_download_expiry', '-1'),
(1184, 112, '_stock', '9'),
(1185, 112, '_stock_status', 'instock'),
(1186, 112, '_wc_average_rating', '0'),
(1187, 112, '_wc_review_count', '0'),
(1188, 112, 'attribute_pa_dofter', 'viol'),
(1189, 112, 'attribute_pa_volym', '500-ml'),
(1190, 112, '_product_version', '7.6.0'),
(1191, 21, '_wp_attachment_image_alt', 'APC sprayflaska') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1192, 23, '_wp_attachment_image_alt', 'APC sprayflaska'),
(1193, 24, '_wp_attachment_image_alt', 'APC sprayflaska'),
(1194, 25, '_wp_attachment_image_alt', 'APC sprayflaska'),
(1195, 26, '_wp_attachment_image_alt', 'APC sprayflaska'),
(1196, 28, '_wp_attachment_image_alt', 'APC sprayflaska'),
(1197, 112, '_sku', 'apc-viol'),
(1198, 112, '_regular_price', '179'),
(1199, 112, '_weight', '0.5'),
(1200, 112, '_thumbnail_id', '28'),
(1201, 112, '_price', '179'),
(1203, 22, '_wp_attachment_image_alt', 'apc dunk'),
(1204, 99, '_sku', 'apc-apple-5L'),
(1205, 99, '_regular_price', '898'),
(1206, 99, '_weight', '5.5'),
(1207, 99, '_thumbnail_id', '22'),
(1208, 99, '_price', '898'),
(1211, 27, '_wp_attachment_image_alt', 'apc dunk'),
(1212, 103, '_sku', 'apc-melon-5L'),
(1213, 103, '_regular_price', '898'),
(1214, 103, '_weight', '5.5'),
(1215, 103, '_thumbnail_id', '27'),
(1216, 103, '_price', '898'),
(1229, 98, '_default_attributes', 'a:2:{s:8:"pa_volym";s:6:"500-ml";s:9:"pa_dofter";s:5:"apple";}'),
(1232, 98, '_thumbnail_id', '21'),
(1238, 116, '_wp_attached_file', '2023/04/inlagg2-gloss.jpg'),
(1239, 116, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:25:"2023/04/inlagg2-gloss.jpg";s:8:"filesize";i:259296;s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"inlagg2-gloss-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24417;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"inlagg2-gloss-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4022;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"inlagg2-gloss-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36163;}s:6:"medium";a:5:{s:4:"file";s:25:"inlagg2-gloss-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21415;}s:5:"large";a:5:{s:4:"file";s:27:"inlagg2-gloss-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:172950;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"inlagg2-gloss-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6946;}s:12:"medium_large";a:5:{s:4:"file";s:25:"inlagg2-gloss-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103273;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1246, 120, '_wp_attached_file', '2023/04/inlagg3-apc2.jpg'),
(1247, 120, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:976;s:6:"height";i:976;s:4:"file";s:24:"2023/04/inlagg3-apc2.jpg";s:8:"filesize";i:66085;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:24:"inlagg3-apc2-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15862;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:24:"inlagg3-apc2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3243;}s:18:"woocommerce_single";a:5:{s:4:"file";s:24:"inlagg3-apc2-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22734;}s:6:"medium";a:5:{s:4:"file";s:24:"inlagg3-apc2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14350;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"inlagg3-apc2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5410;}s:12:"medium_large";a:5:{s:4:"file";s:24:"inlagg3-apc2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55643;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1254, 124, '_wp_attached_file', '2023/04/revive.webp'),
(1255, 124, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:19:"2023/04/revive.webp";s:8:"filesize";i:38110;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:19:"revive-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9276;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:19:"revive-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1774;}s:18:"woocommerce_single";a:5:{s:4:"file";s:19:"revive-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12652;}s:6:"medium";a:5:{s:4:"file";s:19:"revive-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8154;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"revive-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3088;}s:12:"medium_large";a:5:{s:4:"file";s:19:"revive-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27768;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1260, 127, '_edit_lock', '1683120244:2'),
(1261, 124, '_wp_attachment_image_alt', 'energidryck'),
(1262, 127, '_thumbnail_id', '124'),
(1265, 133, '_edit_lock', '1683120277:2'),
(1270, 133, '_thumbnail_id', '174'),
(1272, 135, '_edit_lock', '1683120343:2'),
(1273, 120, '_wp_attachment_image_alt', 'sparyflaska'),
(1274, 135, '_thumbnail_id', '120'),
(1277, 139, '_edit_lock', '1683120296:2'),
(1279, 139, '_wp_old_date', '2023-04-25'),
(1282, 139, '_thumbnail_id', '180'),
(1283, 1, '_wp_trash_meta_status', 'publish'),
(1284, 1, '_wp_trash_meta_time', '1682431104'),
(1285, 1, '_wp_desired_post_slug', 'hej-varlden'),
(1286, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(1288, 142, '_edit_lock', '1683120326:2'),
(1291, 142, '_wp_old_date', '2023-04-25'),
(1292, 142, '_thumbnail_id', '169'),
(1295, 133, '_wp_old_date', '2023-04-25'),
(1297, 127, '_wp_old_date', '2023-04-25'),
(1298, 3, '_edit_lock', '1682585747:2'),
(1299, 50, '_edit_lock', '1683057057:4'),
(1300, 38, '_wp_attachment_image_alt', 'p-skiva2'),
(1301, 88, '_thumbnail_id', '37'),
(1302, 36, '_wp_attachment_image_alt', 'hink-2'),
(1303, 87, '_thumbnail_id', '35'),
(1304, 79, '_thumbnail_id', '32'),
(1307, 106, '_sku', 'apc-apple'),
(1308, 106, '_regular_price', '179'),
(1309, 106, '_weight', '0.7'),
(1310, 106, '_thumbnail_id', '21'),
(1311, 106, '_price', '179'),
(1314, 107, '_sku', 'apc-cedertra'),
(1315, 107, '_regular_price', '179'),
(1316, 107, '_weight', '0.7'),
(1317, 107, '_thumbnail_id', '23'),
(1318, 107, '_price', '179'),
(1319, 108, '_sku', 'apc-jordgubb'),
(1320, 108, '_regular_price', '179'),
(1321, 108, '_weight', '0.7'),
(1322, 108, '_thumbnail_id', '24'),
(1323, 108, '_price', '179'),
(1324, 109, '_sku', 'apc-lime'),
(1325, 109, '_regular_price', '179'),
(1326, 109, '_weight', '0.7'),
(1327, 109, '_thumbnail_id', '25'),
(1328, 109, '_price', '179'),
(1329, 110, '_regular_price', '179'),
(1330, 110, '_weight', '0.7'),
(1331, 110, '_thumbnail_id', '26'),
(1332, 110, '_price', '179'),
(1337, 110, '_sku', 'apc-melon'),
(1342, 149, 'ml-slider_settings', 'a:39:{s:5:"title";s:13:"New Slideshow";s:4:"type";s:4:"flex";s:6:"random";s:5:"false";s:8:"cssClass";s:0:"";s:8:"printCss";s:4:"true";s:7:"printJs";s:4:"true";s:5:"width";s:4:"2000";s:6:"height";s:3:"650";s:3:"spw";i:7;s:3:"sph";i:5;s:5:"delay";s:4:"3000";s:6:"sDelay";i:30;s:7:"opacity";d:0.6999999999999999555910790149937383830547332763671875;s:10:"titleSpeed";i:500;s:6:"effect";s:4:"fade";s:10:"navigation";s:5:"false";s:5:"links";s:4:"true";s:10:"hoverPause";s:4:"true";s:5:"theme";s:4:"none";s:9:"direction";s:10:"horizontal";s:7:"reverse";s:5:"false";s:14:"animationSpeed";s:3:"600";s:8:"prevText";s:8:"Previous";s:8:"nextText";s:4:"Next";s:6:"slices";i:15;s:6:"center";s:5:"false";s:9:"smartCrop";s:4:"true";s:12:"carouselMode";s:5:"false";s:14:"carouselMargin";s:1:"5";s:16:"firstSlideFadeIn";s:5:"false";s:6:"easing";s:6:"linear";s:8:"autoPlay";s:4:"true";s:11:"thumb_width";i:150;s:12:"thumb_height";i:100;s:17:"responsive_thumbs";s:5:"false";s:15:"thumb_min_width";i:100;s:9:"fullWidth";s:4:"true";s:10:"noConflict";s:4:"true";s:12:"smoothHeight";s:5:"false";}'),
(1343, 149, 'metaslider_slideshow_theme', ''),
(1344, 150, '_wp_attached_file', '2023/04/frontpage-slide4-img.jpg'),
(1345, 150, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2460;s:6:"height";i:1080;s:4:"file";s:32:"2023/04/frontpage-slide4-img.jpg";s:8:"filesize";i:263000;s:5:"sizes";a:30:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"frontpage-slide4-img-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19516;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide4-img-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4259;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"frontpage-slide4-img-416x183.jpg";s:5:"width";i:416;s:6:"height";i:183;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17247;}s:6:"medium";a:5:{s:4:"file";s:32:"frontpage-slide4-img-300x132.jpg";s:5:"width";i:300;s:6:"height";i:132;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10923;}s:5:"large";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1024x450.jpg";s:5:"width";i:1024;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55812;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide4-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7025;}s:12:"medium_large";a:5:{s:4:"file";s:32:"frontpage-slide4-img-768x337.jpg";s:5:"width";i:768;s:6:"height";i:337;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:38689;}s:9:"1536x1536";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1536x674.jpg";s:5:"width";i:1536;s:6:"height";i:674;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:93747;}s:9:"2048x2048";a:5:{s:4:"file";s:33:"frontpage-slide4-img-2048x899.jpg";s:5:"width";i:2048;s:6:"height";i:899;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:139607;}s:27:"meta-slider-resized-700x300";a:5:{s:4:"file";s:32:"frontpage-slide4-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33623;}s:27:"meta-slider-resized-620x266";a:5:{s:4:"file";s:32:"frontpage-slide4-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28794;}s:27:"meta-slider-resized-400x171";a:5:{s:4:"file";s:32:"frontpage-slide4-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16016;}s:28:"meta-slider-resized-1084x650";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:74080;}s:27:"meta-slider-resized-620x372";a:5:{s:4:"file";s:32:"frontpage-slide4-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36666;}s:27:"meta-slider-resized-400x240";a:5:{s:4:"file";s:32:"frontpage-slide4-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21069;}s:28:"meta-slider-resized-2000x650";a:5:{s:4:"file";s:33:"frontpage-slide4-img-2000x650.jpg";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:108252;}s:28:"meta-slider-resized-1600x520";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:80355;}s:28:"meta-slider-resized-1200x390";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55872;}s:27:"meta-slider-resized-620x202";a:5:{s:4:"file";s:32:"frontpage-slide4-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24539;}s:27:"meta-slider-resized-400x130";a:5:{s:4:"file";s:32:"frontpage-slide4-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13707;}s:28:"meta-slider-resized-2460x639";a:5:{s:4:"file";s:33:"frontpage-slide4-img-2460x639.jpg";s:5:"width";i:2460;s:6:"height";i:639;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:126379;}s:28:"meta-slider-resized-1600x416";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:69177;}s:28:"meta-slider-resized-1200x312";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:48577;}s:27:"meta-slider-resized-620x161";a:5:{s:4:"file";s:32:"frontpage-slide4-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21632;}s:27:"meta-slider-resized-400x104";a:5:{s:4:"file";s:32:"frontpage-slide4-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12427;}s:28:"meta-slider-resized-2460x697";a:5:{s:4:"file";s:33:"frontpage-slide4-img-2460x697.jpg";s:5:"width";i:2460;s:6:"height";i:697;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136160;}s:28:"meta-slider-resized-1600x453";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:73080;}s:28:"meta-slider-resized-1200x340";a:5:{s:4:"file";s:33:"frontpage-slide4-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50934;}s:27:"meta-slider-resized-620x176";a:5:{s:4:"file";s:32:"frontpage-slide4-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22663;}s:27:"meta-slider-resized-400x113";a:5:{s:4:"file";s:32:"frontpage-slide4-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12342;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1346, 151, '_wp_attached_file', '2023/04/frontpage-slide-img.png'),
(1347, 151, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2671;s:6:"height";i:1483;s:4:"file";s:31:"2023/04/frontpage-slide-img.png";s:8:"filesize";i:2748490;s:5:"sizes";a:30:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:31:"frontpage-slide-img-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:133530;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:31:"frontpage-slide-img-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16727;}s:18:"woocommerce_single";a:5:{s:4:"file";s:31:"frontpage-slide-img-416x231.png";s:5:"width";i:416;s:6:"height";i:231;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:129988;}s:6:"medium";a:5:{s:4:"file";s:31:"frontpage-slide-img-300x167.png";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:73473;}s:5:"large";a:5:{s:4:"file";s:32:"frontpage-slide-img-1024x569.png";s:5:"width";i:1024;s:6:"height";i:569;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:645837;}s:9:"thumbnail";a:5:{s:4:"file";s:31:"frontpage-slide-img-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:34146;}s:12:"medium_large";a:5:{s:4:"file";s:31:"frontpage-slide-img-768x426.png";s:5:"width";i:768;s:6:"height";i:426;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:387000;}s:9:"1536x1536";a:5:{s:4:"file";s:32:"frontpage-slide-img-1536x853.png";s:5:"width";i:1536;s:6:"height";i:853;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1324001;}s:9:"2048x2048";a:5:{s:4:"file";s:33:"frontpage-slide-img-2048x1137.png";s:5:"width";i:2048;s:6:"height";i:1137;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2145515;}s:27:"meta-slider-resized-700x300";a:5:{s:4:"file";s:31:"frontpage-slide-img-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:255963;}s:27:"meta-slider-resized-620x266";a:5:{s:4:"file";s:31:"frontpage-slide-img-620x266.png";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:206695;}s:27:"meta-slider-resized-400x171";a:5:{s:4:"file";s:31:"frontpage-slide-img-400x171.png";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:95472;}s:28:"meta-slider-resized-1084x650";a:5:{s:4:"file";s:32:"frontpage-slide-img-1084x650.png";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:764819;}s:27:"meta-slider-resized-620x372";a:5:{s:4:"file";s:31:"frontpage-slide-img-620x372.png";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:280821;}s:27:"meta-slider-resized-400x240";a:5:{s:4:"file";s:31:"frontpage-slide-img-400x240.png";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:129270;}s:28:"meta-slider-resized-2000x650";a:5:{s:4:"file";s:32:"frontpage-slide-img-2000x650.png";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1204000;}s:28:"meta-slider-resized-1600x520";a:5:{s:4:"file";s:32:"frontpage-slide-img-1600x520.png";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:815839;}s:28:"meta-slider-resized-1200x390";a:5:{s:4:"file";s:32:"frontpage-slide-img-1200x390.png";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:497119;}s:27:"meta-slider-resized-620x202";a:5:{s:4:"file";s:31:"frontpage-slide-img-620x202.png";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:154559;}s:27:"meta-slider-resized-400x130";a:5:{s:4:"file";s:31:"frontpage-slide-img-400x130.png";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:71564;}s:28:"meta-slider-resized-2500x650";a:5:{s:4:"file";s:32:"frontpage-slide-img-2500x650.png";s:5:"width";i:2500;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1427930;}s:28:"meta-slider-resized-1600x416";a:5:{s:4:"file";s:32:"frontpage-slide-img-1600x416.png";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:660677;}s:28:"meta-slider-resized-1200x312";a:5:{s:4:"file";s:32:"frontpage-slide-img-1200x312.png";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:399681;}s:27:"meta-slider-resized-620x161";a:5:{s:4:"file";s:31:"frontpage-slide-img-620x161.png";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:123756;}s:27:"meta-slider-resized-400x104";a:5:{s:4:"file";s:31:"frontpage-slide-img-400x104.png";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57786;}s:28:"meta-slider-resized-2671x756";a:5:{s:4:"file";s:32:"frontpage-slide-img-2671x756.png";s:5:"width";i:2671;s:6:"height";i:756;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1450275;}s:28:"meta-slider-resized-1600x453";a:5:{s:4:"file";s:32:"frontpage-slide-img-1600x453.png";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:713467;}s:28:"meta-slider-resized-1200x340";a:5:{s:4:"file";s:32:"frontpage-slide-img-1200x340.png";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:434442;}s:27:"meta-slider-resized-620x175";a:5:{s:4:"file";s:31:"frontpage-slide-img-620x175.png";s:5:"width";i:620;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:134038;}s:27:"meta-slider-resized-400x113";a:5:{s:4:"file";s:31:"frontpage-slide-img-400x113.png";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:62465;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1348, 152, '_wp_attached_file', '2023/04/frontpage-slide3-img.jpg'),
(1349, 152, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1920;s:6:"height";i:1080;s:4:"file";s:32:"2023/04/frontpage-slide3-img.jpg";s:8:"filesize";i:98571;s:5:"sizes";a:29:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"frontpage-slide3-img-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26894;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide3-img-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3470;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"frontpage-slide3-img-416x234.jpg";s:5:"width";i:416;s:6:"height";i:234;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19526;}s:6:"medium";a:5:{s:4:"file";s:32:"frontpage-slide3-img-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10879;}s:5:"large";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87859;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide3-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6693;}s:12:"medium_large";a:5:{s:4:"file";s:32:"frontpage-slide3-img-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55786;}s:9:"1536x1536";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1536x864.jpg";s:5:"width";i:1536;s:6:"height";i:864;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:157713;}s:27:"meta-slider-resized-700x300";a:5:{s:4:"file";s:32:"frontpage-slide3-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35637;}s:27:"meta-slider-resized-620x266";a:5:{s:4:"file";s:32:"frontpage-slide3-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29060;}s:27:"meta-slider-resized-400x171";a:5:{s:4:"file";s:32:"frontpage-slide3-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13181;}s:28:"meta-slider-resized-1084x650";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103547;}s:27:"meta-slider-resized-620x372";a:5:{s:4:"file";s:32:"frontpage-slide3-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42604;}s:27:"meta-slider-resized-400x240";a:5:{s:4:"file";s:32:"frontpage-slide3-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19613;}s:28:"meta-slider-resized-1920x624";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1920x624.jpg";s:5:"width";i:1920;s:6:"height";i:624;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:129466;}s:28:"meta-slider-resized-1600x520";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99628;}s:28:"meta-slider-resized-1200x390";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:65668;}s:27:"meta-slider-resized-620x202";a:5:{s:4:"file";s:32:"frontpage-slide3-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22513;}s:27:"meta-slider-resized-400x130";a:5:{s:4:"file";s:32:"frontpage-slide3-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10301;}s:28:"meta-slider-resized-1920x499";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1920x499.jpg";s:5:"width";i:1920;s:6:"height";i:499;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:102406;}s:28:"meta-slider-resized-1600x416";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79845;}s:28:"meta-slider-resized-1200x312";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53523;}s:27:"meta-slider-resized-620x161";a:5:{s:4:"file";s:32:"frontpage-slide3-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18413;}s:27:"meta-slider-resized-400x104";a:5:{s:4:"file";s:32:"frontpage-slide3-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8186;}s:28:"meta-slider-resized-1920x544";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1920x544.jpg";s:5:"width";i:1920;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:114368;}s:28:"meta-slider-resized-1600x453";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87595;}s:28:"meta-slider-resized-1200x340";a:5:{s:4:"file";s:33:"frontpage-slide3-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58109;}s:27:"meta-slider-resized-620x176";a:5:{s:4:"file";s:32:"frontpage-slide3-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19470;}s:27:"meta-slider-resized-400x113";a:5:{s:4:"file";s:32:"frontpage-slide3-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9012;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1350, 153, '_wp_attached_file', '2023/04/frontpage-slide2-img.jpg'),
(1351, 153, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:2048;s:6:"height";i:1367;s:4:"file";s:32:"2023/04/frontpage-slide2-img.jpg";s:8:"filesize";i:953737;s:5:"sizes";a:29:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"frontpage-slide2-img-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32452;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide2-img-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5054;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"frontpage-slide2-img-416x278.jpg";s:5:"width";i:416;s:6:"height";i:278;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35735;}s:6:"medium";a:5:{s:4:"file";s:32:"frontpage-slide2-img-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20718;}s:5:"large";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:166011;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"frontpage-slide2-img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9237;}s:12:"medium_large";a:5:{s:4:"file";s:32:"frontpage-slide2-img-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99169;}s:9:"1536x1536";a:5:{s:4:"file";s:34:"frontpage-slide2-img-1536x1025.jpg";s:5:"width";i:1536;s:6:"height";i:1025;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:336242;}s:27:"meta-slider-resized-700x300";a:5:{s:4:"file";s:32:"frontpage-slide2-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49461;}s:27:"meta-slider-resized-620x266";a:5:{s:4:"file";s:32:"frontpage-slide2-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40662;}s:27:"meta-slider-resized-400x171";a:5:{s:4:"file";s:32:"frontpage-slide2-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19810;}s:28:"meta-slider-resized-1084x650";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:161478;}s:27:"meta-slider-resized-620x372";a:5:{s:4:"file";s:32:"frontpage-slide2-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61917;}s:27:"meta-slider-resized-400x240";a:5:{s:4:"file";s:32:"frontpage-slide2-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29411;}s:28:"meta-slider-resized-2000x650";a:5:{s:4:"file";s:33:"frontpage-slide2-img-2000x650.jpg";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:214376;}s:28:"meta-slider-resized-1600x520";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136965;}s:28:"meta-slider-resized-1200x390";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79874;}s:27:"meta-slider-resized-620x202";a:5:{s:4:"file";s:32:"frontpage-slide2-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26693;}s:27:"meta-slider-resized-400x130";a:5:{s:4:"file";s:32:"frontpage-slide2-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13860;}s:28:"meta-slider-resized-2048x532";a:5:{s:4:"file";s:33:"frontpage-slide2-img-2048x532.jpg";s:5:"width";i:2048;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:199157;}s:28:"meta-slider-resized-1600x416";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:98692;}s:28:"meta-slider-resized-1200x312";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:56484;}s:27:"meta-slider-resized-620x161";a:5:{s:4:"file";s:32:"frontpage-slide2-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19023;}s:27:"meta-slider-resized-400x104";a:5:{s:4:"file";s:32:"frontpage-slide2-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9850;}s:28:"meta-slider-resized-2048x580";a:5:{s:4:"file";s:33:"frontpage-slide2-img-2048x580.jpg";s:5:"width";i:2048;s:6:"height";i:580;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:220755;}s:28:"meta-slider-resized-1600x453";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:111263;}s:28:"meta-slider-resized-1200x340";a:5:{s:4:"file";s:33:"frontpage-slide2-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64044;}s:27:"meta-slider-resized-620x176";a:5:{s:4:"file";s:32:"frontpage-slide2-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20624;}s:27:"meta-slider-resized-400x113";a:5:{s:4:"file";s:32:"frontpage-slide2-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11359;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1352, 154, '_thumbnail_id', '151'),
(1353, 154, 'ml-slider_type', 'image'),
(1354, 154, 'ml-slider_inherit_image_title', '1'),
(1355, 154, 'ml-slider_inherit_image_alt', '1'),
(1356, 151, '_wp_attachment_image_alt', 'slide-img1'),
(1357, 154, 'ml-slider_crop_position', 'center-center'),
(1358, 154, 'ml-slider_caption_source', 'image-caption'),
(1359, 154, '_wp_attachment_image_alt', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1360, 151, '_wp_attachment_backup_sizes', 'a:21:{s:15:"resized-700x300";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-700x300.png";s:4:"file";s:31:"frontpage-slide-img-700x300.png";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:255963;}s:15:"resized-620x266";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-620x266.png";s:4:"file";s:31:"frontpage-slide-img-620x266.png";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:206695;}s:15:"resized-400x171";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-400x171.png";s:4:"file";s:31:"frontpage-slide-img-400x171.png";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:95472;}s:16:"resized-1084x650";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1084x650.png";s:4:"file";s:32:"frontpage-slide-img-1084x650.png";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:764819;}s:15:"resized-620x372";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-620x372.png";s:4:"file";s:31:"frontpage-slide-img-620x372.png";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:280821;}s:15:"resized-400x240";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-400x240.png";s:4:"file";s:31:"frontpage-slide-img-400x240.png";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:129270;}s:16:"resized-2000x650";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-2000x650.png";s:4:"file";s:32:"frontpage-slide-img-2000x650.png";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1204000;}s:16:"resized-1600x520";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1600x520.png";s:4:"file";s:32:"frontpage-slide-img-1600x520.png";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:815839;}s:16:"resized-1200x390";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1200x390.png";s:4:"file";s:32:"frontpage-slide-img-1200x390.png";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:497119;}s:15:"resized-620x202";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-620x202.png";s:4:"file";s:31:"frontpage-slide-img-620x202.png";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:154559;}s:15:"resized-400x130";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-400x130.png";s:4:"file";s:31:"frontpage-slide-img-400x130.png";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:71564;}s:16:"resized-2500x650";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-2500x650.png";s:4:"file";s:32:"frontpage-slide-img-2500x650.png";s:5:"width";i:2500;s:6:"height";i:650;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1427930;}s:16:"resized-1600x416";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1600x416.png";s:4:"file";s:32:"frontpage-slide-img-1600x416.png";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:660677;}s:16:"resized-1200x312";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1200x312.png";s:4:"file";s:32:"frontpage-slide-img-1200x312.png";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:399681;}s:15:"resized-620x161";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-620x161.png";s:4:"file";s:31:"frontpage-slide-img-620x161.png";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:123756;}s:15:"resized-400x104";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-400x104.png";s:4:"file";s:31:"frontpage-slide-img-400x104.png";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:57786;}s:16:"resized-2671x756";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-2671x756.png";s:4:"file";s:32:"frontpage-slide-img-2671x756.png";s:5:"width";i:2671;s:6:"height";i:756;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:1450275;}s:16:"resized-1600x453";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1600x453.png";s:4:"file";s:32:"frontpage-slide-img-1600x453.png";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:713467;}s:16:"resized-1200x340";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-1200x340.png";s:4:"file";s:32:"frontpage-slide-img-1200x340.png";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:434442;}s:15:"resized-620x175";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-620x175.png";s:4:"file";s:31:"frontpage-slide-img-620x175.png";s:5:"width";i:620;s:6:"height";i:175;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:134038;}s:15:"resized-400x113";a:6:{s:4:"path";s:85:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img-400x113.png";s:4:"file";s:31:"frontpage-slide-img-400x113.png";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:62465;}}'),
(1361, 153, '_wp_attachment_image_alt', 'slide-img2'),
(1362, 155, '_thumbnail_id', '153'),
(1363, 155, 'ml-slider_type', 'image'),
(1364, 155, 'ml-slider_inherit_image_title', '1'),
(1365, 155, 'ml-slider_inherit_image_alt', '1'),
(1366, 155, 'ml-slider_crop_position', 'center-center'),
(1367, 155, 'ml-slider_caption_source', 'image-caption'),
(1368, 155, '_wp_attachment_image_alt', ''),
(1369, 153, '_wp_attachment_backup_sizes', 'a:21:{s:15:"resized-700x300";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-700x300.jpg";s:4:"file";s:32:"frontpage-slide2-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49461;}s:15:"resized-620x266";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-620x266.jpg";s:4:"file";s:32:"frontpage-slide2-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:40662;}s:15:"resized-400x171";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-400x171.jpg";s:4:"file";s:32:"frontpage-slide2-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19810;}s:16:"resized-1084x650";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1084x650.jpg";s:4:"file";s:33:"frontpage-slide2-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:161478;}s:15:"resized-620x372";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-620x372.jpg";s:4:"file";s:32:"frontpage-slide2-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61917;}s:15:"resized-400x240";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-400x240.jpg";s:4:"file";s:32:"frontpage-slide2-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29411;}s:16:"resized-2000x650";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-2000x650.jpg";s:4:"file";s:33:"frontpage-slide2-img-2000x650.jpg";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:214376;}s:16:"resized-1600x520";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1600x520.jpg";s:4:"file";s:33:"frontpage-slide2-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136965;}s:16:"resized-1200x390";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1200x390.jpg";s:4:"file";s:33:"frontpage-slide2-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79874;}s:15:"resized-620x202";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-620x202.jpg";s:4:"file";s:32:"frontpage-slide2-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26693;}s:15:"resized-400x130";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-400x130.jpg";s:4:"file";s:32:"frontpage-slide2-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13860;}s:16:"resized-2048x532";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-2048x532.jpg";s:4:"file";s:33:"frontpage-slide2-img-2048x532.jpg";s:5:"width";i:2048;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:199157;}s:16:"resized-1600x416";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1600x416.jpg";s:4:"file";s:33:"frontpage-slide2-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:98692;}s:16:"resized-1200x312";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1200x312.jpg";s:4:"file";s:33:"frontpage-slide2-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:56484;}s:15:"resized-620x161";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-620x161.jpg";s:4:"file";s:32:"frontpage-slide2-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19023;}s:15:"resized-400x104";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-400x104.jpg";s:4:"file";s:32:"frontpage-slide2-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9850;}s:16:"resized-2048x580";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-2048x580.jpg";s:4:"file";s:33:"frontpage-slide2-img-2048x580.jpg";s:5:"width";i:2048;s:6:"height";i:580;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:220755;}s:16:"resized-1600x453";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1600x453.jpg";s:4:"file";s:33:"frontpage-slide2-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:111263;}s:16:"resized-1200x340";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-1200x340.jpg";s:4:"file";s:33:"frontpage-slide2-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64044;}s:15:"resized-620x176";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-620x176.jpg";s:4:"file";s:32:"frontpage-slide2-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:20624;}s:15:"resized-400x113";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img-400x113.jpg";s:4:"file";s:32:"frontpage-slide2-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:11359;}}'),
(1370, 152, '_wp_attachment_image_alt', 'slide-img3'),
(1371, 156, '_thumbnail_id', '152'),
(1372, 156, 'ml-slider_type', 'image'),
(1373, 156, 'ml-slider_inherit_image_title', '1'),
(1374, 156, 'ml-slider_inherit_image_alt', '1'),
(1375, 156, 'ml-slider_crop_position', 'center-center'),
(1376, 156, 'ml-slider_caption_source', 'image-caption'),
(1377, 156, '_wp_attachment_image_alt', ''),
(1378, 152, '_wp_attachment_backup_sizes', 'a:21:{s:15:"resized-700x300";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-700x300.jpg";s:4:"file";s:32:"frontpage-slide3-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:35637;}s:15:"resized-620x266";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-620x266.jpg";s:4:"file";s:32:"frontpage-slide3-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29060;}s:15:"resized-400x171";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-400x171.jpg";s:4:"file";s:32:"frontpage-slide3-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13181;}s:16:"resized-1084x650";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1084x650.jpg";s:4:"file";s:33:"frontpage-slide3-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103547;}s:15:"resized-620x372";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-620x372.jpg";s:4:"file";s:32:"frontpage-slide3-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:42604;}s:15:"resized-400x240";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-400x240.jpg";s:4:"file";s:32:"frontpage-slide3-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19613;}s:16:"resized-1920x624";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1920x624.jpg";s:4:"file";s:33:"frontpage-slide3-img-1920x624.jpg";s:5:"width";i:1920;s:6:"height";i:624;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:129466;}s:16:"resized-1600x520";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1600x520.jpg";s:4:"file";s:33:"frontpage-slide3-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99628;}s:16:"resized-1200x390";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1200x390.jpg";s:4:"file";s:33:"frontpage-slide3-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:65668;}s:15:"resized-620x202";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-620x202.jpg";s:4:"file";s:32:"frontpage-slide3-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22513;}s:15:"resized-400x130";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-400x130.jpg";s:4:"file";s:32:"frontpage-slide3-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10301;}s:16:"resized-1920x499";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1920x499.jpg";s:4:"file";s:33:"frontpage-slide3-img-1920x499.jpg";s:5:"width";i:1920;s:6:"height";i:499;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:102406;}s:16:"resized-1600x416";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1600x416.jpg";s:4:"file";s:33:"frontpage-slide3-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79845;}s:16:"resized-1200x312";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1200x312.jpg";s:4:"file";s:33:"frontpage-slide3-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53523;}s:15:"resized-620x161";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-620x161.jpg";s:4:"file";s:32:"frontpage-slide3-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18413;}s:15:"resized-400x104";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-400x104.jpg";s:4:"file";s:32:"frontpage-slide3-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8186;}s:16:"resized-1920x544";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1920x544.jpg";s:4:"file";s:33:"frontpage-slide3-img-1920x544.jpg";s:5:"width";i:1920;s:6:"height";i:544;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:114368;}s:16:"resized-1600x453";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1600x453.jpg";s:4:"file";s:33:"frontpage-slide3-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:87595;}s:16:"resized-1200x340";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-1200x340.jpg";s:4:"file";s:33:"frontpage-slide3-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:58109;}s:15:"resized-620x176";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-620x176.jpg";s:4:"file";s:32:"frontpage-slide3-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:19470;}s:15:"resized-400x113";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img-400x113.jpg";s:4:"file";s:32:"frontpage-slide3-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9012;}}'),
(1379, 150, '_wp_attachment_image_alt', 'slide-img4'),
(1380, 157, '_thumbnail_id', '150'),
(1381, 157, 'ml-slider_type', 'image'),
(1382, 157, 'ml-slider_inherit_image_title', '1'),
(1383, 157, 'ml-slider_inherit_image_alt', '1'),
(1384, 157, 'ml-slider_crop_position', 'center-center'),
(1385, 157, 'ml-slider_caption_source', 'image-caption'),
(1386, 157, '_wp_attachment_image_alt', ''),
(1387, 150, '_wp_attachment_backup_sizes', 'a:21:{s:15:"resized-700x300";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-700x300.jpg";s:4:"file";s:32:"frontpage-slide4-img-700x300.jpg";s:5:"width";i:700;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33623;}s:15:"resized-620x266";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-620x266.jpg";s:4:"file";s:32:"frontpage-slide4-img-620x266.jpg";s:5:"width";i:620;s:6:"height";i:266;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28794;}s:15:"resized-400x171";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-400x171.jpg";s:4:"file";s:32:"frontpage-slide4-img-400x171.jpg";s:5:"width";i:400;s:6:"height";i:171;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16016;}s:16:"resized-1084x650";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1084x650.jpg";s:4:"file";s:33:"frontpage-slide4-img-1084x650.jpg";s:5:"width";i:1084;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:74080;}s:15:"resized-620x372";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-620x372.jpg";s:4:"file";s:32:"frontpage-slide4-img-620x372.jpg";s:5:"width";i:620;s:6:"height";i:372;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36666;}s:15:"resized-400x240";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-400x240.jpg";s:4:"file";s:32:"frontpage-slide4-img-400x240.jpg";s:5:"width";i:400;s:6:"height";i:240;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21069;}s:16:"resized-2000x650";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-2000x650.jpg";s:4:"file";s:33:"frontpage-slide4-img-2000x650.jpg";s:5:"width";i:2000;s:6:"height";i:650;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:108252;}s:16:"resized-1600x520";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1600x520.jpg";s:4:"file";s:33:"frontpage-slide4-img-1600x520.jpg";s:5:"width";i:1600;s:6:"height";i:520;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:80355;}s:16:"resized-1200x390";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1200x390.jpg";s:4:"file";s:33:"frontpage-slide4-img-1200x390.jpg";s:5:"width";i:1200;s:6:"height";i:390;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55872;}s:15:"resized-620x202";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-620x202.jpg";s:4:"file";s:32:"frontpage-slide4-img-620x202.jpg";s:5:"width";i:620;s:6:"height";i:202;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24539;}s:15:"resized-400x130";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-400x130.jpg";s:4:"file";s:32:"frontpage-slide4-img-400x130.jpg";s:5:"width";i:400;s:6:"height";i:130;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:13707;}s:16:"resized-2460x639";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-2460x639.jpg";s:4:"file";s:33:"frontpage-slide4-img-2460x639.jpg";s:5:"width";i:2460;s:6:"height";i:639;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:126379;}s:16:"resized-1600x416";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1600x416.jpg";s:4:"file";s:33:"frontpage-slide4-img-1600x416.jpg";s:5:"width";i:1600;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:69177;}s:16:"resized-1200x312";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1200x312.jpg";s:4:"file";s:33:"frontpage-slide4-img-1200x312.jpg";s:5:"width";i:1200;s:6:"height";i:312;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:48577;}s:15:"resized-620x161";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-620x161.jpg";s:4:"file";s:32:"frontpage-slide4-img-620x161.jpg";s:5:"width";i:620;s:6:"height";i:161;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21632;}s:15:"resized-400x104";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-400x104.jpg";s:4:"file";s:32:"frontpage-slide4-img-400x104.jpg";s:5:"width";i:400;s:6:"height";i:104;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12427;}s:16:"resized-2460x697";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-2460x697.jpg";s:4:"file";s:33:"frontpage-slide4-img-2460x697.jpg";s:5:"width";i:2460;s:6:"height";i:697;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:136160;}s:16:"resized-1600x453";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1600x453.jpg";s:4:"file";s:33:"frontpage-slide4-img-1600x453.jpg";s:5:"width";i:1600;s:6:"height";i:453;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:73080;}s:16:"resized-1200x340";a:6:{s:4:"path";s:87:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-1200x340.jpg";s:4:"file";s:33:"frontpage-slide4-img-1200x340.jpg";s:5:"width";i:1200;s:6:"height";i:340;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50934;}s:15:"resized-620x176";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-620x176.jpg";s:4:"file";s:32:"frontpage-slide4-img-620x176.jpg";s:5:"width";i:620;s:6:"height";i:176;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22663;}s:15:"resized-400x113";a:6:{s:4:"path";s:86:"C:MAMPhtdocswebshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img-400x113.jpg";s:4:"file";s:32:"frontpage-slide4-img-400x113.jpg";s:5:"width";i:400;s:6:"height";i:113;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12342;}}'),
(1388, 155, 'ml-slider_url', 'http://localhost/webshop_grupp1/product/purify-s-shampoo/'),
(1389, 156, 'ml-slider_url', 'http://localhost/webshop_grupp1/product/purify-s-schampo-gloss/'),
(1391, 135, '_edit_last', '2'),
(1394, 133, '_edit_last', '2'),
(1397, 139, '_edit_last', '2'),
(1400, 142, '_edit_last', '2'),
(1406, 2, '_edit_lock', '1682446051:2'),
(1407, 167, '_edit_lock', '1682447453:2'),
(1408, 168, '_edit_lock', '1682447502:2'),
(1409, 169, '_wp_attached_file', '2023/04/elevate-bloginlagg.jpg'),
(1410, 169, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:960;s:6:"height";i:961;s:4:"file";s:30:"2023/04/elevate-bloginlagg.jpg";s:8:"filesize";i:63095;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"elevate-bloginlagg-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17279;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"elevate-bloginlagg-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3777;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"elevate-bloginlagg-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24163;}s:6:"medium";a:5:{s:4:"file";s:30:"elevate-bloginlagg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15630;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"elevate-bloginlagg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6166;}s:12:"medium_large";a:5:{s:4:"file";s:30:"elevate-bloginlagg-768x769.jpg";s:5:"width";i:768;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57419;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1411, 169, '_wp_attachment_image_alt', 'snowfoam'),
(1414, 174, '_wp_attached_file', '2023/04/inlagg2img.jpg'),
(1415, 174, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:960;s:6:"height";i:961;s:4:"file";s:22:"2023/04/inlagg2img.jpg";s:8:"filesize";i:72468;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"inlagg2img-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18645;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"inlagg2img-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3862;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"inlagg2img-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26356;}s:6:"medium";a:5:{s:4:"file";s:22:"inlagg2img-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16692;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"inlagg2img-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6269;}s:12:"medium_large";a:5:{s:4:"file";s:22:"inlagg2img-768x769.jpg";s:5:"width";i:768;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:65099;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1416, 174, '_wp_attachment_image_alt', 'apc-cedertra-inlagg'),
(1422, 180, '_wp_attached_file', '2023/04/wahbucket-inlagg.jpg'),
(1423, 180, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:962;s:6:"height";i:963;s:4:"file";s:28:"2023/04/wahbucket-inlagg.jpg";s:8:"filesize";i:105534;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:28:"wahbucket-inlagg-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26243;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:28:"wahbucket-inlagg-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4309;}s:18:"woocommerce_single";a:5:{s:4:"file";s:28:"wahbucket-inlagg-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37905;}s:6:"medium";a:5:{s:4:"file";s:28:"wahbucket-inlagg-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23134;}s:9:"thumbnail";a:5:{s:4:"file";s:28:"wahbucket-inlagg-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7772;}s:12:"medium_large";a:5:{s:4:"file";s:28:"wahbucket-inlagg-768x769.jpg";s:5:"width";i:768;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:96883;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1424, 180, '_wp_attachment_image_alt', 'washbucket-inlagg'),
(1428, 139, '_wp_old_slug', 'ny-hoodie-pa-g'),
(1431, 142, '_wp_old_slug', 'kolla-in-var-nya-purify-s'),
(1433, 133, '_wp_old_slug', 'tershine'),
(1435, 184, '_edit_lock', '1682606950:2'),
(1436, 184, '_edit_last', '2'),
(1437, 187, '_menu_item_type', 'custom'),
(1438, 187, '_menu_item_menu_item_parent', '0'),
(1439, 187, '_menu_item_object_id', '187'),
(1440, 187, '_menu_item_object', 'custom'),
(1441, 187, '_menu_item_target', ''),
(1442, 187, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1443, 187, '_menu_item_xfn', ''),
(1444, 187, '_menu_item_url', 'http://localhost/webshop_grupp1/'),
(1446, 188, '_menu_item_type', 'post_type'),
(1447, 188, '_menu_item_menu_item_parent', '0'),
(1448, 188, '_menu_item_object_id', '184'),
(1449, 188, '_menu_item_object', 'page'),
(1450, 188, '_menu_item_target', ''),
(1451, 188, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1452, 188, '_menu_item_xfn', ''),
(1453, 188, '_menu_item_url', ''),
(1464, 190, '_menu_item_type', 'post_type'),
(1465, 190, '_menu_item_menu_item_parent', '0'),
(1466, 190, '_menu_item_object_id', '46'),
(1467, 190, '_menu_item_object', 'page'),
(1468, 190, '_menu_item_target', ''),
(1469, 190, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1470, 190, '_menu_item_xfn', ''),
(1471, 190, '_menu_item_url', ''),
(1473, 191, '_edit_lock', '1682606703:2'),
(1474, 191, '_edit_last', '2'),
(1475, 193, '_edit_lock', '1682581886:2'),
(1476, 193, '_edit_last', '2'),
(1477, 195, '_menu_item_type', 'post_type'),
(1478, 195, '_menu_item_menu_item_parent', '0'),
(1479, 195, '_menu_item_object_id', '193'),
(1480, 195, '_menu_item_object', 'page'),
(1481, 195, '_menu_item_target', ''),
(1482, 195, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1483, 195, '_menu_item_xfn', ''),
(1484, 195, '_menu_item_url', ''),
(1486, 196, '_menu_item_type', 'post_type'),
(1487, 196, '_menu_item_menu_item_parent', '0'),
(1488, 196, '_menu_item_object_id', '191'),
(1489, 196, '_menu_item_object', 'page'),
(1490, 196, '_menu_item_target', ''),
(1491, 196, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(1492, 196, '_menu_item_xfn', ''),
(1493, 196, '_menu_item_url', ''),
(1495, 197, '_edit_lock', '1682670525:2'),
(1496, 197, '_edit_last', '2'),
(1497, 88, '_sale_price', '19'),
(1498, 67, '_sale_price', '149'),
(1499, 91, '_sale_price', '199') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1500, 197, '_wp_page_template', 'default'),
(1501, 230, '_edit_lock', '1683027782:4'),
(1502, 230, '_edit_last', '2'),
(1503, 230, '_thumbnail_id', '124'),
(1504, 230, '_sku', 'revive-lemonade-energy-drink'),
(1505, 230, '_regular_price', '19'),
(1506, 230, 'total_sales', '0'),
(1507, 230, '_tax_status', 'taxable'),
(1508, 230, '_tax_class', ''),
(1509, 230, '_manage_stock', 'yes'),
(1510, 230, '_backorders', 'no'),
(1511, 230, '_sold_individually', 'no'),
(1512, 230, '_weight', '0.4'),
(1513, 230, '_virtual', 'no'),
(1514, 230, '_downloadable', 'no'),
(1515, 230, '_download_limit', '-1'),
(1516, 230, '_download_expiry', '-1'),
(1517, 230, '_stock', '0'),
(1518, 230, '_stock_status', 'outofstock'),
(1519, 230, '_wc_average_rating', '0'),
(1520, 230, '_wc_review_count', '0'),
(1521, 230, '_product_version', '7.6.0'),
(1522, 230, '_price', '19'),
(1527, 127, '_edit_last', '2'),
(1534, 50, '_edit_last', '2'),
(1535, 50, '_wp_page_template', 'default'),
(1536, 238, '_wp_attached_file', '2023/04/logo.png'),
(1537, 238, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:380;s:4:"file";s:16:"2023/04/logo.png";s:8:"filesize";i:40422;s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:16:"logo-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:16857;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:16:"logo-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2909;}s:18:"woocommerce_single";a:5:{s:4:"file";s:16:"logo-416x132.png";s:5:"width";i:416;s:6:"height";i:132;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12236;}s:6:"medium";a:5:{s:4:"file";s:15:"logo-300x95.png";s:5:"width";i:300;s:6:"height";i:95;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:6597;}s:5:"large";a:5:{s:4:"file";s:17:"logo-1024x324.png";s:5:"width";i:1024;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:47951;}s:9:"thumbnail";a:5:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:5099;}s:12:"medium_large";a:5:{s:4:"file";s:16:"logo-768x243.png";s:5:"width";i:768;s:6:"height";i:243;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:30268;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1538, 238, '_wp_attachment_image_alt', 'tershine logo'),
(1539, 239, '_edit_lock', '1682519705:2'),
(1540, 239, '_wp_trash_meta_status', 'publish'),
(1541, 239, '_wp_trash_meta_time', '1682519717'),
(1542, 46, '_edit_last', '2'),
(1543, 46, '_wp_page_template', 'default'),
(1544, 46, '_edit_lock', '1682524570:2'),
(1545, 243, '_wp_attached_file', '2023/04/drying-towel-big2.webp'),
(1546, 243, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:30:"2023/04/drying-towel-big2.webp";s:8:"filesize";i:146704;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"drying-towel-big2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:24994;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"drying-towel-big2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3932;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"drying-towel-big2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:36872;}s:6:"medium";a:5:{s:4:"file";s:30:"drying-towel-big2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:22028;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"drying-towel-big2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7538;}s:12:"medium_large";a:5:{s:4:"file";s:30:"drying-towel-big2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:95072;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1547, 15, '_wp_attachment_image_alt', 'refined-1'),
(1548, 73, '_product_image_gallery', '15'),
(1549, 34, '_wp_attachment_image_alt', 'applicator-2'),
(1550, 97, '_product_image_gallery', '34'),
(1551, 246, '_form', '<label> Namn\n    [text* your-name autocomplete:name] </label>\n\n<label> Email\n    [email* your-email autocomplete:email] </label>\n\n<label> Ärende\n    [select* Subject class:subject-contact-form include_blank "Kontakt" "Reklamation" "Faktura"] </label>\n\n<label> Meddelande (frivilligt)\n    [textarea your-message] </label>\n\n[submit "Skicka"]'),
(1552, 246, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:56:"[_site_title] <sandra.hostkannerberg@medieinstitutet.se>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:161:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1553, 246, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:56:"[_site_title] <sandra.hostkannerberg@medieinstitutet.se>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:105:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(1554, 246, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(1555, 246, '_additional_settings', ''),
(1556, 246, '_locale', 'sv_SE'),
(1557, 47, '_edit_lock', '1682582294:2'),
(1558, 256, '_edit_lock', '1682582614:2'),
(1559, 256, '_wp_trash_meta_status', 'publish'),
(1560, 256, '_wp_trash_meta_time', '1682582643'),
(1561, 257, '_edit_lock', '1682592238:2'),
(1562, 257, '_edit_last', '2'),
(1563, 257, 'discount_type', 'fixed_cart'),
(1564, 257, 'coupon_amount', '100'),
(1565, 257, 'individual_use', 'no'),
(1566, 257, 'usage_limit', '0'),
(1567, 257, 'usage_limit_per_user', '0'),
(1568, 257, 'limit_usage_to_x_items', '0'),
(1569, 257, 'usage_count', '3'),
(1570, 257, 'date_expires', '1727388000'),
(1571, 257, 'free_shipping', 'no'),
(1572, 257, 'exclude_sale_items', 'no'),
(1573, 257, 'minimum_amount', '200'),
(1574, 258, '_wp_trash_meta_status', 'publish'),
(1575, 258, '_wp_trash_meta_time', '1682585597'),
(1578, 98, '_weight', '0.4'),
(1579, 97, '_weight', '0.2'),
(1580, 96, '_weight', '0.5'),
(1581, 94, '_weight', '0.5'),
(1582, 91, '_weight', '0.8'),
(1583, 90, '_weight', '0.05'),
(1584, 88, '_weight', '0.2'),
(1585, 87, '_weight', '0.8'),
(1588, 83, '_weight', '0.2'),
(1590, 79, '_weight', '0.5'),
(1591, 74, '_weight', '0.2'),
(1592, 73, '_weight', '0.7'),
(1596, 68, '_weight', '1.5'),
(1597, 67, '_weight', '0.7'),
(1600, 59, '_weight', '1.5'),
(1603, 56, '_weight', '0.7'),
(1607, 261, '_order_key', 'wc_order_YuHh5QNhy3NLu'),
(1608, 261, '_customer_user', '2'),
(1609, 261, '_payment_method', 'klarna_payments'),
(1610, 261, '_payment_method_title', 'Klarna'),
(1611, 261, '_customer_ip_address', '::1'),
(1612, 261, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(1613, 261, '_created_via', 'checkout'),
(1614, 261, '_cart_hash', 'dddae2a0ca493d3f2e806c05cffda58c'),
(1615, 261, '_download_permissions_granted', 'no'),
(1616, 261, '_recorded_sales', 'no'),
(1617, 261, '_recorded_coupon_usage_counts', 'no'),
(1618, 261, '_new_order_email_sent', 'false'),
(1619, 261, '_order_stock_reduced', 'no'),
(1620, 261, '_billing_first_name', 'Carolina'),
(1621, 261, '_billing_last_name', 'Andersson'),
(1622, 261, '_billing_address_1', 'HÅRDGÅRDSBODARNA 110'),
(1623, 261, '_billing_city', 'Sörbygden'),
(1624, 261, '_billing_postcode', '84398') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1625, 261, '_billing_country', 'SE'),
(1626, 261, '_billing_email', 'admin@enemail.com'),
(1627, 261, '_billing_phone', '0762628953'),
(1628, 261, '_shipping_first_name', 'Carolina'),
(1629, 261, '_shipping_last_name', 'Andersson'),
(1630, 261, '_shipping_address_1', 'HÅRDGÅRDSBODARNA 110'),
(1631, 261, '_shipping_city', 'Sörbygden'),
(1632, 261, '_shipping_postcode', '84398'),
(1633, 261, '_shipping_country', 'SE'),
(1634, 261, '_order_currency', 'SEK'),
(1635, 261, '_cart_discount', '80'),
(1636, 261, '_cart_discount_tax', '20'),
(1637, 261, '_order_shipping', '0'),
(1638, 261, '_order_shipping_tax', '0'),
(1639, 261, '_order_tax', '119.4'),
(1640, 261, '_order_total', '597.00'),
(1641, 261, '_order_version', '7.6.0'),
(1642, 261, '_prices_include_tax', 'yes'),
(1643, 261, '_billing_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE admin@enemail.com 0762628953'),
(1644, 261, '_shipping_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE '),
(1646, 261, 'is_vat_exempt', 'no'),
(1647, 261, '_wc_klarna_environment', 'test'),
(1648, 261, '_wc_klarna_country', 'SE'),
(1649, 261, '_kp_session_id', '60bbc654-55c6-5724-ac7f-d5426ac73a87'),
(1650, 262, '_order_key', 'wc_order_i5zcaNxM93ChW'),
(1651, 262, '_customer_user', '2'),
(1652, 262, '_payment_method', 'klarna_payments'),
(1653, 262, '_payment_method_title', 'Klarna'),
(1654, 262, '_customer_ip_address', '::1'),
(1655, 262, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(1656, 262, '_created_via', 'checkout'),
(1657, 262, '_cart_hash', 'e870f3450c89a4567daaf2806e5d7ac8'),
(1658, 262, '_download_permissions_granted', 'yes'),
(1659, 262, '_recorded_sales', 'yes'),
(1660, 262, '_recorded_coupon_usage_counts', 'yes'),
(1661, 262, '_new_order_email_sent', 'true'),
(1662, 262, '_order_stock_reduced', 'yes'),
(1663, 262, '_billing_first_name', 'Carolina'),
(1664, 262, '_billing_last_name', 'Andersson'),
(1665, 262, '_billing_address_1', 'HÅRDGÅRDSBODARNA 110'),
(1666, 262, '_billing_city', 'Sörbygden'),
(1667, 262, '_billing_postcode', '84398'),
(1668, 262, '_billing_country', 'SE'),
(1669, 262, '_billing_email', 'admin@enemail.com'),
(1670, 262, '_billing_phone', '0762628953'),
(1671, 262, '_shipping_first_name', 'Carolina'),
(1672, 262, '_shipping_last_name', 'Andersson'),
(1673, 262, '_shipping_address_1', 'HÅRDGÅRDSBODARNA 110'),
(1674, 262, '_shipping_city', 'Sörbygden'),
(1675, 262, '_shipping_postcode', '84398'),
(1676, 262, '_shipping_country', 'SE'),
(1677, 262, '_order_currency', 'SEK'),
(1678, 262, '_cart_discount', '0'),
(1679, 262, '_cart_discount_tax', '0'),
(1680, 262, '_order_shipping', '0'),
(1681, 262, '_order_shipping_tax', '0'),
(1682, 262, '_order_tax', '139.4'),
(1683, 262, '_order_total', '697.00'),
(1684, 262, '_order_version', '7.6.0'),
(1685, 262, '_prices_include_tax', 'yes'),
(1686, 262, '_billing_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE admin@enemail.com 0762628953'),
(1687, 262, '_shipping_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE '),
(1688, 262, 'is_vat_exempt', 'no'),
(1689, 262, '_wc_klarna_environment', 'test'),
(1690, 262, '_wc_klarna_country', 'SE'),
(1691, 262, '_kp_session_id', '60bbc654-55c6-5724-ac7f-d5426ac73a87'),
(1692, 262, '_transaction_id', '77b39cf0-cdc6-4760-9a8d-584a4808ec9c'),
(1693, 262, '_date_paid', '1682591751'),
(1694, 262, '_paid_date', '2023-04-27 12:35:51'),
(1695, 262, '_wc_klarna_order_id', '77b39cf0-cdc6-4760-9a8d-584a4808ec9c'),
(1697, 263, '_edit_lock', '1683106199:2'),
(1698, 263, '_edit_last', '4'),
(1699, 265, '_edit_lock', '1682600614:2'),
(1700, 265, '_edit_last', '2'),
(1701, 265, 'butikens_namn', 'Butik 1'),
(1702, 265, '_butikens_namn', 'field_644a6c7d4450e'),
(1703, 267, 'butikens_namn', 'Butik 1'),
(1704, 267, '_butikens_namn', 'field_644a6c7d4450e'),
(1705, 265, '_wp_page_template', 'default'),
(1706, 265, 'adress', 'Arenavägen 35\r\n121 77 Johanneshov\r\nSverige'),
(1707, 265, '_adress', 'field_644a7078734bb'),
(1708, 265, 'karta', 'a:12:{s:7:"address";s:45:"Axvallsvägen 45, 121 50 Johanneshov, Sverige";s:3:"lat";d:59.29426167704777839162488817237317562103271484375;s:3:"lng";d:18.114947282275384310423760325647890567779541015625;s:4:"zoom";i:14;s:8:"place_id";s:27:"ChIJh-Rcij94X0YR5WwsgpUSXfs";s:13:"street_number";s:2:"45";s:11:"street_name";s:13:"Axvallsvägen";s:4:"city";s:11:"Johanneshov";s:5:"state";s:15:"Stockholms län";s:9:"post_code";s:6:"121 50";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}'),
(1709, 265, '_karta', 'field_644a70a5734bc'),
(1710, 270, 'butikens_namn', 'Butik 1'),
(1711, 270, '_butikens_namn', 'field_644a6c7d4450e'),
(1712, 270, 'adress', 'Arenavägen 35\r\n121 77 Johanneshov\r\nSverige'),
(1713, 270, '_adress', 'field_644a7078734bb'),
(1714, 270, 'karta', 'a:13:{s:7:"address";s:36:"Arenavägen 35, Johanneshov, Sverige";s:3:"lat";d:59.29488690000000161717252922244369983673095703125;s:3:"lng";d:18.079756700000000790851117926649749279022216796875;s:4:"zoom";i:14;s:8:"place_id";s:27:"ChIJTcxV1CZ4X0YRopYm6PCehP8";s:4:"name";s:14:"Arenavägen 35";s:13:"street_number";s:2:"35";s:11:"street_name";s:11:"Arenavägen";s:4:"city";s:11:"Johanneshov";s:5:"state";s:15:"Stockholms län";s:9:"post_code";s:6:"121 77";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}'),
(1715, 270, '_karta', 'field_644a70a5734bc'),
(1716, 271, 'butikens_namn', 'Butik 1'),
(1717, 271, '_butikens_namn', 'field_644a6c7d4450e'),
(1718, 271, 'adress', 'Arenavägen 35\r\n121 77 Johanneshov\r\nSverige'),
(1719, 271, '_adress', 'field_644a7078734bb'),
(1720, 271, 'karta', 'a:12:{s:7:"address";s:45:"Axvallsvägen 45, 121 50 Johanneshov, Sverige";s:3:"lat";d:59.29426167704777839162488817237317562103271484375;s:3:"lng";d:18.114947282275384310423760325647890567779541015625;s:4:"zoom";i:14;s:8:"place_id";s:27:"ChIJh-Rcij94X0YR5WwsgpUSXfs";s:13:"street_number";s:2:"45";s:11:"street_name";s:13:"Axvallsvägen";s:4:"city";s:11:"Johanneshov";s:5:"state";s:15:"Stockholms län";s:9:"post_code";s:6:"121 50";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}'),
(1721, 271, '_karta', 'field_644a70a5734bc'),
(1722, 272, 'butikens_namn', 'Butik 1'),
(1723, 272, '_butikens_namn', 'field_644a6c7d4450e'),
(1724, 272, 'adress', 'Arenavägen 35\r\n121 77 Johanneshov\r\nSverige'),
(1725, 272, '_adress', 'field_644a7078734bb'),
(1726, 272, 'karta', 'a:12:{s:7:"address";s:45:"Axvallsvägen 45, 121 50 Johanneshov, Sverige";s:3:"lat";d:59.29426167704777839162488817237317562103271484375;s:3:"lng";d:18.114947282275384310423760325647890567779541015625;s:4:"zoom";i:14;s:8:"place_id";s:27:"ChIJh-Rcij94X0YR5WwsgpUSXfs";s:13:"street_number";s:2:"45";s:11:"street_name";s:13:"Axvallsvägen";s:4:"city";s:11:"Johanneshov";s:5:"state";s:15:"Stockholms län";s:9:"post_code";s:6:"121 50";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1727, 272, '_karta', 'field_644a70a5734bc'),
(1728, 273, '_edit_lock', '1682600482:2'),
(1729, 274, '_edit_lock', '1682600540:2'),
(1730, 275, '_edit_lock', '1682600598:2'),
(1731, 265, '_wp_trash_meta_status', 'publish'),
(1732, 265, '_wp_trash_meta_time', '1682600762'),
(1733, 265, '_wp_desired_post_slug', 'den-fina-butiken-1'),
(1734, 276, '_edit_lock', '1683118207:2'),
(1735, 276, '_edit_last', '4'),
(1736, 276, 'butikens_namn', 'Tershine Stockholm'),
(1737, 276, '_butikens_namn', 'field_644a6c7d4450e'),
(1738, 276, 'adress', 'Arenavägen 35\r\n121 77 Johanneshov\r\nSverige'),
(1739, 276, '_adress', 'field_644a7078734bb'),
(1740, 276, 'karta', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:218:"https://www.google.com/maps/place/Arenav%C3%A4gen+35,+121+77+Johanneshov/@59.2948896,18.0771818,17z/data=!3m1!4b1!4m6!3m5!1s0x465f7826d455cc4d:0xff849ef0e82696a2!8m2!3d59.2948869!4d18.0797567!16s%2Fg%2F11c256wp4v?hl=sv";s:6:"target";s:0:"";}'),
(1741, 276, '_karta', 'field_6450f9b8469f8'),
(1742, 277, '_edit_lock', '1682600804:2'),
(1743, 276, '_wp_old_slug', 'hej-butik1'),
(1744, 278, '_edit_lock', '1683032044:4'),
(1745, 278, '_edit_last', '4'),
(1746, 278, 'butikens_namn', 'Tershine Göteborg'),
(1747, 278, '_butikens_namn', 'field_644a6c7d4450e'),
(1748, 278, 'adress', 'Örgrytevägen 5\r\n402 22 Göteborg\r\nSverige'),
(1749, 278, '_adress', 'field_644a7078734bb'),
(1750, 278, 'karta', 'a:16:{s:5:"title";s:0:"";s:3:"url";s:226:"https://www.google.com/maps/place/%C3%96rgrytev%C3%A4gen+5,+412+51+G%C3%B6teborg/@57.6967407,11.9893833,17z/data=!3m1!4b1!4m6!3m5!1s0x464ff39db6a83591:0x31b64f09f73188ad!8m2!3d57.6967379!4d11.9919582!16s%2Fg%2F11c2brsg3t?hl=sv";s:6:"target";s:0:"";s:7:"address";s:36:"Örgrytevägen 5, Göteborg, Sverige";s:3:"lat";s:10:"57.6967379";s:3:"lng";s:10:"11.9919582";s:4:"zoom";s:2:"14";s:8:"place_id";s:27:"ChIJkTWotp3zT0YRrYgx9wlPtjE";s:4:"name";s:16:"Örgrytevägen 5";s:13:"street_number";s:1:"5";s:11:"street_name";s:14:"Örgrytevägen";s:4:"city";s:9:"Göteborg";s:5:"state";s:23:"Västra Götalands län";s:9:"post_code";s:6:"412 51";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}'),
(1751, 278, '_karta', 'field_6450f9b8469f8'),
(1752, 279, '_edit_lock', '1683032465:4'),
(1753, 279, '_edit_last', '4'),
(1754, 279, 'butikens_namn', 'Tershine Jukkasjärvi'),
(1755, 279, '_butikens_namn', 'field_644a6c7d4450e'),
(1756, 279, 'adress', 'Marknadsvägen 63\r\n981 91 Jukkasjärvi\r\nSverige'),
(1757, 279, '_adress', 'field_644a7078734bb'),
(1758, 279, 'karta', 'a:16:{s:5:"title";s:0:"";s:3:"url";s:215:"https://www.google.com/maps/place/Marknadsv%C3%A4gen+63,+981+91+Jukkasj%C3%A4rvi/@67.850888,20.59545,16z/data=!4m6!3m5!1s0x45d0c79c37e70861:0x166db79a0ea806ec!8m2!3d67.8508881!4d20.5954498!16s%2Fg%2F11c0t904cl?hl=sv";s:6:"target";s:6:"_blank";s:7:"address";s:40:"Marknadsvägen 63, Jukkasjärvi, Sverige";s:3:"lat";s:10:"67.8508881";s:3:"lng";s:10:"20.5954498";s:4:"zoom";s:2:"14";s:8:"place_id";s:27:"ChIJYQjnN5zH0EUR7AaoDpq3bRY";s:4:"name";s:17:"Marknadsvägen 63";s:13:"street_number";s:2:"63";s:11:"street_name";s:14:"Marknadsvägen";s:4:"city";s:12:"Jukkasjärvi";s:5:"state";s:16:"Norrbottens län";s:9:"post_code";s:6:"981 91";s:7:"country";s:7:"Sverige";s:13:"country_short";s:2:"SE";}'),
(1759, 279, '_karta', 'field_6450f9b8469f8'),
(1760, 191, '_wp_page_template', 'default'),
(1761, 276, '_wp_old_slug', 'butik1'),
(1762, 284, '_edit_lock', '1682608835:2'),
(1763, 279, 'gata', 'Marknadsvägen 63'),
(1764, 279, '_gata', 'field_644a9a7ec7df0'),
(1765, 279, 'postnummer', '98191'),
(1766, 279, '_postnummer', 'field_644a9b09c7df1'),
(1767, 279, 'stad', 'Jukkasjärvi'),
(1768, 279, '_stad', 'field_644a9b2fc7df2'),
(1769, 279, 'land', 'Sverige'),
(1770, 279, '_land', 'field_644a9b3dc7df3'),
(1771, 278, 'gata', 'Örgrytevägen 5'),
(1772, 278, '_gata', 'field_644a9a7ec7df0'),
(1773, 278, 'postnummer', '41251'),
(1774, 278, '_postnummer', 'field_644a9b09c7df1'),
(1775, 278, 'stad', 'Göteborg'),
(1776, 278, '_stad', 'field_644a9b2fc7df2'),
(1777, 278, 'land', 'Sverige'),
(1778, 278, '_land', 'field_644a9b3dc7df3'),
(1779, 276, 'gata', 'Arenavägen 35'),
(1780, 276, '_gata', 'field_644a9a7ec7df0'),
(1781, 276, 'postnummer', '12177'),
(1782, 276, '_postnummer', 'field_644a9b09c7df1'),
(1783, 276, 'stad', 'Stockholm'),
(1784, 276, '_stad', 'field_644a9b2fc7df2'),
(1785, 276, 'land', 'Sverige'),
(1786, 276, '_land', 'field_644a9b3dc7df3'),
(1787, 262, '_wcpdf_packing_slip_date', '1682629263'),
(1788, 262, '_wcpdf_packing_slip_date_formatted', '2023-04-27 23:01:03'),
(1789, 262, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(1790, 262, '_wcpdf_invoice_display_date', 'invoice_date'),
(1791, 262, '_wcpdf_invoice_date', '1682629272'),
(1792, 262, '_wcpdf_invoice_date_formatted', '2023-04-27 23:01:12'),
(1793, 262, '_wcpdf_invoice_number', '1'),
(1794, 262, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:1;s:16:"formatted_number";s:1:"1";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:262;s:7:"padding";s:0:"";}'),
(1795, 262, '_edit_lock', '1682944870:2'),
(1796, 290, '_edit_lock', '1682668805:2'),
(1797, 183, '_wp_trash_meta_status', 'auto-draft'),
(1798, 183, '_wp_trash_meta_time', '1682942329'),
(1799, 183, '_wp_desired_post_slug', ''),
(1800, 168, '_wp_trash_meta_status', 'auto-draft'),
(1801, 168, '_wp_trash_meta_time', '1682942329'),
(1802, 168, '_wp_desired_post_slug', ''),
(1803, 167, '_wp_trash_meta_status', 'auto-draft'),
(1804, 167, '_wp_trash_meta_time', '1682942329'),
(1805, 167, '_wp_desired_post_slug', ''),
(1806, 95, '_wp_trash_meta_status', 'auto-draft'),
(1807, 95, '_wp_trash_meta_time', '1682942329'),
(1808, 95, '_wp_desired_post_slug', ''),
(1809, 65, '_wp_trash_meta_status', 'auto-draft'),
(1810, 65, '_wp_trash_meta_time', '1682942329'),
(1811, 65, '_wp_desired_post_slug', ''),
(1812, 64, '_wp_trash_meta_status', 'auto-draft'),
(1813, 64, '_wp_trash_meta_time', '1682942329'),
(1814, 64, '_wp_desired_post_slug', ''),
(1815, 291, '_order_key', 'wc_order_pNYhPRUcniIaX'),
(1816, 291, '_customer_user', '2'),
(1817, 291, '_payment_method', 'klarna_payments'),
(1818, 291, '_payment_method_title', 'Klarna'),
(1819, 291, '_customer_ip_address', '::1'),
(1820, 291, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(1821, 291, '_created_via', 'checkout'),
(1822, 291, '_cart_hash', 'b81d592464147829f37286f37ffc3c76'),
(1823, 291, '_download_permissions_granted', 'yes'),
(1824, 291, '_recorded_sales', 'yes'),
(1825, 291, '_recorded_coupon_usage_counts', 'yes'),
(1826, 291, '_new_order_email_sent', 'true') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1827, 291, '_order_stock_reduced', 'yes'),
(1828, 291, '_billing_first_name', 'Elin'),
(1829, 291, '_billing_last_name', 'Robertsson'),
(1830, 291, '_billing_address_1', 'Någongata 1337'),
(1831, 291, '_billing_city', 'Någon stad'),
(1832, 291, '_billing_postcode', '12345'),
(1833, 291, '_billing_country', 'SE'),
(1834, 291, '_billing_email', 'elin.robertsson@medieinstitutet.e'),
(1835, 291, '_billing_phone', '0700000000'),
(1836, 291, '_shipping_first_name', 'Elin'),
(1837, 291, '_shipping_last_name', 'Robertsson'),
(1838, 291, '_shipping_address_1', 'Någongata 1337'),
(1839, 291, '_shipping_city', 'Någon stad'),
(1840, 291, '_shipping_postcode', '12345'),
(1841, 291, '_shipping_country', 'SE'),
(1842, 291, '_order_currency', 'SEK'),
(1843, 291, '_cart_discount', '0'),
(1844, 291, '_cart_discount_tax', '0'),
(1845, 291, '_order_shipping', '0'),
(1846, 291, '_order_shipping_tax', '0'),
(1847, 291, '_order_tax', '321'),
(1848, 291, '_order_total', '1605.00'),
(1849, 291, '_order_version', '7.6.0'),
(1850, 291, '_prices_include_tax', 'yes'),
(1851, 291, '_billing_address_index', 'Elin Robertsson  Någongata 1337  Någon stad  12345 SE elin.robertsson@medieinstitutet.e 0700000000'),
(1852, 291, '_shipping_address_index', 'Elin Robertsson  Någongata 1337  Någon stad  12345 SE '),
(1853, 291, 'is_vat_exempt', 'no'),
(1854, 291, '_wc_klarna_environment', 'test'),
(1855, 291, '_wc_klarna_country', 'SE'),
(1856, 291, '_kp_session_id', '78bde68c-4809-50c9-a317-98b6a7052295'),
(1857, 291, '_transaction_id', '7d9e62a0-1ccc-4b2e-834d-6fbfccea9357'),
(1858, 291, '_date_paid', '1682944735'),
(1859, 291, '_paid_date', '2023-05-01 14:38:55'),
(1860, 291, '_wc_klarna_order_id', '7d9e62a0-1ccc-4b2e-834d-6fbfccea9357'),
(1866, 291, '_edit_lock', '1682944765:2'),
(1867, 291, '_edit_last', '2'),
(1868, 291, '_wp_trash_meta_status', 'wc-processing'),
(1869, 291, '_wp_trash_meta_time', '1682944935'),
(1870, 291, '_wp_desired_post_slug', 'bestallning-1-may-2023-kmonday-1238'),
(1871, 291, '_wp_trash_meta_comments_status', 'a:4:{i:6;s:1:"1";i:7;s:1:"1";i:8;s:1:"1";i:9;s:1:"1";}'),
(1872, 262, '_edit_last', '2'),
(1873, 262, '_date_completed', '1682944978'),
(1874, 262, '_completed_date', '2023-05-01 14:42:58'),
(1875, 293, '_order_key', 'wc_order_Ug7mzE5uNJtyI'),
(1876, 293, '_customer_user', '3'),
(1877, 293, '_payment_method', 'klarna_payments'),
(1878, 293, '_payment_method_title', 'Klarna'),
(1879, 293, '_customer_ip_address', '::1'),
(1880, 293, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(1881, 293, '_created_via', 'checkout'),
(1882, 293, '_cart_hash', 'adcc020e8c9c8abfbeafc705595bb99e'),
(1883, 293, '_download_permissions_granted', 'yes'),
(1884, 293, '_recorded_sales', 'yes'),
(1885, 293, '_recorded_coupon_usage_counts', 'no'),
(1886, 293, '_new_order_email_sent', 'true'),
(1887, 293, '_order_stock_reduced', 'no'),
(1888, 293, '_billing_first_name', 'Elin'),
(1889, 293, '_billing_last_name', 'Robertsson'),
(1890, 293, '_billing_address_1', 'Någongata 1337'),
(1891, 293, '_billing_city', 'Någon stad'),
(1892, 293, '_billing_postcode', '12345'),
(1893, 293, '_billing_country', 'SE'),
(1894, 293, '_billing_email', 'elin.robertsson@medieinstitutet.se'),
(1895, 293, '_billing_phone', '0700000000'),
(1896, 293, '_shipping_first_name', 'Elin'),
(1897, 293, '_shipping_last_name', 'Robertsson'),
(1898, 293, '_shipping_address_1', 'Någongata 1337'),
(1899, 293, '_shipping_city', 'Någon stad'),
(1900, 293, '_shipping_postcode', '12345'),
(1901, 293, '_shipping_country', 'SE'),
(1902, 293, '_order_currency', 'SEK'),
(1903, 293, '_cart_discount', '0'),
(1904, 293, '_cart_discount_tax', '0'),
(1905, 293, '_order_shipping', '0'),
(1906, 293, '_order_shipping_tax', '0'),
(1907, 293, '_order_tax', '244.8'),
(1908, 293, '_order_total', '1224.00'),
(1909, 293, '_order_version', '7.6.0'),
(1910, 293, '_prices_include_tax', 'yes'),
(1911, 293, '_billing_address_index', 'Elin Robertsson  Någongata 1337  Någon stad  12345 SE elin.robertsson@medieinstitutet.se 0700000000'),
(1912, 293, '_shipping_address_index', 'Elin Robertsson  Någongata 1337  Någon stad  12345 SE '),
(1913, 293, 'is_vat_exempt', 'no'),
(1914, 293, '_wc_klarna_environment', 'test'),
(1915, 293, '_wc_klarna_country', 'SE'),
(1916, 293, '_kp_session_id', '0dbd7967-8738-5197-9523-dc9b95b02514'),
(1917, 293, '_transaction_id', 'fa52bf60-b2ef-45e5-bb60-fd9b1bdf0367'),
(1918, 293, '_date_paid', '1682945282'),
(1919, 293, '_paid_date', '2023-05-01 14:48:02'),
(1920, 293, '_wc_klarna_order_id', 'fa52bf60-b2ef-45e5-bb60-fd9b1bdf0367'),
(1927, 293, '_edit_lock', '1682945213:3'),
(1928, 293, '_edit_last', '3'),
(1933, 56, '_price', '298'),
(1934, 56, '_price', '1498'),
(1935, 261, '_edit_lock', '1682955226:3'),
(1936, 294, '_edit_lock', '1682955373:3'),
(1937, 295, '_edit_lock', '1683024526:2'),
(1938, 296, '_edit_lock', '1683025864:2'),
(1939, 298, '_order_key', 'wc_order_lZaGrATRAUxlG'),
(1940, 298, '_customer_user', '4'),
(1941, 298, '_payment_method', 'klarna_payments') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1942, 298, '_payment_method_title', 'Klarna'),
(1943, 298, '_customer_ip_address', '::1'),
(1944, 298, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(1945, 298, '_created_via', 'checkout'),
(1946, 298, '_cart_hash', '4d6ccf0ee79e052fb469bf2f2a3e2b9b'),
(1947, 298, '_download_permissions_granted', 'yes'),
(1948, 298, '_recorded_sales', 'yes'),
(1949, 298, '_recorded_coupon_usage_counts', 'yes'),
(1950, 298, '_new_order_email_sent', 'true'),
(1951, 298, '_order_stock_reduced', 'yes'),
(1952, 298, '_billing_first_name', 'Linus'),
(1953, 298, '_billing_last_name', 'Lundell'),
(1954, 298, '_billing_address_1', 'Madvägen 12'),
(1955, 298, '_billing_city', 'Ronneby'),
(1956, 298, '_billing_postcode', '37273'),
(1957, 298, '_billing_country', 'SE'),
(1958, 298, '_billing_email', 'linus.lundell@medieinstitutet.se'),
(1959, 298, '_billing_phone', '0706666666'),
(1960, 298, '_shipping_first_name', 'Linus'),
(1961, 298, '_shipping_last_name', 'Lundell'),
(1962, 298, '_shipping_address_1', 'Madvägen 12'),
(1963, 298, '_shipping_city', 'Ronneby'),
(1964, 298, '_shipping_postcode', '37273'),
(1965, 298, '_shipping_country', 'SE'),
(1966, 298, '_order_currency', 'SEK'),
(1967, 298, '_cart_discount', '80'),
(1968, 298, '_cart_discount_tax', '20'),
(1969, 298, '_order_shipping', '0'),
(1970, 298, '_order_shipping_tax', '0'),
(1971, 298, '_order_tax', '478'),
(1972, 298, '_order_total', '2390.00'),
(1973, 298, '_order_version', '7.6.0'),
(1974, 298, '_prices_include_tax', 'yes'),
(1975, 298, '_billing_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE linus.lundell@medieinstitutet.se 0706666666'),
(1976, 298, '_shipping_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE '),
(1977, 298, 'is_vat_exempt', 'no'),
(1978, 298, '_wc_klarna_environment', 'test'),
(1979, 298, '_wc_klarna_country', 'SE'),
(1980, 298, '_kp_session_id', '5ab440b2-0c73-5dec-bc86-a282da8de6b1'),
(1981, 298, '_transaction_id', 'b83a4575-59db-4a6c-a404-3f91320e0362'),
(1982, 298, '_date_paid', '1683026498'),
(1983, 298, '_paid_date', '2023-05-02 13:21:38'),
(1984, 257, '_used_by', '4'),
(1985, 298, '_wc_klarna_order_id', 'b83a4575-59db-4a6c-a404-3f91320e0362'),
(1989, 83, '_price', '259'),
(1990, 83, '_price', '349'),
(1991, 298, '_edit_lock', '1683027966:4'),
(1992, 298, '_edit_last', '4'),
(1993, 298, '_date_completed', '1683026893'),
(1994, 298, '_completed_date', '2023-05-02 13:28:13'),
(1995, 298, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(1996, 298, '_wcpdf_invoice_display_date', 'invoice_date'),
(1997, 298, '_wcpdf_invoice_date', '1683026893'),
(1998, 298, '_wcpdf_invoice_date_formatted', '2023-05-02 13:28:13'),
(1999, 298, '_wcpdf_invoice_number', '2'),
(2000, 298, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:2;s:16:"formatted_number";s:1:"2";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:298;s:7:"padding";s:0:"";}'),
(2001, 296, '_wp_trash_meta_status', 'draft'),
(2002, 296, '_wp_trash_meta_time', '1683027572'),
(2003, 296, '_wp_desired_post_slug', ''),
(2004, 300, '_edit_lock', '1683028561:4'),
(2005, 301, '_menu_item_type', 'taxonomy'),
(2006, 301, '_menu_item_menu_item_parent', '0'),
(2007, 301, '_menu_item_object_id', '18'),
(2008, 301, '_menu_item_object', 'product_cat'),
(2009, 301, '_menu_item_target', ''),
(2010, 301, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2011, 301, '_menu_item_xfn', ''),
(2012, 301, '_menu_item_url', ''),
(2014, 302, '_menu_item_type', 'taxonomy'),
(2015, 302, '_menu_item_menu_item_parent', '0'),
(2016, 302, '_menu_item_object_id', '16'),
(2017, 302, '_menu_item_object', 'product_cat'),
(2018, 302, '_menu_item_target', ''),
(2019, 302, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2020, 302, '_menu_item_xfn', ''),
(2021, 302, '_menu_item_url', ''),
(2023, 303, '_menu_item_type', 'taxonomy'),
(2024, 303, '_menu_item_menu_item_parent', '0'),
(2025, 303, '_menu_item_object_id', '17'),
(2026, 303, '_menu_item_object', 'product_cat'),
(2027, 303, '_menu_item_target', ''),
(2028, 303, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2029, 303, '_menu_item_xfn', ''),
(2030, 303, '_menu_item_url', ''),
(2032, 304, '_menu_item_type', 'taxonomy'),
(2033, 304, '_menu_item_menu_item_parent', '0'),
(2034, 304, '_menu_item_object_id', '19'),
(2035, 304, '_menu_item_object', 'product_cat'),
(2036, 304, '_menu_item_target', ''),
(2037, 304, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2038, 304, '_menu_item_xfn', ''),
(2039, 304, '_menu_item_url', ''),
(2041, 305, '_edit_lock', '1683036957:4'),
(2042, 305, '_edit_last', '4'),
(2043, 305, 'butikens_namn', 'Tershine Borgholm'),
(2044, 305, '_butikens_namn', 'field_644a6c7d4450e'),
(2045, 305, 'gata', 'Sollidenvägen 5'),
(2046, 305, '_gata', 'field_644a9a7ec7df0'),
(2047, 305, 'postnummer', '38794'),
(2048, 305, '_postnummer', 'field_644a9b09c7df1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2049, 305, 'stad', 'Borgholm'),
(2050, 305, '_stad', 'field_644a9b2fc7df2'),
(2051, 305, 'land', 'Sverige'),
(2052, 305, '_land', 'field_644a9b3dc7df3'),
(2053, 305, 'karta', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:176:"https://www.google.com/maps/place/Borgholms+Slott/@56.8705404,16.6434598,15z/data=!4m6!3m5!1s0x4657dfb84195337b:0x6c61bf83efde7290!8m2!3d56.8705404!4d16.6434598!16zL20vMGQxcmpo";s:6:"target";s:0:"";}'),
(2054, 305, '_karta', 'field_6450f9b8469f8'),
(2055, 306, '_edit_lock', '1683118173:2'),
(2056, 306, '_edit_last', '4'),
(2057, 306, 'butikens_namn', 'Tershine Malmö'),
(2058, 306, '_butikens_namn', 'field_644a6c7d4450e'),
(2059, 306, 'gata', 'Storgatan 43'),
(2060, 306, '_gata', 'field_644a9a7ec7df0'),
(2061, 306, 'postnummer', '21142'),
(2062, 306, '_postnummer', 'field_644a9b09c7df1'),
(2063, 306, 'stad', 'Malmö'),
(2064, 306, '_stad', 'field_644a9b2fc7df2'),
(2065, 306, 'land', 'Sverige'),
(2066, 306, '_land', 'field_644a9b3dc7df3'),
(2067, 306, 'karta', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:187:"https://www.google.com/maps/place/Turning+Torso/@55.6141832,12.9762957,17z/data=!3m1!4b1!4m6!3m5!1s0x4653a1bfc2717cdd:0x7230834e6cfe925d!8m2!3d55.6141832!4d12.9762957!16s%2Fg%2F11hdvwfm7s";s:6:"target";s:0:"";}'),
(2068, 306, '_karta', 'field_6450f9b8469f8'),
(2069, 307, '_menu_item_type', 'post_type'),
(2070, 307, '_menu_item_menu_item_parent', '0'),
(2071, 307, '_menu_item_object_id', '197'),
(2072, 307, '_menu_item_object', 'page'),
(2073, 307, '_menu_item_target', ''),
(2074, 307, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2075, 307, '_menu_item_xfn', ''),
(2076, 307, '_menu_item_url', ''),
(2078, 308, '_menu_item_type', 'post_type'),
(2079, 308, '_menu_item_menu_item_parent', '0'),
(2080, 308, '_menu_item_object_id', '184'),
(2081, 308, '_menu_item_object', 'page'),
(2082, 308, '_menu_item_target', ''),
(2083, 308, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2084, 308, '_menu_item_xfn', ''),
(2085, 308, '_menu_item_url', ''),
(2087, 309, '_menu_item_type', 'post_type'),
(2088, 309, '_menu_item_menu_item_parent', '0'),
(2089, 309, '_menu_item_object_id', '191'),
(2090, 309, '_menu_item_object', 'page'),
(2091, 309, '_menu_item_target', ''),
(2092, 309, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2093, 309, '_menu_item_xfn', ''),
(2094, 309, '_menu_item_url', ''),
(2096, 310, '_menu_item_type', 'post_type'),
(2097, 310, '_menu_item_menu_item_parent', '0'),
(2098, 310, '_menu_item_object_id', '47'),
(2099, 310, '_menu_item_object', 'page'),
(2100, 310, '_menu_item_target', ''),
(2101, 310, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2102, 310, '_menu_item_xfn', ''),
(2103, 310, '_menu_item_url', ''),
(2105, 311, '_menu_item_type', 'post_type'),
(2106, 311, '_menu_item_menu_item_parent', '0'),
(2107, 311, '_menu_item_object_id', '193'),
(2108, 311, '_menu_item_object', 'page'),
(2109, 311, '_menu_item_target', ''),
(2110, 311, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2111, 311, '_menu_item_xfn', ''),
(2112, 311, '_menu_item_url', ''),
(2114, 312, '_menu_item_type', 'post_type'),
(2115, 312, '_menu_item_menu_item_parent', '0'),
(2116, 312, '_menu_item_object_id', '46'),
(2117, 312, '_menu_item_object', 'page'),
(2118, 312, '_menu_item_target', ''),
(2119, 312, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2120, 312, '_menu_item_xfn', ''),
(2121, 312, '_menu_item_url', ''),
(2122, 313, '_edit_lock', '1683054114:2'),
(2123, 313, '_edit_last', '2'),
(2124, 313, 'discount_type', 'fixed_cart'),
(2125, 313, 'coupon_amount', '0'),
(2126, 313, 'individual_use', 'no'),
(2127, 313, 'usage_limit', '0'),
(2128, 313, 'usage_limit_per_user', '0'),
(2129, 313, 'limit_usage_to_x_items', '0'),
(2130, 313, 'usage_count', '0'),
(2131, 313, 'date_expires', NULL),
(2132, 313, 'free_shipping', 'yes'),
(2133, 313, 'exclude_sale_items', 'no'),
(2134, 313, 'minimum_amount', '299'),
(2135, 315, '_order_key', 'wc_order_C6KLuRHUJYpCu'),
(2136, 315, '_customer_user', '1'),
(2137, 315, '_payment_method', 'klarna_payments'),
(2138, 315, '_payment_method_title', 'Klarna'),
(2139, 315, '_customer_ip_address', '::1'),
(2140, 315, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2141, 315, '_created_via', 'checkout'),
(2142, 315, '_cart_hash', 'ac9c29bc1bcef2d003578d427e0588cc'),
(2143, 315, '_download_permissions_granted', 'yes'),
(2144, 315, '_recorded_sales', 'yes'),
(2145, 315, '_recorded_coupon_usage_counts', 'yes'),
(2146, 315, '_new_order_email_sent', 'true'),
(2147, 315, '_order_stock_reduced', 'yes'),
(2148, 315, '_billing_first_name', 'Sandra'),
(2149, 315, '_billing_last_name', 'Höst Kannerberg'),
(2150, 315, '_billing_address_1', 'Statsgatan 1'),
(2151, 315, '_billing_city', 'I staden'),
(2152, 315, '_billing_postcode', '12488'),
(2153, 315, '_billing_country', 'SE') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2154, 315, '_billing_email', 'sandra.hostkannerberg@medieinstitutet.se'),
(2155, 315, '_billing_phone', '0701231233'),
(2156, 315, '_shipping_first_name', 'Sandra'),
(2157, 315, '_shipping_last_name', 'Höst Kannerberg'),
(2158, 315, '_shipping_address_1', 'Statsgatan 1'),
(2159, 315, '_shipping_city', 'I staden'),
(2160, 315, '_shipping_postcode', '12488'),
(2161, 315, '_shipping_country', 'SE'),
(2162, 315, '_order_currency', 'SEK'),
(2163, 315, '_cart_discount', '80'),
(2164, 315, '_cart_discount_tax', '20'),
(2165, 315, '_order_shipping', '0'),
(2166, 315, '_order_shipping_tax', '0'),
(2167, 315, '_order_tax', '151'),
(2168, 315, '_order_total', '755.00'),
(2169, 315, '_order_version', '7.6.0'),
(2170, 315, '_prices_include_tax', 'yes'),
(2171, 315, '_billing_address_index', 'Sandra Höst Kannerberg  Statsgatan 1  I staden  12488 SE sandra.hostkannerberg@medieinstitutet.se 0701231233'),
(2172, 315, '_shipping_address_index', 'Sandra Höst Kannerberg  Statsgatan 1  I staden  12488 SE '),
(2173, 315, 'is_vat_exempt', 'no'),
(2174, 315, '_wc_klarna_environment', 'test'),
(2175, 315, '_wc_klarna_country', 'SE'),
(2176, 315, '_kp_session_id', 'ebbf1b6f-511f-5b0c-b74e-f9c4d53e85e7'),
(2177, 315, '_transaction_id', '11ca38da-3282-4571-be3a-6e485616d910'),
(2178, 315, '_date_paid', '1683055046'),
(2179, 315, '_paid_date', '2023-05-02 21:17:26'),
(2180, 257, '_used_by', '1'),
(2181, 315, '_wc_klarna_order_id', '11ca38da-3282-4571-be3a-6e485616d910'),
(2185, 79, '_price', '498'),
(2186, 315, '_edit_lock', '1683055463:4'),
(2187, 315, '_edit_last', '1'),
(2188, 315, '_date_completed', '1683055119'),
(2189, 315, '_completed_date', '2023-05-02 21:18:39'),
(2190, 315, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2191, 315, '_wcpdf_invoice_display_date', 'invoice_date'),
(2192, 315, '_wcpdf_invoice_date', '1683055119'),
(2193, 315, '_wcpdf_invoice_date_formatted', '2023-05-02 21:18:39'),
(2194, 315, '_wcpdf_invoice_number', '3'),
(2195, 315, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:3;s:16:"formatted_number";s:1:"3";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:315;s:7:"padding";s:0:"";}'),
(2196, 316, '_order_key', 'wc_order_EcVuoBKgQ7FXv'),
(2197, 316, '_customer_user', '1'),
(2198, 316, '_payment_method', 'klarna_payments'),
(2199, 316, '_payment_method_title', 'Klarna'),
(2200, 316, '_customer_ip_address', '::1'),
(2201, 316, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2202, 316, '_created_via', 'checkout'),
(2203, 316, '_cart_hash', '40ba2247ea31ebf9f70f7cae077e8e08'),
(2204, 316, '_download_permissions_granted', 'yes'),
(2205, 316, '_recorded_sales', 'yes'),
(2206, 316, '_recorded_coupon_usage_counts', 'yes'),
(2207, 316, '_new_order_email_sent', 'true'),
(2208, 316, '_order_stock_reduced', 'yes'),
(2209, 316, '_billing_first_name', 'Sandra'),
(2210, 316, '_billing_last_name', 'Höst Kannerberg'),
(2211, 316, '_billing_address_1', 'Statsgatan 1'),
(2212, 316, '_billing_city', 'I staden'),
(2213, 316, '_billing_postcode', '12488'),
(2214, 316, '_billing_country', 'SE'),
(2215, 316, '_billing_email', 'sandra.hostkannerberg@medieinstitutet.se'),
(2216, 316, '_billing_phone', '0701231233'),
(2217, 316, '_shipping_first_name', 'Sandra'),
(2218, 316, '_shipping_last_name', 'Höst Kannerberg'),
(2219, 316, '_shipping_address_1', 'Statsgatan 1'),
(2220, 316, '_shipping_city', 'I staden'),
(2221, 316, '_shipping_postcode', '12488'),
(2222, 316, '_shipping_country', 'SE'),
(2223, 316, '_order_currency', 'SEK'),
(2224, 316, '_cart_discount', '0'),
(2225, 316, '_cart_discount_tax', '0'),
(2226, 316, '_order_shipping', '49'),
(2227, 316, '_order_shipping_tax', '12.25'),
(2228, 316, '_order_tax', '39.8'),
(2229, 316, '_order_total', '260.25'),
(2230, 316, '_order_version', '7.6.0'),
(2231, 316, '_prices_include_tax', 'yes'),
(2232, 316, '_billing_address_index', 'Sandra Höst Kannerberg  Statsgatan 1  I staden  12488 SE sandra.hostkannerberg@medieinstitutet.se 0701231233'),
(2233, 316, '_shipping_address_index', 'Sandra Höst Kannerberg  Statsgatan 1  I staden  12488 SE '),
(2234, 316, 'is_vat_exempt', 'no'),
(2235, 316, '_wc_klarna_environment', 'test'),
(2236, 316, '_wc_klarna_country', 'SE'),
(2237, 316, '_kp_session_id', 'b2be3985-f386-5a4b-96ec-e2fa59449fd3'),
(2238, 316, '_transaction_id', '8240ceb6-e68b-4e65-a55a-901f8fd2735c'),
(2239, 316, '_date_paid', '1683055271'),
(2240, 316, '_paid_date', '2023-05-02 21:21:11'),
(2241, 316, '_wc_klarna_order_id', '8240ceb6-e68b-4e65-a55a-901f8fd2735c'),
(2242, 316, '_edit_lock', '1683055306:1'),
(2243, 316, '_edit_last', '1'),
(2244, 316, '_date_completed', '1683055385'),
(2245, 316, '_completed_date', '2023-05-02 21:23:05'),
(2246, 316, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2247, 316, '_wcpdf_invoice_display_date', 'invoice_date'),
(2248, 316, '_wcpdf_invoice_date', '1683055385'),
(2249, 316, '_wcpdf_invoice_date_formatted', '2023-05-02 21:23:05'),
(2250, 316, '_wcpdf_invoice_number', '4'),
(2251, 316, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:4;s:16:"formatted_number";s:1:"4";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:316;s:7:"padding";s:0:"";}'),
(2252, 317, '_order_key', 'wc_order_eA4Vvu6FKDVuH'),
(2253, 317, '_customer_user', '4'),
(2254, 317, '_payment_method', 'cod'),
(2255, 317, '_payment_method_title', 'Betala vid leverans'),
(2256, 317, '_customer_ip_address', '::1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2257, 317, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2258, 317, '_created_via', 'checkout'),
(2259, 317, '_cart_hash', '68d58316f1f600c3b94bef839c8957a6'),
(2260, 317, '_download_permissions_granted', 'yes'),
(2261, 317, '_recorded_sales', 'yes'),
(2262, 317, '_recorded_coupon_usage_counts', 'yes'),
(2263, 317, '_new_order_email_sent', 'true'),
(2264, 317, '_order_stock_reduced', 'yes'),
(2265, 317, '_billing_first_name', 'Linus'),
(2266, 317, '_billing_last_name', 'Lundell'),
(2267, 317, '_billing_address_1', 'Madvägen 12'),
(2268, 317, '_billing_city', 'Ronneby'),
(2269, 317, '_billing_postcode', '37273'),
(2270, 317, '_billing_country', 'SE'),
(2271, 317, '_billing_email', 'linus.lundell@medieinstitutet.se'),
(2272, 317, '_billing_phone', '0706666666'),
(2273, 317, '_shipping_first_name', 'Linus'),
(2274, 317, '_shipping_last_name', 'Lundell'),
(2275, 317, '_shipping_address_1', 'Madvägen 12'),
(2276, 317, '_shipping_city', 'Ronneby'),
(2277, 317, '_shipping_postcode', '37273'),
(2278, 317, '_shipping_country', 'SE'),
(2279, 317, '_order_currency', 'SEK'),
(2280, 317, '_cart_discount', '0'),
(2281, 317, '_cart_discount_tax', '0'),
(2282, 317, '_order_shipping', '0'),
(2283, 317, '_order_shipping_tax', '0'),
(2284, 317, '_order_tax', '129.4'),
(2285, 317, '_order_total', '647.00'),
(2286, 317, '_order_version', '7.6.0'),
(2287, 317, '_prices_include_tax', 'yes'),
(2288, 317, '_billing_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE linus.lundell@medieinstitutet.se 0706666666'),
(2289, 317, '_shipping_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE '),
(2290, 317, 'is_vat_exempt', 'no'),
(2291, 51, '_price', '249'),
(2292, 51, '_price', '1298'),
(2293, 317, '_edit_lock', '1683055998:4'),
(2294, 317, '_edit_last', '4'),
(2295, 317, '_date_completed', '1683055833'),
(2296, 317, '_date_paid', '1683055626'),
(2297, 317, '_paid_date', '2023-05-02 21:27:06'),
(2298, 317, '_completed_date', '2023-05-02 21:30:33'),
(2299, 317, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2300, 317, '_wcpdf_invoice_display_date', 'invoice_date'),
(2301, 317, '_wcpdf_invoice_date', '1683055626'),
(2302, 317, '_wcpdf_invoice_date_formatted', '2023-05-02 21:27:06'),
(2303, 317, '_wcpdf_invoice_number', '5'),
(2304, 317, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:5;s:16:"formatted_number";s:1:"5";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:317;s:7:"padding";s:0:"";}'),
(2305, 318, '_order_currency', 'SEK'),
(2306, 318, '_cart_discount', '0'),
(2307, 318, '_cart_discount_tax', '0'),
(2308, 318, '_order_shipping', '0'),
(2309, 318, '_order_shipping_tax', '0'),
(2310, 318, '_order_tax', '-9.8'),
(2311, 318, '_order_total', '-49.00'),
(2312, 318, '_order_version', '7.6.0'),
(2313, 318, '_prices_include_tax', 'yes'),
(2314, 318, '_refund_amount', '49.00'),
(2315, 318, '_refunded_by', '4'),
(2316, 318, '_refunded_payment', ''),
(2317, 318, '_refund_reason', ''),
(2318, 319, '_order_currency', 'SEK'),
(2319, 319, '_cart_discount', '0'),
(2320, 319, '_cart_discount_tax', '0'),
(2321, 319, '_order_shipping', '0'),
(2322, 319, '_order_shipping_tax', '0'),
(2323, 319, '_order_tax', '0'),
(2324, 319, '_order_total', '-598.00'),
(2325, 319, '_order_version', '7.6.0'),
(2326, 319, '_prices_include_tax', 'yes'),
(2327, 319, '_refund_amount', '598'),
(2328, 319, '_refunded_by', '4'),
(2329, 319, '_refunded_payment', ''),
(2330, 319, '_refund_reason', 'Beställningen är återbetald till fullo.'),
(2331, 320, '_order_key', 'wc_order_gxS0oyn9xtQ9m'),
(2332, 320, '_customer_user', '4'),
(2333, 320, '_payment_method', 'klarna_payments'),
(2334, 320, '_payment_method_title', 'Klarna'),
(2335, 320, '_customer_ip_address', '::1'),
(2336, 320, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2337, 320, '_created_via', 'checkout'),
(2338, 320, '_cart_hash', '6a144bb9e21ff9f96f025d79665dcc77'),
(2339, 320, '_download_permissions_granted', 'yes'),
(2340, 320, '_recorded_sales', 'yes'),
(2341, 320, '_recorded_coupon_usage_counts', 'yes'),
(2342, 320, '_new_order_email_sent', 'true'),
(2343, 320, '_order_stock_reduced', 'yes'),
(2344, 320, '_billing_first_name', 'Linus'),
(2345, 320, '_billing_last_name', 'Lundell'),
(2346, 320, '_billing_address_1', 'Madvägen 12'),
(2347, 320, '_billing_city', 'Ronneby'),
(2348, 320, '_billing_postcode', '37273'),
(2349, 320, '_billing_country', 'SE'),
(2350, 320, '_billing_email', 'linus.lundell@medieinstitutet.se'),
(2351, 320, '_billing_phone', '0706666666'),
(2352, 320, '_shipping_first_name', 'Linus'),
(2353, 320, '_shipping_last_name', 'Lundell'),
(2354, 320, '_shipping_address_1', 'Madvägen 12'),
(2355, 320, '_shipping_city', 'Ronneby'),
(2356, 320, '_shipping_postcode', '37273') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2357, 320, '_shipping_country', 'SE'),
(2358, 320, '_order_currency', 'SEK'),
(2359, 320, '_cart_discount', '0'),
(2360, 320, '_cart_discount_tax', '0'),
(2361, 320, '_order_shipping', '0'),
(2362, 320, '_order_shipping_tax', '0'),
(2363, 320, '_order_tax', '118.6'),
(2364, 320, '_order_total', '593.00'),
(2365, 320, '_order_version', '7.6.0'),
(2366, 320, '_prices_include_tax', 'yes'),
(2367, 320, '_billing_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE linus.lundell@medieinstitutet.se 0706666666'),
(2368, 320, '_shipping_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE '),
(2369, 320, 'is_vat_exempt', 'no'),
(2370, 320, '_wc_klarna_environment', 'test'),
(2371, 320, '_wc_klarna_country', 'SE'),
(2372, 320, '_kp_session_id', 'e7b10aad-4d3b-5b2d-85bf-dcf0ab52e822'),
(2373, 320, '_transaction_id', 'e55b879c-6829-43f7-b7f7-488251a03a4c'),
(2374, 320, '_date_paid', '1683056080'),
(2375, 320, '_paid_date', '2023-05-02 21:34:40'),
(2376, 320, '_wc_klarna_order_id', 'e55b879c-6829-43f7-b7f7-488251a03a4c'),
(2380, 98, '_price', '179'),
(2381, 98, '_price', '898'),
(2382, 321, '_order_key', 'wc_order_1qaRtaq1O8e8m'),
(2383, 321, '_customer_user', '4'),
(2384, 321, '_payment_method', 'cod'),
(2385, 321, '_payment_method_title', 'Betala vid leverans'),
(2386, 321, '_customer_ip_address', '::1'),
(2387, 321, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2388, 321, '_created_via', 'checkout'),
(2389, 321, '_cart_hash', 'affaf0cbf2383018f710f095a4752635'),
(2390, 321, '_download_permissions_granted', 'yes'),
(2391, 321, '_recorded_sales', 'yes'),
(2392, 321, '_recorded_coupon_usage_counts', 'yes'),
(2393, 321, '_new_order_email_sent', 'true'),
(2394, 321, '_order_stock_reduced', 'yes'),
(2395, 321, '_billing_first_name', 'Linus'),
(2396, 321, '_billing_last_name', 'Lundell'),
(2397, 321, '_billing_address_1', 'Madvägen 12'),
(2398, 321, '_billing_city', 'Ronneby'),
(2399, 321, '_billing_postcode', '37273'),
(2400, 321, '_billing_country', 'SE'),
(2401, 321, '_billing_email', 'linus.lundell@medieinstitutet.se'),
(2402, 321, '_billing_phone', '0706666666'),
(2403, 321, '_shipping_first_name', 'Linus'),
(2404, 321, '_shipping_last_name', 'Lundell'),
(2405, 321, '_shipping_address_1', 'Madvägen 12'),
(2406, 321, '_shipping_city', 'Ronneby'),
(2407, 321, '_shipping_postcode', '37273'),
(2408, 321, '_shipping_country', 'SE'),
(2409, 321, '_order_currency', 'SEK'),
(2410, 321, '_cart_discount', '0'),
(2411, 321, '_cart_discount_tax', '0'),
(2412, 321, '_order_shipping', '49'),
(2413, 321, '_order_shipping_tax', '12.25'),
(2414, 321, '_order_tax', '29.8'),
(2415, 321, '_order_total', '210.25'),
(2416, 321, '_order_version', '7.6.0'),
(2417, 321, '_prices_include_tax', 'yes'),
(2418, 321, '_billing_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE linus.lundell@medieinstitutet.se 0706666666'),
(2419, 321, '_shipping_address_index', 'Linus Lundell  Madvägen 12  Ronneby  37273 SE '),
(2420, 321, 'is_vat_exempt', 'no'),
(2421, 320, '_edit_lock', '1683108190:2'),
(2422, 322, '_order_currency', 'SEK'),
(2423, 322, '_cart_discount', '0'),
(2424, 322, '_cart_discount_tax', '0'),
(2425, 322, '_order_shipping', '0'),
(2426, 322, '_order_shipping_tax', '0'),
(2427, 322, '_order_tax', '-79'),
(2428, 322, '_order_total', '-395.00'),
(2429, 322, '_order_version', '7.6.0'),
(2430, 322, '_prices_include_tax', 'yes'),
(2431, 322, '_refund_amount', '395.00'),
(2432, 322, '_refunded_by', '4'),
(2433, 322, '_refunded_payment', ''),
(2434, 322, '_refund_reason', ''),
(2435, 68, '_price', '129'),
(2436, 68, '_price', '395'),
(2437, 68, '_price', '1695'),
(2438, 320, '_edit_last', '4'),
(2439, 320, '_date_completed', '1683056218'),
(2440, 320, '_completed_date', '2023-05-02 21:36:58'),
(2441, 320, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2442, 320, '_wcpdf_invoice_display_date', 'invoice_date'),
(2443, 320, '_wcpdf_invoice_date', '1683056218'),
(2444, 320, '_wcpdf_invoice_date_formatted', '2023-05-02 21:36:58'),
(2445, 320, '_wcpdf_invoice_number', '6'),
(2446, 320, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:6;s:16:"formatted_number";s:1:"6";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:320;s:7:"padding";s:0:"";}'),
(2447, 321, '_edit_lock', '1683108220:2'),
(2448, 323, '_order_currency', 'SEK'),
(2449, 323, '_cart_discount', '0'),
(2450, 323, '_cart_discount_tax', '0'),
(2451, 323, '_order_shipping', '0'),
(2452, 323, '_order_shipping_tax', '0'),
(2453, 323, '_order_tax', '-29.8'),
(2454, 323, '_order_total', '-149.00'),
(2455, 323, '_order_version', '7.6.0'),
(2456, 323, '_prices_include_tax', 'yes'),
(2457, 323, '_refund_amount', '149.00'),
(2458, 323, '_refunded_by', '4'),
(2459, 323, '_refunded_payment', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2460, 323, '_refund_reason', ''),
(2461, 321, '_edit_last', '4'),
(2462, 324, '_order_currency', 'SEK'),
(2463, 324, '_cart_discount', '0'),
(2464, 324, '_cart_discount_tax', '0'),
(2465, 324, '_order_shipping', '0'),
(2466, 324, '_order_shipping_tax', '0'),
(2467, 324, '_order_tax', '0'),
(2468, 324, '_order_total', '-61.25'),
(2469, 324, '_order_version', '7.6.0'),
(2470, 324, '_prices_include_tax', 'yes'),
(2471, 324, '_refund_amount', '61.25'),
(2472, 324, '_refunded_by', '4'),
(2473, 324, '_refunded_payment', ''),
(2474, 324, '_refund_reason', 'Beställningen är återbetald till fullo.'),
(2475, 317, '_wp_trash_meta_status', 'wc-refunded'),
(2476, 317, '_wp_trash_meta_time', '1683098953'),
(2477, 317, '_wp_desired_post_slug', 'bestallning-2-may-2023-ktuesday-1926'),
(2478, 317, '_wp_trash_meta_comments_status', 'a:8:{i:36;s:1:"1";i:37;s:1:"1";i:38;s:1:"1";i:39;s:1:"1";i:40;s:1:"1";i:41;s:1:"1";i:42;s:1:"1";i:43;s:1:"1";}'),
(2479, 293, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2480, 293, '_wcpdf_invoice_display_date', 'invoice_date'),
(2481, 293, '_wcpdf_invoice_date', '1683099113'),
(2482, 293, '_wcpdf_invoice_date_formatted', '2023-05-03 09:31:53'),
(2483, 293, '_wcpdf_invoice_number', '7'),
(2484, 293, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:7;s:16:"formatted_number";s:1:"7";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:293;s:7:"padding";s:0:"";}'),
(2485, 293, '_wcpdf_packing_slip_date', '1683099121'),
(2486, 293, '_wcpdf_packing_slip_date_formatted', '2023-05-03 09:32:01'),
(2487, 321, '_wcpdf_invoice_settings', 'a:10:{s:24:"display_shipping_address";s:0:"";s:22:"display_customer_notes";s:1:"1";s:11:"header_logo";s:0:"";s:18:"header_logo_height";s:0:"";s:9:"shop_name";s:0:"";s:12:"shop_address";s:0:"";s:6:"footer";s:0:"";s:7:"extra_1";s:0:"";s:7:"extra_2";s:0:"";s:7:"extra_3";s:0:"";}'),
(2488, 321, '_wcpdf_invoice_display_date', 'invoice_date'),
(2489, 321, '_wcpdf_invoice_date', '1683099137'),
(2490, 321, '_wcpdf_invoice_date_formatted', '2023-05-03 09:32:17'),
(2491, 321, '_wcpdf_invoice_number', '8'),
(2492, 321, '_wcpdf_invoice_number_data', 'a:7:{s:6:"number";i:8;s:16:"formatted_number";s:1:"8";s:6:"prefix";s:0:"";s:6:"suffix";s:0:"";s:13:"document_type";s:7:"invoice";s:8:"order_id";i:321;s:7:"padding";s:0:"";}'),
(2493, 313, '_wp_trash_meta_status', 'publish'),
(2494, 313, '_wp_trash_meta_time', '1683099276'),
(2495, 313, '_wp_desired_post_slug', 'fri-frakt'),
(2496, 327, '_edit_lock', '1683099638:2'),
(2497, 328, '_edit_lock', '1683100017:2'),
(2498, 329, '_order_key', 'wc_order_yD7gbHHEsvWCB'),
(2499, 329, '_customer_user', '2'),
(2500, 329, '_payment_method', 'klarna_payments'),
(2501, 329, '_payment_method_title', 'Klarna'),
(2502, 329, '_customer_ip_address', '::1'),
(2503, 329, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36'),
(2504, 329, '_created_via', 'checkout'),
(2505, 329, '_cart_hash', 'e5fc30fd68798dd9d3361125ec59f3b9'),
(2506, 329, '_download_permissions_granted', 'yes'),
(2507, 329, '_recorded_sales', 'yes'),
(2508, 329, '_recorded_coupon_usage_counts', 'yes'),
(2509, 329, '_new_order_email_sent', 'true'),
(2510, 329, '_order_stock_reduced', 'yes'),
(2511, 329, '_billing_first_name', 'Carolina'),
(2512, 329, '_billing_last_name', 'Andersson'),
(2513, 329, '_billing_address_1', 'HÅRDGÅRDSBODARNA 110'),
(2514, 329, '_billing_city', 'Sörbygden'),
(2515, 329, '_billing_postcode', '84398'),
(2516, 329, '_billing_country', 'SE'),
(2517, 329, '_billing_email', 'carolinaisabellaandersson@gmail.com'),
(2518, 329, '_billing_phone', '0762628953'),
(2519, 329, '_shipping_first_name', 'Carolina'),
(2520, 329, '_shipping_last_name', 'Andersson'),
(2521, 329, '_shipping_address_1', 'HÅRDGÅRDSBODARNA 110'),
(2522, 329, '_shipping_city', 'Sörbygden'),
(2523, 329, '_shipping_postcode', '84398'),
(2524, 329, '_shipping_country', 'SE'),
(2525, 329, '_order_currency', 'SEK'),
(2526, 329, '_cart_discount', '0'),
(2527, 329, '_cart_discount_tax', '0'),
(2528, 329, '_order_shipping', '0'),
(2529, 329, '_order_shipping_tax', '0'),
(2530, 329, '_order_tax', '89.4'),
(2531, 329, '_order_total', '447.00'),
(2532, 329, '_order_version', '7.6.0'),
(2533, 329, '_prices_include_tax', 'yes'),
(2534, 329, '_billing_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE carolinaisabellaandersson@gmail.com 0762628953'),
(2535, 329, '_shipping_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE '),
(2536, 329, 'is_vat_exempt', 'no'),
(2537, 329, '_wc_klarna_environment', 'test'),
(2538, 329, '_wc_klarna_country', 'SE'),
(2539, 329, '_kp_session_id', '32b7cf52-770d-5b6a-90da-4f942701cbc8'),
(2540, 329, '_transaction_id', 'ea9a1dbc-59f4-4d3f-9498-0439e664fe83'),
(2541, 329, '_date_paid', '1683108400'),
(2542, 329, '_paid_date', '2023-05-03 12:06:40'),
(2543, 329, '_wc_klarna_order_id', 'ea9a1dbc-59f4-4d3f-9498-0439e664fe83'),
(2544, 329, '_edit_lock', '1683108913:2'),
(2545, 329, '_edit_last', '2'),
(2546, 330, '_order_currency', 'SEK'),
(2547, 330, '_cart_discount', '0'),
(2548, 330, '_cart_discount_tax', '0'),
(2549, 330, '_order_shipping', '0'),
(2550, 330, '_order_shipping_tax', '0'),
(2551, 330, '_order_tax', '0'),
(2552, 330, '_order_total', '-447.00'),
(2553, 330, '_order_version', '7.6.0'),
(2554, 330, '_prices_include_tax', 'yes'),
(2555, 330, '_refund_amount', '447'),
(2556, 330, '_refunded_by', '2'),
(2557, 330, '_refunded_payment', ''),
(2558, 330, '_refund_reason', 'Beställningen är återbetald till fullo.'),
(2559, 331, '_edit_lock', '1683109902:2') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2560, 332, '_edit_lock', '1683114762:2'),
(2561, 333, '_edit_lock', '1683114896:2'),
(2562, 334, '_edit_lock', '1683115189:2'),
(2563, 344, '_order_key', 'wc_order_reePMeyEYAAmt'),
(2564, 344, '_customer_user', '2'),
(2565, 344, '_payment_method', 'klarna_payments'),
(2566, 344, '_payment_method_title', 'Klarna'),
(2567, 344, '_customer_ip_address', '::1'),
(2568, 344, '_customer_user_agent', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36'),
(2569, 344, '_created_via', 'checkout'),
(2570, 344, '_cart_hash', '42ca0862b2386f449633b48f8353f5de'),
(2571, 344, '_download_permissions_granted', 'yes'),
(2572, 344, '_recorded_sales', 'yes'),
(2573, 344, '_recorded_coupon_usage_counts', 'yes'),
(2574, 344, '_new_order_email_sent', 'true'),
(2575, 344, '_order_stock_reduced', 'yes'),
(2576, 344, '_billing_first_name', 'Carolina'),
(2577, 344, '_billing_last_name', 'Andersson'),
(2578, 344, '_billing_address_1', 'HÅRDGÅRDSBODARNA 110'),
(2579, 344, '_billing_city', 'Sörbygden'),
(2580, 344, '_billing_postcode', '84398'),
(2581, 344, '_billing_country', 'SE'),
(2582, 344, '_billing_email', 'carolinaisabellaandersson@gmail.com'),
(2583, 344, '_billing_phone', '0762628953'),
(2584, 344, '_shipping_first_name', 'Carolina'),
(2585, 344, '_shipping_last_name', 'Andersson'),
(2586, 344, '_shipping_address_1', 'HÅRDGÅRDSBODARNA 110'),
(2587, 344, '_shipping_city', 'Sörbygden'),
(2588, 344, '_shipping_postcode', '84398'),
(2589, 344, '_shipping_country', 'SE'),
(2590, 344, '_order_currency', 'SEK'),
(2591, 344, '_cart_discount', '80'),
(2592, 344, '_cart_discount_tax', '20'),
(2593, 344, '_order_shipping', '0'),
(2594, 344, '_order_shipping_tax', '0'),
(2595, 344, '_order_tax', '105.4'),
(2596, 344, '_order_total', '527.00'),
(2597, 344, '_order_version', '7.6.0'),
(2598, 344, '_prices_include_tax', 'yes'),
(2599, 344, '_billing_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE carolinaisabellaandersson@gmail.com 0762628953'),
(2600, 344, '_shipping_address_index', 'Carolina Andersson  HÅRDGÅRDSBODARNA 110  Sörbygden  84398 SE '),
(2601, 344, 'is_vat_exempt', 'no'),
(2602, 344, '_wc_klarna_environment', 'test'),
(2603, 344, '_wc_klarna_country', 'SE'),
(2604, 344, '_kp_session_id', '92bd10d4-3f04-513a-b6b6-656ea0576616'),
(2605, 344, '_transaction_id', 'd48d4b5b-db6c-4efe-b965-708e9fe0b26a'),
(2606, 344, '_date_paid', '1683201806'),
(2607, 344, '_paid_date', '2023-05-04 14:03:26'),
(2608, 257, '_used_by', '2'),
(2609, 344, '_wc_klarna_order_id', 'd48d4b5b-db6c-4efe-b965-708e9fe0b26a'),
(2610, 74, '_price', '29'),
(2611, 59, '_price', '189'),
(2612, 59, '_price', '598'),
(2613, 49, '_edit_lock', '1683270673:2'),
(2614, 49, '_edit_last', '2'),
(2615, 346, '_menu_item_type', 'post_type'),
(2616, 346, '_menu_item_menu_item_parent', '0'),
(2617, 346, '_menu_item_object_id', '49'),
(2618, 346, '_menu_item_object', 'page'),
(2619, 346, '_menu_item_target', ''),
(2620, 346, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2621, 346, '_menu_item_xfn', ''),
(2622, 346, '_menu_item_url', ''),
(2624, 187, '_wp_old_date', '2023-04-26'),
(2625, 190, '_wp_old_date', '2023-04-26'),
(2626, 196, '_wp_old_date', '2023-04-26'),
(2627, 188, '_wp_old_date', '2023-04-26'),
(2628, 195, '_wp_old_date', '2023-04-26'),
(2629, 347, '_menu_item_type', 'post_type'),
(2630, 347, '_menu_item_menu_item_parent', '0'),
(2631, 347, '_menu_item_object_id', '49'),
(2632, 347, '_menu_item_object', 'page'),
(2633, 347, '_menu_item_target', ''),
(2634, 347, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(2635, 347, '_menu_item_xfn', ''),
(2636, 347, '_menu_item_url', ''),
(2638, 307, '_wp_old_date', '2023-05-02'),
(2639, 312, '_wp_old_date', '2023-05-02'),
(2640, 310, '_wp_old_date', '2023-05-02'),
(2641, 309, '_wp_old_date', '2023-05-02'),
(2642, 308, '_wp_old_date', '2023-05-02'),
(2643, 311, '_wp_old_date', '2023-05-02') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:paragraph -->\n<p>Välkommen till WordPress. Detta är ditt första inlägg. Du kan redigera det eller ta bort det. Sedan är det bara att börja skriva!</p>\n<!-- /wp:paragraph -->', 'Hej världen!', '', 'trash', 'open', 'open', '', 'hej-varlden__trashed', '', '', '2023-04-25 15:58:24', '2023-04-25 13:58:24', '', 0, 'http://localhost/webshop_grupp1/?p=1', 0, 'post', '', 1),
(2, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:paragraph -->\n<p>Detta är en exempelsida. Den skiljer sig från ett blogginlägg genom att den finns kvar på samma plats och kommer att visas i din webbplatsnavigering (i de flesta teman). De flesta börjar med en Om-sida som presenterar dem för potentiella besökare. Den skulle t.ex kunna ha följande innehåll:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hej där! Jag är cykelbud på dagen, blivande skådespelare på natten och detta är min blogg. Jag bor i Örebro, har en katt som heter Lurv och jag gillar Pina Coladas. (och att simma i Göta kanal).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... eller något liknande detta:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Företaget AB grundades 1971 och har sedan dess varit den största leverantören av grunk-manicker på den svenska marknaden. FAB finns i utkanten av Grönköping, har drygt 20&nbsp;000 anställda och läser veckobladet varje år.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Som ny WordPress-användare bör du gå till <a href="http://localhost/webshop_grupp1/wp-admin/">din adminpanel</a> för att ta bort denna sida och skapa nya sidor för ditt innehåll. Lycka till!</p>\n<!-- /wp:paragraph -->', 'Exempelsida', '', 'publish', 'closed', 'open', '', 'exempelsida', '', '', '2023-04-24 13:27:03', '2023-04-24 11:27:03', '', 0, 'http://localhost/webshop_grupp1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi är</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Vår webbplatsadress är: http://localhost/webshop_grupp1.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Kommentarer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>När besökare lämnar kommentarer på webbplatsen samlar vi in de uppgifter som visas i kommentarsformuläret samt besökarens IP-adress och webbläsarens användaragent-sträng som hjälp för detektering av skräppost.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En anonymiserad sträng som skapats utifrån din e-postadress (även kallat hash-värde) kan komma att sändas till tjänsten Gravatar för att avgöra om du finns registrerad där. Integritetspolicyn för tjänsten Gravatar finns på https://automattic.com/privacy/. När din kommentar har godkänts visas din profilbild offentligt tillsammans med din kommentar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du laddar upp bilder till webbplatsen bör du undvika att ladda upp bilder där EXIF-data inkluderar data från GPS-lokalisering. Besökare till webbplatsen kan ladda ned och ta fram alla positioneringsuppgifter från bilder på webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookie-filer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du lämnar en kommentar på vår webbplats kan du välja att spara ditt namn, din e-postadress och webbplatsadress i cookie-filer. Detta är för din bekvämlighet för att du inte ska behöva fylla i dessa uppgifter igen nästa gång du skriver en kommentar. Dessa cookie-filer gäller i ett år.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du besöker vår inloggningssida kommer vi att sätta en tillfällig cookie för att undersöka om din webbläsare accepterar dem. Denna cookie innehåller inga personuppgifter och den försvinner när du stänger din webbläsare.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>När du loggar in kommer vi dessutom att skapa flera cookie-filer för att spara information om din inloggning och dina val för utformning av skärmlayouten. Cookie-filer för inloggning gäller i två dagar och cookie-filer för layoutval gäller i ett år. Om du kryssar i ”Kom ihåg mig” kommer din cookie att finnas kvar i två veckor. Om du loggar ut från ditt konto kommer cookie-filerna för inloggning att tas bort.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du redigerar eller publicerar en artikel kommer en extra cookie-fil att sparas i din webbläsare. Denna cookie-fil innehåller inga personuppgifter utan anger endast inläggs-ID för den artikel du just redigerade och löper ut efter ett dygn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Inbäddad innehåll från andra webbplatser</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>Artiklar på denna webbplats kan innehålla inbäddat innehåll (exempelvis videoklipp, bilder, artiklar o.s.v.). Inbäddat innehåll från andra webbplatser beter sig precis på samma sätt som om besökaren har besökt den andra webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dessa webbplatser kan samla in uppgifter om dig, använda cookie-filer, bädda in ytterligare spårning från tredje part och övervaka din interaktion med sagda inbäddade innehåll, inklusive spårning av din interaktion med detta inbäddade innehåll om du har ett konto och är inloggad på webbplatsen i fråga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi delar dina data med</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du begär återställning av lösenordet kommer din IP-adress att ingå i e-postmeddelandet om återställning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Hur länge vi behåller era uppgifter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du skriver en kommentar kommer kommentaren och dess metadata att sparas utan tidsgräns. Anledningen till detta är att vi behöver kunna hitta och godkänna uppföljningskommentarer automatiskt och inte lägga dem i kö för granskning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>För användare som registrerar sig på er webbplats (om sådana finns) sparar vi även de personuppgifter de anger i sin användarprofil. Alla användare kan se, redigera eller radera sina personuppgifter när som helst (med undantaget att de inte kan ändra sitt användarnamn). Även webbplatsens administratörer kan se och redigera denna information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka rättigheter du har över dina data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du har ett konto eller har skrivit några kommentarer på denna webbplats kan du begära en exportfil med de personuppgifter vi har om dig, inklusive alla uppgifter du har gett oss. Du kan också begära att vi tar bort alla personuppgifter vi har om dig. Detta omfattar inte eventuella uppgifter som vi är tvungna att spara av administrativa, legala eller säkerhetsändamål.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vart dina uppgifter skickas</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kommentarer från besökare kanske kontrolleras via en automatiserad tjänst för detektering av skräppost.</p>\n<!-- /wp:paragraph -->', 'Integritetspolicy', '', 'publish', 'closed', 'open', '', 'integritetspolicy', '', '', '2023-04-27 10:56:02', '2023-04-27 08:56:02', '', 0, 'http://localhost/webshop_grupp1/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-04-25 08:50:31', '2023-04-25 06:50:31', '', 'elevate', 'Förpackning med förtvättmedel', 'inherit', 'open', 'closed', '', 'elevate', '', '', '2023-04-25 12:11:43', '2023-04-25 10:11:43', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/elevate.webp', 0, 'attachment', 'image/webp', 0),
(6, 1, '2023-04-25 08:50:31', '2023-04-25 06:50:31', '', 'elevate5l', 'Förpackning med förtvättmedel', 'inherit', 'open', 'closed', '', 'elevate5l', '', '', '2023-04-25 12:13:10', '2023-04-25 10:13:10', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/elevate5l.webp', 0, 'attachment', 'image/webp', 0),
(7, 1, '2023-04-25 08:50:32', '2023-04-25 06:50:32', '', 'extract', 'Förpackning med akalisk avfettning', 'inherit', 'open', 'closed', '', 'extract', '', '', '2023-04-25 12:45:27', '2023-04-25 10:45:27', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/extract.webp', 0, 'attachment', 'image/webp', 0),
(8, 1, '2023-04-25 08:50:32', '2023-04-25 06:50:32', '', 'extract5l', 'Förpackning med akalisk avfettning', 'inherit', 'open', 'closed', '', 'extract5l', '', '', '2023-04-25 12:46:35', '2023-04-25 10:46:35', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/extract5l.webp', 0, 'attachment', 'image/webp', 0),
(9, 1, '2023-04-25 08:50:33', '2023-04-25 06:50:33', '', 'extract25l', 'Förpackning med akalisk avfettning', 'inherit', 'open', 'closed', '', 'extract25l', '', '', '2023-04-25 12:47:26', '2023-04-25 10:47:26', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/extract25l.webp', 0, 'attachment', 'image/webp', 0),
(10, 1, '2023-04-25 08:50:33', '2023-04-25 06:50:33', '', 'purifys', 'keramiskt schampo', 'inherit', 'open', 'closed', '', 'purifys', '', '', '2023-04-25 11:54:39', '2023-04-25 09:54:39', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys.webp', 0, 'attachment', 'image/webp', 0),
(11, 1, '2023-04-25 08:50:34', '2023-04-25 06:50:34', '', 'purifys+', '', 'inherit', 'open', 'closed', '', 'purifys-2', '', '', '2023-04-25 08:50:34', '2023-04-25 06:50:34', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys-1.webp', 0, 'attachment', 'image/webp', 0),
(12, 1, '2023-04-25 08:50:34', '2023-04-25 06:50:34', 'keramiskt schampo med doft, 5L', 'purifys+5l', '', 'inherit', 'open', 'closed', '', 'purifys5l', '', '', '2023-04-25 11:36:15', '2023-04-25 09:36:15', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys5l.webp', 0, 'attachment', 'image/webp', 0),
(13, 1, '2023-04-25 08:50:35', '2023-04-25 06:50:35', '', 'purifys5l', 'keramiskt schampo ', 'inherit', 'open', 'closed', '', 'purifys5l-2', '', '', '2023-04-25 11:53:53', '2023-04-25 09:53:53', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys5l-1.webp', 0, 'attachment', 'image/webp', 0),
(14, 1, '2023-04-25 08:50:35', '2023-04-25 06:50:35', '', 'refined', 'Förpackning med oljebaserat däckmedel', 'inherit', 'open', 'closed', '', 'refined', '', '', '2023-04-25 12:54:52', '2023-04-25 10:54:52', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/refined.webp', 0, 'attachment', 'image/webp', 0),
(15, 1, '2023-04-25 08:50:36', '2023-04-25 06:50:36', '', 'refined2', '', 'inherit', 'open', 'closed', '', 'refined2', '', '', '2023-04-26 18:16:21', '2023-04-26 16:16:21', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/refined2.webp', 0, 'attachment', 'image/webp', 0),
(16, 1, '2023-04-25 08:50:36', '2023-04-25 06:50:36', '', 'vision', 'Sprayflaska med glasputs', 'inherit', 'open', 'closed', '', 'vision', '', '', '2023-04-25 12:41:40', '2023-04-25 10:41:40', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/vision.webp', 0, 'attachment', 'image/webp', 0),
(17, 1, '2023-04-25 08:50:58', '2023-04-25 06:50:58', '', 'airfreshener-apple', 'Air fresh, äpple', 'inherit', 'open', 'closed', '', 'airfreshener-apple', '', '', '2023-04-25 13:46:32', '2023-04-25 11:46:32', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/airfreshener-apple.webp', 0, 'attachment', 'image/webp', 0),
(18, 1, '2023-04-25 08:50:59', '2023-04-25 06:50:59', '', 'airfreshener-jordgubbe', 'Air fresh, jordgubb', 'inherit', 'open', 'closed', '', 'airfreshener-jordgubbe', '', '', '2023-04-25 13:47:45', '2023-04-25 11:47:45', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/airfreshener-jordgubbe.webp', 0, 'attachment', 'image/webp', 0),
(19, 1, '2023-04-25 08:50:59', '2023-04-25 06:50:59', '', 'airfreshener-samlingsbild', 'Air freshener samlingsbild', 'inherit', 'open', 'closed', '', 'airfreshener-samlingsbild', '', '', '2023-04-25 13:45:11', '2023-04-25 11:45:11', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/airfreshener-samlingsbild.webp', 0, 'attachment', 'image/webp', 0),
(20, 1, '2023-04-25 08:51:00', '2023-04-25 06:51:00', '', 'airfreshener-vanilj', 'Air fresh, vanilj', 'inherit', 'open', 'closed', '', 'airfreshener-vanilj', '', '', '2023-04-25 13:48:34', '2023-04-25 11:48:34', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/airfreshener-vanilj.webp', 0, 'attachment', 'image/webp', 0),
(21, 1, '2023-04-25 08:51:27', '2023-04-25 06:51:27', '', 'APCapple', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apcapple', '', '', '2023-04-25 15:13:28', '2023-04-25 13:13:28', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APCapple.webp', 0, 'attachment', 'image/webp', 0),
(22, 1, '2023-04-25 08:51:28', '2023-04-25 06:51:28', '', 'APC-apple-5l', 'apc dunk', 'inherit', 'open', 'closed', '', 'apc-apple-5l', '', '', '2023-04-25 15:20:05', '2023-04-25 13:20:05', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APC-apple-5l.webp', 0, 'attachment', 'image/webp', 0),
(23, 1, '2023-04-25 08:51:28', '2023-04-25 06:51:28', '', 'APCcedertra', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apccedertra', '', '', '2023-04-25 15:15:03', '2023-04-25 13:15:03', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APCcedertra.webp', 0, 'attachment', 'image/webp', 0),
(24, 1, '2023-04-25 08:51:29', '2023-04-25 06:51:29', '', 'APCjordgubbe', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apcjordgubbe', '', '', '2023-04-25 15:16:09', '2023-04-25 13:16:09', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APCjordgubbe.webp', 0, 'attachment', 'image/webp', 0),
(25, 1, '2023-04-25 08:51:29', '2023-04-25 06:51:29', '', 'APClime', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apclime', '', '', '2023-04-25 15:16:51', '2023-04-25 13:16:51', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APClime.webp', 0, 'attachment', 'image/webp', 0),
(26, 1, '2023-04-25 08:51:30', '2023-04-25 06:51:30', '', 'APCmelon', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apcmelon', '', '', '2023-04-25 15:17:28', '2023-04-25 13:17:28', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APCmelon.webp', 0, 'attachment', 'image/webp', 0),
(27, 1, '2023-04-25 08:51:30', '2023-04-25 06:51:30', '', 'APC-melon-5l', 'apc dunk', 'inherit', 'open', 'closed', '', 'apc-melon-5l', '', '', '2023-04-25 15:20:57', '2023-04-25 13:20:57', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APC-melon-5l.webp', 0, 'attachment', 'image/webp', 0),
(28, 1, '2023-04-25 08:51:31', '2023-04-25 06:51:31', '', 'APCviol', 'APC sprayflaska', 'inherit', 'open', 'closed', '', 'apcviol', '', '', '2023-04-25 15:19:28', '2023-04-25 13:19:28', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/APCviol.webp', 0, 'attachment', 'image/webp', 0),
(29, 1, '2023-04-25 08:52:08', '2023-04-25 06:52:08', '', 'tershine-tshirt', 't-shirt', 'inherit', 'open', 'closed', '', 'tershine-tshirt', '', '', '2023-04-25 14:22:47', '2023-04-25 12:22:47', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/tershine-tshirt.webp', 0, 'attachment', 'image/webp', 0),
(30, 1, '2023-04-25 08:52:08', '2023-04-25 06:52:08', '', 'tershine-tshirt-2', 't-shirt', 'inherit', 'open', 'closed', '', 'tershine-tshirt-2', '', '', '2023-04-25 14:23:33', '2023-04-25 12:23:33', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/tershine-tshirt-2.webp', 0, 'attachment', 'image/webp', 0),
(31, 1, '2023-04-25 08:52:09', '2023-04-25 06:52:09', '', 'tershine-tshirt-3', 't-shirt', 'inherit', 'open', 'closed', '', 'tershine-tshirt-3', '', '', '2023-04-25 14:24:01', '2023-04-25 12:24:01', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/tershine-tshirt-3.webp', 0, 'attachment', 'image/webp', 0),
(32, 1, '2023-04-25 08:52:34', '2023-04-25 06:52:34', '', 'tershine-hoodie', 'Svart hoodie', 'inherit', 'open', 'closed', '', 'tershine-hoodie', '', '', '2023-04-25 14:18:02', '2023-04-25 12:18:02', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/tershine-hoodie.webp', 0, 'attachment', 'image/webp', 0),
(33, 1, '2023-04-25 08:53:25', '2023-04-25 06:53:25', '', 'applicator', 'applicator', 'inherit', 'open', 'closed', '', 'applicator', '', '', '2023-04-25 15:09:47', '2023-04-25 13:09:47', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/applicator.webp', 0, 'attachment', 'image/webp', 0),
(34, 1, '2023-04-25 08:53:25', '2023-04-25 06:53:25', '', 'applicator2', '', 'inherit', 'open', 'closed', '', 'applicator2', '', '', '2023-04-26 18:17:47', '2023-04-26 16:17:47', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/applicator2.webp', 0, 'attachment', 'image/webp', 0),
(35, 1, '2023-04-25 08:53:26', '2023-04-25 06:53:26', '', 'hink', 'hink', 'inherit', 'open', 'closed', '', 'hink', '', '', '2023-04-25 14:35:49', '2023-04-25 12:35:49', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/hink.webp', 0, 'attachment', 'image/webp', 0),
(36, 1, '2023-04-25 08:53:26', '2023-04-25 06:53:26', '', 'hink2', '', 'inherit', 'open', 'closed', '', 'hink2', '', '', '2023-04-25 17:10:19', '2023-04-25 15:10:19', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/hink2.webp', 0, 'attachment', 'image/webp', 0),
(37, 1, '2023-04-25 08:53:27', '2023-04-25 06:53:27', '', 'p-skiva', 'Kombinerad p-skiva och isskrapa', 'inherit', 'open', 'closed', '', 'p-skiva', '', '', '2023-04-25 14:45:40', '2023-04-25 12:45:40', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/p-skiva.webp', 0, 'attachment', 'image/webp', 0),
(38, 1, '2023-04-25 08:53:27', '2023-04-25 06:53:27', '', 'p-skiva2', '', 'inherit', 'open', 'closed', '', 'p-skiva2', '', '', '2023-04-25 17:09:03', '2023-04-25 15:09:03', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/p-skiva2.webp', 0, 'attachment', 'image/webp', 0),
(39, 1, '2023-04-25 08:53:28', '2023-04-25 06:53:28', 'spray', 'spray-pump-alkaline', '', 'inherit', 'open', 'closed', '', 'spray-pump-alkaline', '', '', '2023-04-25 15:08:06', '2023-04-25 13:08:06', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-alkaline.webp', 0, 'attachment', 'image/webp', 0),
(40, 1, '2023-04-25 08:53:28', '2023-04-25 06:53:28', '', 'spray-pump-alkaline2', 'spray', 'inherit', 'open', 'closed', '', 'spray-pump-alkaline2', '', '', '2023-04-25 15:08:23', '2023-04-25 13:08:23', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-alkaline2.webp', 0, 'attachment', 'image/webp', 0),
(41, 1, '2023-04-25 08:53:29', '2023-04-25 06:53:29', '', 'spray-pump-petroleum', 'tryckspruta', 'inherit', 'open', 'closed', '', 'spray-pump-petroleum', '', '', '2023-04-25 15:05:03', '2023-04-25 13:05:03', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-petroleum.webp', 0, 'attachment', 'image/webp', 0),
(43, 1, '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 'sticker', 'sticker', 'inherit', 'open', 'closed', '', 'sticker', '', '', '2023-04-25 14:55:27', '2023-04-25 12:55:27', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/sticker.webp', 0, 'attachment', 'image/webp', 0),
(44, 1, '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 'sticker2', '', 'inherit', 'open', 'closed', '', 'sticker2', '', '', '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/sticker2.webp', 0, 'attachment', 'image/webp', 0),
(46, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 'Produkter', '', 'publish', 'closed', 'closed', '', 'produkter', '', '', '2023-04-26 17:56:10', '2023-04-26 15:56:10', '', 0, 'http://localhost/webshop_grupp1/shop/', 0, 'page', '', 0),
(47, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/cart/', 0, 'page', '', 0),
(48, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/checkout/', 0, 'page', '', 0),
(49, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->', 'Mitt konto', '', 'publish', 'closed', 'closed', '', 'mitt-konto', '', '', '2023-05-05 09:11:11', '2023-05-05 07:11:11', '', 0, 'http://localhost/webshop_grupp1/my-account/', 0, 'page', '', 0),
(50, 1, '2023-04-25 16:10:02', '2023-04-25 14:10:02', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna och betalning vid leverans.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas vi att ni blir nöjda med våra produkter men skulle det vara några problem som uppstår så kontakta gärna oss på en gång så löser vi det. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar vi den nya frakten frånoss till dig. Byten går bra men meddela oss gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via vår webshop och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'publish', 'closed', 'closed', '', 'kopvillkor', '', '', '2023-05-02 21:50:49', '2023-05-02 19:50:49', '', 0, 'http://localhost/webshop_grupp1/?page_id=50', 0, 'page', '', 0),
(51, 1, '2023-04-25 10:41:57', '2023-04-25 08:41:57', 'Purify S+ är ett så kallat keramiskt schampo med doft av grönt äpple som utöver att rengöra ger massvis av härlig glossy gloss och lämnar en skyddande hinna, som blir mycket vattenavstötande! Perfekt för dig som enkelt vill lackskydda fordonet utan massa krusiduller eller för att boosta befintliga skydd.\r\n\r\nTänk er Purify S och Refract i samma flaska (ish)! Givetvis helt fri från högfluorerade ämnen (PFAS) och shady lösningsmedel mm. Blandningsförhållande på 1:250-1:500 samt fungerar helt fantastiskt i foam gun. Med andra ord episk för er med stora fordon så som lastbil, grävmaskiner eller ja såklart till ALLA fordon!\r\n\r\nSkummet är faktiskt helt ok men tyvärr är det ju ”kemikaliernas” lag, avrinning minskar skum! Men det går fint fluffa upp i hinken då och då.\r\n\r\nDet här är en grym produkt dom gånger man inte orkar köra med Refract och alla steg, eller om man bara vill underhålla sitt befintliga skydd, typ Magnify eller Refract. Den ger riktigt bra avrinning även på helt döda lacker samt har man redan ett skydd under så boostar den på det massvis. Det här är en perfekt produkt, dels för nybörjare men även till oss hardcore -tvättare som ibland inte riktigt känner man hinner en mystvätt med alla stegen. Det blir en liten kompromiss att ha allt i samma flaska, men det här är verkligen min egna nya favorit då den är så förbannat enkelt att använda och ger ett superfint resultat. Går galant att använda på wrap/ppf samt även matta lacker. Kanon även på båten, husbilen/vagnen, vattenskotern, ja den funkar på mer eller mindre allt.\r\n\r\nEn stor sak är att man absolut inte behöver få "panik" om produkten inte spolas av omgående. Med andra ord, ni kan tvätta hela fordonet i lugn och ro innan ni spolar av, precis som våra övriga schampon. Såklart börjar ni med alla stegen innan så som avfettning, fälgrengöring osv. Med andra ord en helt vanlig tvätt.\r\n<ol>\r\n 	<li>Häll en skvätt i hinken, laborera gärna hur mycket ni behöver ha i. Det är lite från bil till bil och produkten har lägre blandningsförhållanden än våra övriga schampon. Den blir nästan bättre ju mer ni tar. Kan också appliceras rent direkt i handske/duk och på så sätt "masseras" in och sedan sköljas av.</li>\r\n 	<li>Fluffa upp skummet med högtrycken (upprepa vid behov).</li>\r\n 	<li>Dra tvätthandsken/mikrofiberduken med raka drag över fordonets lack.</li>\r\n 	<li> Spola av och torka torrt med en högkvalitativ duk.</li>\r\n 	<li>Njut av den episka glansen och avrinningen!</li>\r\n</ol>\r\nKan med fördel användas i foam gun, där är det som vanligt så många olika faktorer som spelar in så laborera er gärna fram till rätt blandningsförhållande. Se till att rengöra ordentligt innan med avfettningarna, sen är det bara duscha ut och låt dra en liten stund innan ni spolar av.\r\n\r\nSom sista grej kan man faktiskt späda den med vatten och använda som en form av wet coat, blanda då ut den i en tomflaska och duscha på ren yta och spola av likt Refract.\r\n\r\nVill man använda torkstöd så som Apex+ eller Refract går det fint, men tänk på att ni kan torka "bort" lite av det göttiga, så prova gärna utan första gången och testa er fram vad ni gillar bäst! Skölj gärna ur torkdukarna efter ni använt dom, den är inte alls lika "elak" mot dukarna som Refract men alltid bra få den ren innan det torkar.\r\n\r\nOm inte önskad effekt uppnås är det bara prova att köra lite mer produkt, låter ju flummigt men som jag beskrivit ovan så förespråkar vi att man provar sig fram till det förhållandet som passar bäst för just er. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS). Undvik direkt solljus samt förvara produkten mörkt och frostfritt.\r\n\r\n<strong>Doft:</strong> Grönt äpple\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: 5-15%: amfoteriska tensider. 5-15%: anjoniska och nonjoniska tensider, 5-15% katanjonisk tensid, aminofunctional siloxane. Konserveringsmedel: sodium hydroxymethylglycinate.</strong>\r\n<strong>Doft: Parfym, HexylCinnamal. 1-propanaminium, 2-hydroxy-n(2-hydroxpropyl)-n, n-dimethyl-, esters med fatty acids, C18 omättad, mesulfates; 1-propanaminium, 3-amino-n-(carboxymethyl)-n, N-dimethyl, N-coco acyl derivs, hydroxides, inne salts; amides, C8-18, C18-omättad. </strong>\r\n<strong>FARA: Irriterar huden. Kan orsaka allergisk hudreaktion. Orsakar allvarliga ögonskador. Skadliga långtidseffekter för vattenlevande organismer. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID HUDKONTAKT: Tvätta med mycket vatten. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN. Innehållet och behållaren lämnas till auktoriserad avfallsanläggning. UFI: DK50-20N8-300E-U6KP</strong>', 'PURIFY S+ SCHAMPO', 'Purify S+ är ett så kallat keramiskt schampo med doft av grönt äpple som utöver att rengöra ger massvis av härlig glossy gloss och lämnar en skyddande hinna, som blir mycket vattenavstötande! Perfekt för dig som enkelt vill lackskydda fordonet utan massa krusiduller eller för att boosta befintliga skydd.', 'publish', 'open', 'closed', '', 'purify-s-shampoo', '', '', '2023-05-02 21:26:18', '2023-05-02 19:26:18', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2023-04-25 11:05:13', '2023-04-25 09:05:13', '', 'purifys+', 'keramiskt schampo med doft', 'inherit', 'open', 'closed', '', 'purifys-3', '', '', '2023-04-25 11:06:26', '2023-04-25 09:06:26', '', 51, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys-2.webp', 0, 'attachment', 'image/webp', 0),
(53, 1, '2023-04-25 11:31:57', '2023-04-25 09:31:57', '', 'PURIFY S+ SCHAMPO - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'purify-s-shampoo-5-liter', '', '', '2023-05-01 14:38:55', '2023-05-01 12:38:55', '', 51, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=53', 1, 'product_variation', '', 0),
(54, 1, '2023-04-25 11:31:57', '2023-04-25 09:31:57', '', 'PURIFY S+ SCHAMPO - 500 ml', 'Volym: 500 ml', 'publish', 'closed', 'closed', '', 'purify-s-shampoo-500-ml', '', '', '2023-05-02 21:26:14', '2023-05-02 19:26:14', '', 51, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=54', 2, 'product_variation', '', 0),
(56, 1, '2023-04-25 11:46:56', '2023-04-25 09:46:56', 'Testvinnande (Teknikens Värld) Purify S är ett högeffektivt så kallat "keramiskt" schampo som ger en helt vansinnig glans. Tack vare sitt innehåll gör den inte bara rent utan hjälper till att boosta redan befintligt skydd (förslagsvis Magnify eller Refract) till nya höjder!\r\n\r\nJa som ni förstår är det ju en variant på Purify schampo men med extra ”keramiska” godsaker för den där helt galna glansen. Vad som särskiljer mitt schampo på marknaden och vad jag tycker gör produkten väldigt spännande är de rengörande egenskaperna tillsammans med den helt sjuka glansen den ger.\r\n\r\nProdukten presterar snarlikt rengöringsmässigt som mitt vanliga Purify (lite klenare) men ger en glansnivå som verkligen är helt otrolig. Det hjälper till boosta ytan under och är gjort att kunna binda på alla typer av lackskydd och vaxer, då jag har valt de rengörande egenskaperna och glansen så har det således inga "inbyggda" avrinnande egenskaper (nästan omöjligt tillverka en produkt som presterar maximalt på alla håll utan man får ”välja” vilka egenskaper man vill premiera).\r\n\r\nSen är det ju självklart glansen som är hela grejen med schampot, den ger verkligen så förbannat bra glans. Det tar någon timme innan maxglans har uppnåtts då den behöver lite härdtid. Jag är grymt nöjd över hur tjockt och fint skummet är, hur bra glid det ger mot handsken samt att det är väldigt drygt. Det är ca 2-3 kapsyler i en vanliga hink som gäller (men prova gärna vad du gillar), det är ungefär hälften så drygt som vanliga Purify, men en flaska på 500 ml räcker fortfarande till massvis av tvättar. Jag tycker dock att det verkligen lever ut när man skvätter i lite extra, det blir inte bättre rengörande egenskaper men glansen poppar verkligen till en annan nivå. Blandningsförhållande ca 1:1000 (sjukt svårt mäta sånt), vilket gör det enormt drygt! Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Fungerar lika bra på matta lacker och folierade fordon. Räcker till ca 40-50 tvättar.\r\n\r\nKom ihåg att mängden skum också är avhängt på hårt/mjukt vatten, så labba gärna runt vilken mängd ni gillar bäst!\r\n<ol>\r\n 	<li><strong> Dra i en skvätt i ljummet vatten.</strong></li>\r\n 	<li><strong> Spola med högtrycksmunstycke i hinken för att aktivera skummet.</strong></li>\r\n 	<li><strong> Dra tvätthandsken med raka drag över fordonets lack och glöm inte att tvätta handsken i din andra hink med rent vatten då och då.</strong></li>\r\n 	<li><strong> Spola av och torka med torkduk av hög kvalitet.</strong></li>\r\n 	<li><strong> Efter avtork kommer glansen att öka successivt de första 12-24h.</strong></li>\r\n 	<li><strong> Jag vet, glansen är ju helt magisk</strong>\r\n<strong>Ps. använd med fördel min keramiska quick coat Refract eller mitt glansmonster Apex+ som torkstöd så tar du allt till nästa nivå.</strong></li>\r\n</ol>\r\nFungerar självklart kanon i foam gun!\r\n\r\n<strong>Doft:</strong> Äpple (ish)\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera</strong>\r\n\r\n<strong>FARA: Irriterar huden. Orsakar allvarliga ögonskador. Skadliga lång-</strong>\r\n<strong>tidseffekter för vattenlevande organismer. Tvätta händerna grundligt</strong>\r\n<strong>efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd.</strong>\r\n<strong>VID HUDKONTAKT: Tvätta med mycket vatten. VID KONTAKT MED ÖGONEN: Skölj försiktigt</strong>\r\n<strong>med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt att</strong>\r\n<strong>skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN/läkare. Innehållet/behållaren</strong>\r\n<strong>lämnas till anläggning för hantering av farligt avfall.</strong>\r\n\r\n<strong>Innehåller: &lt; 5%: amfotera tensider. 5-15%: anjoniska tensider, nonjoniska tensider. Konserveringsmedel: Sodium - Hydroxymethylglycinate. Doft: Parfym, Citronellol, Geraniol, Butylphenyl Methylpropional, Linalool, alpha isomethyl ionon, Benzyl salicylate, Citral, HexylCinnamal, Limonene.  Tridecylalcohol, ethoxylated ; Sodium C14-16 olefin sulfonate; Alcohols, C12-14, ethoxylated, sulfates, sodium salts; N- (Cocoalkyl)-dimethylamine oxide. UFI: 8P50-K0AN-D00W-GJ5R</strong>', 'PURIFY S - SCHAMPO GLOSS', 'Testvinnande (Teknikens Värld) Purify S är ett högeffektivt så kallat "keramiskt" schampo som ger en helt vansinnig glans. Tack vare sitt innehåll gör den inte bara rent utan hjälper till att boosta redan befintligt skydd (förslagsvis Magnify eller Refract) till nya höjder!', 'publish', 'open', 'closed', '', 'purify-s-schampo-gloss', '', '', '2023-05-01 14:48:50', '2023-05-01 12:48:50', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2023-04-25 11:50:47', '2023-04-25 09:50:47', '', 'PURIFY S - SCHAMPO GLOSS - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'purify-s-schampo-gloss-5-liter', '', '', '2023-04-27 11:35:47', '2023-04-27 09:35:47', '', 56, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=57', 1, 'product_variation', '', 0),
(58, 1, '2023-04-25 11:50:47', '2023-04-25 09:50:47', '', 'PURIFY S - SCHAMPO GLOSS - 500 ml', 'Volym: 500 ml', 'publish', 'closed', 'closed', '', 'purify-s-schampo-gloss-500-ml', '', '', '2023-05-01 14:48:48', '2023-05-01 12:48:48', '', 56, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=58', 2, 'product_variation', '', 0),
(59, 1, '2023-04-25 11:56:59', '2023-04-25 09:56:59', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!\r\n\r\nElevate är 100% biologiskt nedbrytbar och helt utan faromärkningar (ja, du läste rätt). Superenkel att använda och mycket skonsam för både dig och miljön.\r\n<ol>\r\n 	<li><strong>Blanda i foam gun efter tycke och smak, 1:5-1:20 ish</strong></li>\r\n 	<li><strong>Duscha ut och låt verka i några minuter</strong></li>\r\n 	<li><strong>Spola av</strong></li>\r\n 	<li><strong>Fortsätt med nästa steg i din tvättprocess</strong></li>\r\n</ol>\r\n<strong>Ps. </strong>Kika gärna vår video om hur man blandar i foam gun, det finns många parametrar som påverkar resultatet. Oavsett vad, framtidens bilvård är nu här!\r\n\r\n<strong>Doft: </strong>Somriga Frukter\r\n\r\n<em>Förvaras frostfritt. Ej märkningspliktig.</em>\r\n\r\n<strong>Innehåller: 5-15% anjoniska tensider, nonjoniska tensider. Konserveringsmedel: Hydroxymethylglycinate. </strong>\r\n<strong>Doft: Parfym, Limonene, Linalool.</strong>\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>', 'ELEVATE - SNOW FOAM', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!', 'publish', 'open', 'closed', '', 'elevate-snow-foam', '', '', '2023-05-04 14:03:32', '2023-05-04 12:03:32', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=59', 0, 'product', '', 0),
(61, 1, '2023-04-25 12:00:18', '2023-04-25 10:00:18', '', 'ELEVATE - SNOW FOAM - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'elevate-snow-foam-1-l-5-liter', '', '', '2023-05-04 14:03:26', '2023-05-04 12:03:26', '', 59, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=61', 3, 'product_variation', '', 0),
(63, 1, '2023-04-25 12:05:56', '2023-04-25 10:05:56', '', 'ELEVATE - SNOW FOAM - 1 liter', 'Volym: 1 liter', 'publish', 'closed', 'closed', '', 'elevate-snow-foam-1-l', '', '', '2023-04-27 11:34:40', '2023-04-27 09:34:40', '', 59, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=63', 0, 'product_variation', '', 0),
(64, 1, '2023-04-25 12:08:43', '2023-04-25 10:08:43', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed-6', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=64', 0, 'product', '', 0),
(65, 1, '2023-04-25 12:10:39', '2023-04-25 10:10:39', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed-5', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=65', 0, 'product', '', 0),
(67, 1, '2023-04-25 12:15:16', '2023-04-25 10:15:16', '<strong>Ny formula för vintern 2021!</strong>\r\n\r\nVision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).\r\n\r\nVision+ lämnar en effektiv avrinning på rutan som hjälper till att hålla dom rena längre samt du sparar på torkarna och sikten blir bättre.\r\n\r\nSuperenkel att använda, bara duscha i duken, applicera och torka av. Se till att vänd på duken och buffa upp ytan (för att torka ordentligt rent). Eftersom Vision+ lämnar en coating efter sig kan det i vissa lägen vara enklare att ha en ren duk vid sidan om och torka av med. Då den verkligen är superdryg så är ledordet less is more här också!\r\n\r\nKöp gärna till en glasduk eller allround-duk som gör en enorm skillnad på hur enkelt det är putsa glas rent och fint! Kom ihåg att dubbla dukar är att föredra, oavsett vilken produkt du använder.\r\n<ol>\r\n 	<li><strong> Duscha i din glasduk eller direkt på ytan.</strong></li>\r\n 	<li><strong> Torka ut och vänd på duken och buffa upp!</strong></li>\r\n 	<li><strong> Njut av glansen och avrinningen :)</strong></li>\r\n</ol>\r\nJag rekommenderar alltid att skaka produkten innan användning. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Skogsbär\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: &lt;5 % anjoniska tensider. &lt;5% nonjoniska tensider. Konserveringsmedel: Sodium-Hydroxymethylclycinate. Doft: 3,7 -dimethyl6-octen1-ol (dl-citronellol), ethyl acetate, 1,8-cineole, limonene, linalool, anthranilic acid: methyl ester, 4-tert-butylcyclohexyl acetate. Propan-2-ol;.2-Butoxyethanol. VARNING: Orsakar allvarlig ögonirritation. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Tvätta händer grundligt efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Vid bestående ögonirritation sök läkarhjälp. Innehållet i behållaren lämnas till anläggning för hantering av varligt avfall.</strong>', 'VISION+ GLASS CLEANER 500ML', 'Vision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).', 'publish', 'open', 'closed', '', 'vision-glass-cleaner-500ml', '', '', '2023-05-02 21:38:19', '2023-05-02 19:38:19', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2023-04-25 12:42:25', '2023-04-25 10:42:25', 'Extract är en högeffektiv och superkoncentrerad alkalisk avfettning lämplig för alla typer av fordon, golv, fasader etc. Lyfter organisk smuts och doftar härligt av persika. Blandas 5-15% i vatten och 1 liter ger således 20 liter färdig produkt att använda. Fungerar även utmärkt för grövre smuts på golvmattor etc.\r\n\r\nMagisk som flyg/insektslösare i fronten, blanda då produkten betydligt starkare hela vägen upp till rent!\r\n<ol>\r\n 	<li><strong> Blanda 5-15% med vatten (beroende på användningsområde)</strong>\r\n<strong>2. Duscha över vald yta och låt verka under någon minut. </strong>\r\n<strong>3. Spola av med högtryck</strong>\r\n<strong>4. Påbörja nästa steg i tvättprocessen</strong></li>\r\n</ol>\r\nGår utmärkt att använda i skumkanon, dosera mängd med munstycket. Betänk också att all typ av kem men framförallt avfettning (kall/alkalisk) behöver längre tid på sig att bearbeta ytan när det är kallt, ja jag lovar det är enorm skillnad. Så prova er fram vilken tid ni föredrar, allt mellan 5-15 min, men låt det inte torka in. Snäll mot aluminium och andra metaller!\r\n\r\nAnvänd gärna vårt doserings mått och vår pump spray.\r\n\r\nDenna löser alltså inte tjära/asfaltsfläckar, då behöver ni min kallavfettning Dissolve! Finns även som Ready To Use spädd till 10%!\r\n\r\n<strong>Då frågan kommer väldigt ofta så förklarar jag det enkelt här under:</strong>\r\n\r\n<strong><em>För 5% blandning tar ni volymen, exempelvis 500ml x 0,05 = 25ml, för 10% tar ni 500 ml x 0,1 osv!</em></strong>\r\n\r\n<strong>Doft: </strong>Persika\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>FARA: Orsakar allvarliga frätskador på hud och ögon. Använd skyddshandskar och skyddskläder samt ögonskydd eller ansiktsskydd. VID FÖRTÄRING: Skölj munnen. Framkalla INTE kräkning. VID HUDKONTAKT (även håret): Ta omedelbart av alla nedstänkta kläder. Skölj huden med vatten eller duscha. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt att skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN. Innehåller: Kaliumhydroxid. Nonjoniska tensider 5-15% Amfotera tensider 5-15%.</strong>', 'EXTRACT - ALKALISK AVFETTNING', 'Extract är en högeffektiv och superkoncentrerad alkalisk avfettning lämplig för alla typer av fordon, golv, fasader etc. Lyfter organisk smuts och doftar härligt av persika. Blandas 5-15% i vatten och 1 liter ger således 20 liter färdig produkt att använda. Fungerar även utmärkt för grövre smuts på golvmattor etc.', 'publish', 'open', 'closed', '', 'extract-alkalisk-avfettning', '', '', '2023-05-02 21:36:33', '2023-05-02 19:36:33', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 1 liter', 'Volym: 1 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-1-liter', '', '', '2023-04-27 11:32:14', '2023-04-27 09:32:14', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=69', 1, 'product_variation', '', 0),
(70, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 25 liter', 'Volym: 25 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-25-liter', '', '', '2023-05-02 13:21:38', '2023-05-02 11:21:38', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=70', 2, 'product_variation', '', 0),
(71, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-5-liter', '', '', '2023-05-02 21:36:31', '2023-05-02 19:36:31', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=71', 3, 'product_variation', '', 0),
(72, 1, '2023-04-25 12:49:50', '2023-04-25 10:49:50', '<strong>Ny formula för vintern 2021!</strong>\r\n\r\nVision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).\r\n\r\nVision+ lämnar en effektiv avrinning på rutan som hjälper till att hålla dom rena längre samt du sparar på torkarna och sikten blir bättre.\r\n\r\nSuperenkel att använda, bara duscha i duken, applicera och torka av. Se till att vänd på duken och buffa upp ytan (för att torka ordentligt rent). Eftersom Vision+ lämnar en coating efter sig kan det i vissa lägen vara enklare att ha en ren duk vid sidan om och torka av med. Då den verkligen är superdryg så är ledordet less is more här också!\r\n\r\nKöp gärna till en glasduk eller allround-duk som gör en enorm skillnad på hur enkelt det är putsa glas rent och fint! Kom ihåg att dubbla dukar är att föredra, oavsett vilken produkt du använder.\r\n<ol>\r\n 	<li><strong> Duscha i din glasduk eller direkt på ytan.</strong></li>\r\n 	<li><strong> Torka ut och vänd på duken och buffa upp!</strong></li>\r\n 	<li><strong> Njut av glansen och avrinningen :)</strong></li>\r\n</ol>\r\nJag rekommenderar alltid att skaka produkten innan användning. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Skogsbär\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: &lt;5 % anjoniska tensider. &lt;5% nonjoniska tensider. Konserveringsmedel: Sodium-Hydroxymethylclycinate. Doft: 3,7 -dimethyl6-octen1-ol (dl-citronellol), ethyl acetate, 1,8-cineole, limonene, linalool, anthranilic acid: methyl ester, 4-tert-butylcyclohexyl acetate. Propan-2-ol;.2-Butoxyethanol. VARNING: Orsakar allvarlig ögonirritation. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Tvätta händer grundligt efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Vid bestående ögonirritation sök läkarhjälp. Innehållet i behållaren lämnas till anläggning för hantering av varligt avfall.</strong>', 'VISION+ GLASS CLEANER 500ML', 'Vision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2023-04-25 12:49:50', '2023-04-25 10:49:50', '', 67, 'http://localhost/webshop_grupp1/?p=72', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(73, 1, '2023-04-25 12:50:14', '2023-04-25 10:50:14', 'Refined är en oljebaserad (petroleum) produkt som återställer dina däck och plastdetaljer i ett drag. Väldigt lättanvänd samt lämnar en slitstark skyddande hinna efter sig. Ger en satin finish som gör det snyggt och fräscht utan några krusiduller!\r\n\r\nProdukten är primärt framtagen för att återställa däcksidor men fungerar faktiskt lika bra på plastdetaljer, motorrum, gummilister mm. Jag har valt ha den i lättare gelform ish för att den enkelt ska kunna komma in i alla skarvar och kanter på däcken samt vara lätt -applicerad.\r\n\r\nDå den är petroleumbaserad (olja) så blandar den sig inte direkt fantastiskt med vatten, så försök ha ytan ni ska applicera på så torr som möjligt, funkar ju såklart på lite fukt/blöt också.\r\n<ol>\r\n 	<li><strong> Rengör ytan (med exempelvis APC eller Extract)</strong></li>\r\n 	<li><strong>Applicera med valfri skum-pad</strong></li>\r\n 	<li><strong>Låt torka</strong></li>\r\n 	<li><strong>Torka av eventuellt överflöd med en ren MF-duk</strong></li>\r\n 	<li><strong>Visst är den bra? :)</strong></li>\r\n</ol>\r\nOm du vill ha mer wet look kan fler lager appliceras! Innehåller inga högfluorerande ämnen!\r\n\r\nPrestandan ur en däckglans (oavsett märke) hänger oftast på underarbetet. Se till att rengöra däcket ordentligt med både Relive och Extract (även Dissolve om så krävs), dundra på med borste eller pensel. Spola ordentligt och torka rent, ni kommer bli lyckligare av att göra så. Biologiskt nedbrytbar och innehåller inga högfluorerande ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Ingen\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: Hydrocarbons, n-alkanes, cycloalkanes, &lt; 2% aromatics. </strong><strong>Low boiling point hydrogen treated naphtha - naphtha (petroleum), hydrotreathed hevy.</strong>\r\n<strong>FARA: Kan vara dödligt vid förtäring om det kommer ned i luftvägarna. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Förvaras oåtkomligt för barn. VID FÖRTÄRING: Kontakta genast GIFTINFORMATIONSCENTRALEN/läkare. Framkalla INTE kräkning. Förvaras inlåst. Innehållet/behållaren lämnas till anläggning för hantering av farligt gods.</strong>', 'REFINED - RUBBER AND TRIM 500ML', 'Refined är en oljebaserad (petroleum) produkt som återställer dina däck och plastdetaljer i ett drag. Väldigt lättanvänd samt lämnar en slitstark skyddande hinna efter sig. Ger en satin finish som gör det snyggt och fräscht utan några krusiduller!', 'publish', 'open', 'closed', '', 'refined-rubber-and-trim-500ml', '', '', '2023-05-02 13:21:38', '2023-05-02 11:21:38', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2023-04-25 13:43:18', '2023-04-25 11:43:18', '<strong>UPPDATERAT UTSEENDE OCH NY FORMULA!</strong>\r\n\r\nÄnnu mer doft och smuttare förpackning!\r\n\r\nKlassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj\r\n\r\n<strong>Ej märkningspliktig.</strong>\r\n\r\n<strong>Innehåll:\r\nGrönt äpple: 2,4-dimetylcyklohex-3-en-1-karbaldehyd. Vanilj: Allyl 3-cyklohexylpropionat, kumarin, isoeugenol. Jordgubbe: 1-(2,6,6-trimetylcyklohex-1-en-1-yl)but-2-en-1-on, linalylacetat. Kan ge en allergisk reaktion.</strong>', 'AIR FRESHENER', 'Klassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj', 'publish', 'open', 'closed', '', 'air-freshener', '', '', '2023-05-04 14:03:32', '2023-05-04 12:03:32', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Äpple', 'Dofter: Äpple', 'publish', 'closed', 'closed', '', 'air-freshener-apple', '', '', '2023-05-01 14:38:55', '2023-05-01 12:38:55', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=75', 1, 'product_variation', '', 0),
(76, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Jordgubb', 'Dofter: Jordgubb', 'publish', 'closed', 'closed', '', 'air-freshener-jordgubb', '', '', '2023-05-04 14:03:26', '2023-05-04 12:03:26', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=76', 2, 'product_variation', '', 0),
(77, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Vanilj', 'Dofter: Vanilj', 'publish', 'closed', 'closed', '', 'air-freshener-vanilj', '', '', '2023-04-25 13:49:26', '2023-04-25 11:49:26', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=77', 3, 'product_variation', '', 0),
(79, 1, '2023-04-25 13:51:36', '2023-04-25 11:51:36', 'Supernice hoodie i riktigt bra kvalitet, helt i linje med märkessaker!\r\n\r\nStorlekarna är "normala" lite lite slimfit så känns riktigt modern och bra.', 'LOGO HOODIE - SVART', 'Supernice hoodie i riktigt bra kvalitet', 'publish', 'open', 'closed', '', 'logo-hoodie-svart', '', '', '2023-05-02 21:17:32', '2023-05-02 19:17:32', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Large', 'Storlek: Large', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-large', '', '', '2023-04-27 11:29:59', '2023-04-27 09:29:59', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=80', 1, 'product_variation', '', 0),
(81, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Medium', 'Storlek: Medium', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-medium', '', '', '2023-05-02 21:17:26', '2023-05-02 19:17:26', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=81', 2, 'product_variation', '', 0),
(82, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Small', 'Storlek: Small', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-small', '', '', '2023-04-27 11:29:59', '2023-04-27 09:29:59', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=82', 3, 'product_variation', '', 0),
(83, 1, '2023-04-25 14:18:35', '2023-04-25 12:18:35', 'T-shirt i ruskigt bra kvalitet (220gsm). Riktigt välarbetad med liten tershine logga över bröstet, och stort ryggtryck med med vår Yaris GR.\r\n\r\nNormala storlekar, vill du ha lite mer oversize fit så går du upp en storlek.\r\n\r\nUNISEX\r\n\r\nTillgänglig i storlekarna S-L', 'T-SHIRT - YARIS GR', 'T-shirt i ruskigt bra kvalitet', 'publish', 'open', 'closed', '', 't-shirt-yaris-gr', '', '', '2023-05-02 13:21:44', '2023-05-02 11:21:44', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Large', 'Storlek: Large', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-large', '', '', '2023-05-02 13:21:38', '2023-05-02 11:21:38', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=84', 1, 'product_variation', '', 0),
(85, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Medium', 'Storlek: Medium', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-medium', '', '', '2023-05-01 14:38:55', '2023-05-01 12:38:55', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=85', 2, 'product_variation', '', 0),
(86, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Small', 'Storlek: Small', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-small', '', '', '2023-04-27 11:27:58', '2023-04-27 09:27:58', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=86', 3, 'product_variation', '', 0),
(87, 1, '2023-04-25 14:25:34', '2023-04-25 12:25:34', 'Grymt smutt och robust hink som rymmer drygt 18 liter. Riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar. Grit-guard och vattentätt lock samt tryckt logga och litermått på sidan. Ett måste i tvätthallen eller på uppfarten.\r\n\r\nHöjd inklusive lock 40 cm\r\nBredd inklusive lock 30 cm', 'WASH BUCKET', 'Grymt smutt och robust hink som rymmer drygt 18 liter.', 'publish', 'open', 'closed', '', 'wash-bucket', '', '', '2023-05-02 21:26:14', '2023-05-02 19:26:14', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2023-04-25 14:44:15', '2023-04-25 12:44:15', 'Ni undrar kanske som mig vart den där fula och fuktiga p-skivan i papp är varje gång man behöver den! Därför tycker jag detta är en smutt pryl om man som mig sällan behöver skrapa rutorna, så kan ni istället ha den som en snygg P-skiva. Så en riktigt nice P-skiva / Isskrapa i bra kvalitet helt enkelt. Även smidigt litet hack för att dra bort is på vindrutetorkarna samt däckdjupsmätare.\r\n\r\nKan vara lite lite ”kinkiga” första snurren (plast mot plast). Prova håll den i ena handen och skruva med två fingrar OM det skulle hända första gångerna.', 'P-SKIVA / ISSKRAPA', 'En riktigt nice P-skiva / Isskrapa i bra kvalitet', 'publish', 'open', 'closed', '', 'p-skiva-isskrapa', '', '', '2023-04-27 11:25:23', '2023-04-27 09:25:23', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=88', 0, 'product', '', 0),
(90, 1, '2023-04-25 14:53:45', '2023-04-25 12:53:45', 'Utskuren dekal med texten PLEASE DO NOT PET  (för er som är trötta på alla polare som måste ”känna” på glansen).\r\n\r\n<strong>Färg:</strong> Vit', 'UTSKUREN DEKAL - 8 CM', 'Utskuren dekal med texten PLEASE DO NOT PET', 'publish', 'open', 'closed', '', 'utskuren-dekal-8-cm', '', '', '2023-04-27 11:24:39', '2023-04-27 09:24:39', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2023-04-25 14:56:16', '2023-04-25 12:56:16', 'Samma grund-modell som mina vanliga torkdukar men med dubbla sidor istället samt 75x90 i storlek. Enorm uppsugningsförmåga och är mycket skonsam mot alla typer av ytor.\r\n\r\n<strong>GSM:</strong> 1060\r\nStorlek: 75x90\r\nMaterial: 80% Polyester, 20% Polyamid\r\n\r\nTillverkad i Korea\r\n\r\n<strong>Skötselråd:</strong> Tvättas i 40- 60 grader utan mjukmedel. Skippa vanligt tvättmedel då det oftast har en förmåga att "stänga" fibrerna och gör att dukarna fungerar sämre. Kör med Refresh - Fiber Wash alternativt APC/Alkaliskt (någon kork i maskinen) så brukar det fungera fin fint', 'DRYING TOWEL BIG', 'Torkduk med dubbla sidor', 'publish', 'open', 'closed', '', 'drying-towel-big', '', '', '2023-05-03 12:06:40', '2023-05-03 10:06:40', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2023-04-25 15:02:11', '2023-04-25 13:02:11', '', 'drying-towel-big', 'torkduk', 'inherit', 'open', 'closed', '', 'drying-towel-big', '', '', '2023-04-25 15:02:25', '2023-04-25 13:02:25', '', 91, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/drying-towel-big.webp', 0, 'attachment', 'image/webp', 0),
(94, 1, '2023-04-25 15:03:42', '2023-04-25 13:03:42', 'Riktigt trevlig och högkvalitativ tryckspruta tillverkade av Kwazar som underlättar tvätten enormt. 1,5 l -behållare för kallavfettning (Dissolve) samt en avlastningsventil för att enkelt kunna släppa på trycket när man är färdig. tershine -loggan, det står även stort på flaskan vad dom är tänkta till för typ av kem. Två modeller, så se till att välja den modellen som passar er (eller ta båda):\r\n\r\nPetroliumbaserade avfettningar med pH -värden mellan 1-7', 'SPRAY PUMP - PETROLEUM', 'Riktigt trevlig och högkvalitativ tryckspruta', 'publish', 'open', 'closed', '', 'spray-pump-petroleum', '', '', '2023-04-27 11:22:32', '2023-04-27 09:22:32', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2023-04-25 15:06:02', '2023-04-25 13:06:02', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed-4', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=95', 0, 'product', '', 0),
(96, 1, '2023-04-25 15:06:40', '2023-04-25 13:06:40', 'Riktigt trevlig och högkvalitativ tryckspruta tillverkade av Kwazar som underlättar tvätten enormt. 1,5 l -behållare för alkalisk avfettning (Extract) samt en avlastningsventil för att enkelt kunna släppa på trycket när man är färdig. tershine -loggan, det står även stort på flaskan vad dom är tänkta till för typ av kem. Två modeller, så se till att välja den modellen som passar er (eller ta båda):\r\n\r\nAlkalisk för pH-värden mellan 7-14', 'SPRAY PUMP - ALKALISK', 'Riktigt trevlig och högkvalitativ tryckspruta', 'publish', 'open', 'closed', '', 'spray-pump-alkalisk', '', '', '2023-04-27 11:21:50', '2023-04-27 09:21:50', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2023-04-25 15:08:44', '2023-04-25 13:08:44', 'Riktigt smutt däck och plast-applikator av bra kvalitet. Lite tjockare så man slipper gegga ned händerna samt att den täcker bra även på större fordon så som lastbilar, hjullastare mm. Ett måste tillsammans med Refined - Rubber &amp; Trim. Går galant att klippa med en sax om man vill ha den mindre.', 'APPLICATOR', 'Riktigt smutt däck och plast-applikator av bra kvalitet.', 'publish', 'open', 'closed', '', 'applicator', '', '', '2023-05-03 12:06:40', '2023-05-03 10:06:40', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2023-04-25 15:10:51', '2023-04-25 13:10:51', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.\r\n\r\nNu i uppdaterad formula som innehåller en helt fantastisk odör-eliminerande funktion, blockerar och "dödar" dålig doft men behåller den fräscha (ja det låter flummigt, men du kommer inte bli missnöjd). Finns med Lime, Grönt Äpple, Viol eller Melon som doft, det är inte vattenmelon utan en lite söt fräsch doft bara så det blir inte too much.\r\n\r\nGår galant att späda ut om ni känner för det, ni får prova er fram vad ni gillar bäst men tänk på att ju mer ni späder den ju sämre blir odörblockeringsfunktionen! Men allt mellan 1:1 -1:25 beroende på smutsighetsgrad. Finns i 500ml, 5l och 25l -förpackningar.\r\n\r\n<strong>1. Duscha på valfri yta (eller i duk)</strong>\r\n<strong>2. Använd borste för att rugga upp ytan om det är mycket skitigt.</strong>\r\n<strong>3. Torka av med valfri mikrofiberduk</strong>\r\n<strong>4. Ja jag vet, superenkel att använda!</strong><strong>Om ni vill boosta på odörblockerings-funktionen lite extra så prova att duscha lite på mattorna i bilen och använd fläktens återcirkulerande funktion (så det får dra runt i kanaler, filter osv). Sen är det bara torka av dom och njuta av den fräscha doften.</strong>\r\n\r\nTänk på att inte använda för mycket tryck med duken om ni rengör en sliten insida, bättre vara lite försiktig och använd penslar etc för att få upp smutsen! Samt såklart inte i direkt solljus osv.\r\n\r\nFungerar självklart kanon i hemmet också. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Kan bli lite grumlig när den står, bara skaka den innan användning. Så med andra ord inget fel.\r\n\r\nFörvaras frostfritt.\r\n\r\nFlera dofter:\r\nÄpple\r\nJordgubbe\r\nCederträ\r\nMelon\r\nLime\r\nViol\r\n\r\n<strong>Safety data sheets are available on request.</strong>\r\n\r\n<strong>Contains: MGDA, &lt; 5%: non-ionic surfactants. </strong><strong>5-15%: anionic surfactants. Preservative: Sodium - Hydroxymethylglycinate. Fragrance: Perfume, HexylCinnamal. - Ethersulfate; N-(Cocoalkyl)-dimethylamine oxide. DANGER: Irritating to skin, Causes serious eye damage. Keep out of reach of children. Keep package or label handy in case you need to seek medical attention. Wash hands thoroughly after use. Wear protective gloves/protective clothing/eye/face protection. IF IN CONTACT WITH SKIN: Wash with plenty of water. IF IN EYES: Rinse gently with water for several minutes. Remove contact lenses if possible. Continue rinsing. Immediately contact the poison information centre/doctor. Take contents of container to hazardous waste facility.</strong>', 'APC - INTERIOR CLEANER', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.', 'publish', 'open', 'closed', '', 'apc-interior-cleaner', '', '', '2023-05-02 21:34:45', '2023-05-02 19:34:45', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2023-04-25 15:12:41', '2023-04-25 13:12:41', '', 'APC - INTERIOR CLEANER - 5 liter, Äpple', 'Volym: 5 liter, Dofter: Äpple', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-apple-5-liter', '', '', '2023-04-27 11:20:17', '2023-04-27 09:20:17', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=99', 1, 'product_variation', '', 0),
(103, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 5 liter, Melon', 'Volym: 5 liter, Dofter: Melon', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-melon-5-liter', '', '', '2023-04-27 11:20:17', '2023-04-27 09:20:17', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=103', 2, 'product_variation', '', 0),
(106, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Äpple', 'Volym: 500 ml, Dofter: Äpple', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-apple-500-ml', '', '', '2023-05-02 21:34:40', '2023-05-02 19:34:40', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=106', 3, 'product_variation', '', 0),
(107, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Cederträ', 'Volym: 500 ml, Dofter: Cederträ', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-cedertra-500-ml', '', '', '2023-04-27 11:20:17', '2023-04-27 09:20:17', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=107', 4, 'product_variation', '', 0),
(108, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Jordgubb', 'Volym: 500 ml, Dofter: Jordgubb', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-jordgubb-500-ml', '', '', '2023-05-01 14:48:48', '2023-05-01 12:48:48', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=108', 5, 'product_variation', '', 0),
(109, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Lime', 'Volym: 500 ml, Dofter: Lime', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-lime-500-ml', '', '', '2023-04-27 11:20:17', '2023-04-27 09:20:17', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=109', 6, 'product_variation', '', 0),
(110, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Melon', 'Volym: 500 ml, Dofter: Melon', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-melon-500-ml', '', '', '2023-04-27 11:20:17', '2023-04-27 09:20:17', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=110', 7, 'product_variation', '', 0),
(112, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Viol', 'Volym: 500 ml, Dofter: Viol', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-viol-500-ml', '', '', '2023-05-02 21:17:26', '2023-05-02 19:17:26', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=112', 8, 'product_variation', '', 0),
(116, 1, '2023-04-25 15:29:53', '2023-04-25 13:29:53', '', 'inlagg2-gloss', '', 'inherit', 'open', 'closed', '', 'inlagg2-gloss', '', '', '2023-04-25 15:29:53', '2023-04-25 13:29:53', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2-gloss.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2023-04-25 15:29:57', '2023-04-25 13:29:57', '', 'inlagg3-apc2', 'sparyflaska', 'inherit', 'open', 'closed', '', 'inlagg3-apc2', '', '', '2023-04-25 15:54:37', '2023-04-25 13:54:37', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg3-apc2.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2023-04-25 15:30:00', '2023-04-25 13:30:00', '', 'revive', 'energidryck', 'inherit', 'open', 'closed', '', 'revive', '', '', '2023-04-25 15:40:51', '2023-04-25 13:40:51', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/revive.webp', 0, 'attachment', 'image/webp', 0),
(127, 1, '2023-04-24 15:33:54', '2023-04-24 13:33:54', '<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph"><a href="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/"><strong>REVIVE - LEMONADE ENERGY DRINK&nbsp;</strong>&nbsp;</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'publish', 'closed', 'open', '', 'nyhet-pa-gang', '', '', '2023-05-03 15:26:26', '2023-05-03 13:26:26', '', 0, 'http://localhost/webshop_grupp1/?p=127', 0, 'post', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(128, 1, '2023-04-25 15:43:22', '2023-04-25 13:43:22', '<!-- wp:paragraph -->\n<p><strong>REVIVE - LEMONADE ENERGY DRINK&nbsp;</strong>&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2023-04-25 15:43:22', '2023-04-25 13:43:22', '', 127, 'http://localhost/webshop_grupp1/?p=128', 0, 'revision', '', 0),
(133, 2, '2023-04-23 15:49:15', '2023-04-23 13:49:15', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Men de produkter som är slut kommer fyllas på nu successivt framöver, <a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/"> APC Cederträ</a> finns nu att beställa i butik och online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Produkter åter i lager ', '', 'publish', 'closed', 'open', '', 'ater-i-laget', '', '', '2023-05-03 15:26:55', '2023-05-03 13:26:55', '', 0, 'http://localhost/webshop_grupp1/?p=133', 0, 'post', '', 0),
(134, 1, '2023-04-25 15:52:37', '2023-04-25 13:52:37', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen <img src="blob:http://localhost/2abbd175-51b1-4b23-911f-23cc3a7b24ab" alt="😁"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan <img src="blob:http://localhost/8ad6a7a3-dd0d-4bf9-b80d-63bd9274b7b8" alt="🤔"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna <img src="blob:http://localhost/f73616ca-fc12-49c6-b111-323ad9f67492" alt="✋🏻"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss <img alt="💦" src="blob:http://localhost/b26c4520-65b4-4380-95b0-8c78981de199">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går <img src="blob:http://localhost/e09eb51c-7ccd-4e5e-957b-4ab7c13c9202" alt="🙌🏻"> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® <img src="blob:http://localhost/5e268d4b-e6e0-40ba-ad55-6abcb2dbd8ec" alt="🔥"><img src="blob:http://localhost/6a06f073-acfe-4a80-901d-86852ebc0232" alt="🇸🇪"><img src="blob:http://localhost/f8c7b9b8-ffa4-4676-bdc6-c7144af2a67b" alt="🔥"></p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 15:52:37', '2023-04-25 13:52:37', '', 133, 'http://localhost/webshop_grupp1/?p=134', 0, 'revision', '', 0),
(135, 2, '2023-04-25 15:53:13', '2023-04-25 13:53:13', '<!-- wp:paragraph -->\n<p>På fredag firar vi 5 år av mighty gloss!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph"><a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/">APC Viol </a>släpps kl 12:00 på fredag. </p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'publish', 'closed', 'open', '', 'nyhet-slapps-pa-fredag', '', '', '2023-05-03 15:25:48', '2023-05-03 13:25:48', '', 0, 'http://localhost/webshop_grupp1/?p=135', 0, 'post', '', 0),
(136, 1, '2023-04-25 15:54:48', '2023-04-25 13:54:48', '<!-- wp:paragraph -->\n<p>På fredag firar 5 år av migthy gloss! <br>APC - Viol <img src="blob:http://localhost/ab48fc83-3c85-41e5-b798-585e47c51e57" alt="😁">Släpps kl 12:00 fredag <img src="blob:http://localhost/3e2f5872-59ce-40f4-97be-c4ee6c72afa5" alt="👌🏻"><img src="blob:http://localhost/f95c713b-1a9d-4de4-befa-96b355a0320e" alt="💜"><img src="blob:http://localhost/30f0dab2-7584-496b-b623-ffe0d879319a" alt="🇸🇪"><img src="blob:http://localhost/9a90cfd2-bc27-4a6c-9e4e-d3a897ef34d6" alt="💜"></p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-25 15:54:48', '2023-04-25 13:54:48', '', 135, 'http://localhost/webshop_grupp1/?p=136', 0, 'revision', '', 0),
(137, 1, '2023-04-25 15:55:38', '2023-04-25 13:55:38', '<!-- wp:paragraph -->\n<p>På fredag firar 5 år av migthy gloss!&nbsp;<br>APC - Viol <img src="blob:http://localhost/ab48fc83-3c85-41e5-b798-585e47c51e57" alt="😁">Släpps kl 12:00 fredag <img src="blob:http://localhost/3e2f5872-59ce-40f4-97be-c4ee6c72afa5" alt="👌🏻"><img src="blob:http://localhost/f95c713b-1a9d-4de4-befa-96b355a0320e" alt="💜"><img src="blob:http://localhost/30f0dab2-7584-496b-b623-ffe0d879319a" alt="🇸🇪"><img src="blob:http://localhost/9a90cfd2-bc27-4a6c-9e4e-d3a897ef34d6" alt="💜"></p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-25 15:55:38', '2023-04-25 13:55:38', '', 135, 'http://localhost/webshop_grupp1/?p=137', 0, 'revision', '', 0),
(139, 2, '2023-04-19 15:56:11', '2023-04-19 13:56:11', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Idag kl 10:00 kommer ett nytt drop på vår nya <a href="http://localhost/webshop_grupp1/product/wash-bucket/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/wash-bucket/">Wash Bucket</a> som är riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar.&nbsp;<br>Skaffa den innan helgen för den obligatoriska helg-tvätten!</p>\n<!-- /wp:paragraph -->', 'Röktonad tvätthink', '', 'publish', 'closed', 'open', '', 'roktonad-tvatthink', '', '', '2023-05-03 15:27:17', '2023-05-03 13:27:17', '', 0, 'http://localhost/webshop_grupp1/?p=139', 0, 'post', '', 0),
(140, 1, '2023-04-25 15:57:18', '2023-04-25 13:57:18', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår supersnygga University Hoodie med riktigt välarbetad tershine-brodyr.<img src="blob:http://localhost/4ab67f2d-41cd-4385-95ff-71ad80266afa" alt="💦"><img src="blob:http://localhost/0472048c-5538-49a0-a497-f305c6454e3e" alt="🇸🇪"><img src="blob:http://localhost/2a059f29-0feb-4705-8ac4-8cf83db94427" alt="💦"></p>\n<!-- /wp:paragraph -->', 'Ny hoodie på G', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-04-25 15:57:18', '2023-04-25 13:57:18', '', 139, 'http://localhost/webshop_grupp1/?p=140', 0, 'revision', '', 0),
(141, 1, '2023-04-25 15:58:24', '2023-04-25 13:58:24', '<!-- wp:paragraph -->\n<p>Välkommen till WordPress. Detta är ditt första inlägg. Du kan redigera det eller ta bort det. Sedan är det bara att börja skriva!</p>\n<!-- /wp:paragraph -->', 'Hej världen!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-04-25 15:58:24', '2023-04-25 13:58:24', '', 1, 'http://localhost/webshop_grupp1/?p=141', 0, 'revision', '', 0),
(142, 2, '2023-03-21 15:58:00', '2023-03-21 14:58:00', '<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Foam </a>och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria foam, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Form</a> , räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'publish', 'closed', 'open', '', 'kolla-in-var-nya-elevate-snow-foam', '', '', '2023-05-03 15:27:47', '2023-05-03 13:27:47', '', 0, 'http://localhost/webshop_grupp1/?p=142', 0, 'post', '', 0),
(143, 1, '2023-04-25 16:00:41', '2023-04-25 14:00:41', '<!-- wp:paragraph -->\n<p>Vilken helg <img alt="😅" src="blob:http://localhost/240595b7-561b-408c-b0f8-7286ae141461">Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var <img alt="😂" src="blob:http://localhost/38f0b038-e982-4ae6-b08a-e282414331bb">Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) <img alt="☺️" src="blob:http://localhost/edd1fe09-54bd-458a-87a4-afcce6ed43d3">Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar <img alt="😎" src="blob:http://localhost/c0613161-1131-4cee-ba2f-b78a5fa19ae7">Hoppas alla kommer gilla nya Purify S + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu <img src="blob:http://localhost/31fa59de-5708-44c8-bb2e-41790a2f5d20" alt="🍀">Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia <img src="blob:http://localhost/aa97c424-2c70-406c-a347-9bfcf7ab160c" alt="👍🏻">Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov <img src="blob:http://localhost/7d35b861-824c-47f0-a241-38fb7852f7c4" alt="👌🏻">Godnatt och tack åter igen för all kärlek ni ger oss <img src="blob:http://localhost/0f59ca3c-1dd1-430c-8b42-7f301bb5d1ba" alt="💚"><img src="blob:http://localhost/1f3d7db4-3d65-4d87-8da3-a807113cdfd1" alt="🇸🇪"><img src="blob:http://localhost/6eaf5662-fabf-4cc7-ba9f-aa538ccd48d3" alt="💚"></p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Purify S+', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 16:00:41', '2023-04-25 14:00:41', '', 142, 'http://localhost/webshop_grupp1/?p=143', 0, 'revision', '', 0),
(144, 1, '2023-04-25 16:02:07', '2023-04-25 14:02:07', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen <img src="blob:http://localhost/2abbd175-51b1-4b23-911f-23cc3a7b24ab" alt="😁"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan <img src="blob:http://localhost/8ad6a7a3-dd0d-4bf9-b80d-63bd9274b7b8" alt="🤔"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna <img src="blob:http://localhost/f73616ca-fc12-49c6-b111-323ad9f67492" alt="✋🏻"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss <img alt="💦" src="blob:http://localhost/b26c4520-65b4-4380-95b0-8c78981de199">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går <img src="blob:http://localhost/e09eb51c-7ccd-4e5e-957b-4ab7c13c9202" alt="🙌🏻">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® <img src="blob:http://localhost/5e268d4b-e6e0-40ba-ad55-6abcb2dbd8ec" alt="🔥"><img src="blob:http://localhost/6a06f073-acfe-4a80-901d-86852ebc0232" alt="🇸🇪"><img src="blob:http://localhost/f8c7b9b8-ffa4-4676-bdc6-c7144af2a67b" alt="🔥"></p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 16:02:07', '2023-04-25 14:02:07', '', 133, 'http://localhost/webshop_grupp1/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-04-25 16:09:59', '2023-04-25 14:09:59', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna, Swish, Kort.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas jag ni blir nöjda med mina produkter men skulle det vara några problem som uppstår så kontakta gärna mig på en gång så löser vi det.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar jag den nya frakten från mig till dig. Byten går bra men meddela mig gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp!&nbsp;För försändelse som ej lösts ut och ej avbeställts utan gått i retur till&nbsp;tershine debiteras en avgift om f.n. 300 kr inkl. moms för att täcka frakt, returfrakt samt administration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via Shopify (webshops-lösningen) och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-04-25 16:09:59', '2023-04-25 14:09:59', '', 50, 'http://localhost/webshop_grupp1/?p=145', 0, 'revision', '', 0),
(148, 2, '2023-04-25 19:36:57', '2023-04-25 17:36:57', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.\n\nNu i uppdaterad formula som innehåller en helt fantastisk odör-eliminerande funktion, blockerar och "dödar" dålig doft men behåller den fräscha (ja det låter flummigt, men du kommer inte bli missnöjd). Finns med Lime, Grönt Äpple, Viol eller Melon som doft, det är inte vattenmelon utan en lite söt fräsch doft bara så det blir inte too much.\n\nGår galant att späda ut om ni känner för det, ni får prova er fram vad ni gillar bäst men tänk på att ju mer ni späder den ju sämre blir odörblockeringsfunktionen! Men allt mellan 1:1 -1:25 beroende på smutsighetsgrad. Finns i 500ml, 5l och 25l -förpackningar.\n\n<strong>1. Duscha på valfri yta (eller i duk)</strong>\n<strong>2. Använd borste för att rugga upp ytan om det är mycket skitigt.</strong>\n<strong>3. Torka av med valfri mikrofiberduk</strong>\n<strong>4. Ja jag vet, superenkel att använda!</strong><strong>Om ni vill boosta på odörblockerings-funktionen lite extra så prova att duscha lite på mattorna i bilen och använd fläktens återcirkulerande funktion (så det får dra runt i kanaler, filter osv). Sen är det bara torka av dom och njuta av den fräscha doften.</strong>\n\nTänk på att inte använda för mycket tryck med duken om ni rengör en sliten insida, bättre vara lite försiktig och använd penslar etc för att få upp smutsen! Samt såklart inte i direkt solljus osv.\n\nFungerar självklart kanon i hemmet också. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Kan bli lite grumlig när den står, bara skaka den innan användning. Så med andra ord inget fel.\n\nFörvaras frostfritt.\n\nFlera dofter:\nÄpple\nJordgubbe\nCederträ\nMelon\nLime\nViol\n\n<strong>Safety data sheets are available on request.</strong>\n\n<strong>Contains: MGDA, &lt; 5%: non-ionic surfactants. </strong><strong>5-15%: anionic surfactants. Preservative: Sodium - Hydroxymethylglycinate. Fragrance: Perfume, HexylCinnamal. - Ethersulfate; N-(Cocoalkyl)-dimethylamine oxide. DANGER: Irritating to skin, Causes serious eye damage. Keep out of reach of children. Keep package or label handy in case you need to seek medical attention. Wash hands thoroughly after use. Wear protective gloves/protective clothing/eye/face protection. IF IN CONTACT WITH SKIN: Wash with plenty of water. IF IN EYES: Rinse gently with water for several minutes. Remove contact lenses if possible. Continue rinsing. Immediately contact the poison information centre/doctor. Take contents of container to hazardous waste facility.</strong>', 'APC - INTERIOR CLEANER', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.', 'inherit', 'closed', 'closed', '', '98-autosave-v1', '', '', '2023-04-25 19:36:57', '2023-04-25 17:36:57', '', 98, 'http://localhost/webshop_grupp1/?p=148', 0, 'revision', '', 0),
(149, 2, '2023-04-25 19:38:23', '2023-04-25 17:38:23', '', 'New Slideshow', '', 'publish', 'closed', 'closed', '', 'new-slideshow', '', '', '2023-04-25 19:38:23', '2023-04-25 17:38:23', '', 0, 'http://localhost/webshop_grupp1/?post_type=ml-slider&p=149', 0, 'ml-slider', '', 0),
(150, 2, '2023-04-25 19:39:55', '2023-04-25 17:39:55', '', 'frontpage-slide4-img', '', 'inherit', 'open', 'closed', '', 'frontpage-slide4-img', '', '', '2023-04-25 19:42:29', '2023-04-25 17:42:29', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/frontpage-slide4-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 2, '2023-04-25 19:39:57', '2023-04-25 17:39:57', '', 'frontpage-slide-img', '', 'inherit', 'open', 'closed', '', 'frontpage-slide-img', '', '', '2023-04-25 19:41:52', '2023-04-25 17:41:52', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/frontpage-slide-img.png', 0, 'attachment', 'image/png', 0),
(152, 2, '2023-04-25 19:40:00', '2023-04-25 17:40:00', '', 'frontpage-slide3-img', '', 'inherit', 'open', 'closed', '', 'frontpage-slide3-img', '', '', '2023-04-25 19:42:16', '2023-04-25 17:42:16', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/frontpage-slide3-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(153, 2, '2023-04-25 19:40:01', '2023-04-25 17:40:01', '', 'frontpage-slide2-img', '', 'inherit', 'open', 'closed', '', 'frontpage-slide2-img', '', '', '2023-04-25 19:42:03', '2023-04-25 17:42:03', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/frontpage-slide2-img.jpg', 0, 'attachment', 'image/jpeg', 0),
(154, 2, '2023-04-25 19:41:52', '2023-04-25 17:41:52', '', 'Slider 149 - image', '', 'publish', 'closed', 'closed', '', 'slider-149-image', '', '', '2023-04-26 16:07:58', '2023-04-26 14:07:58', '', 0, 'http://localhost/webshop_grupp1/?post_type=ml-slide&#038;p=154', 0, 'ml-slide', '', 0),
(155, 2, '2023-04-25 19:42:03', '2023-04-25 17:42:03', '', 'Slider 149 - image', '', 'publish', 'closed', 'closed', '', 'slider-149-image-2', '', '', '2023-04-26 16:07:58', '2023-04-26 14:07:58', '', 0, 'http://localhost/webshop_grupp1/?post_type=ml-slide&#038;p=155', 1, 'ml-slide', '', 0),
(156, 2, '2023-04-25 19:42:16', '2023-04-25 17:42:16', '', 'Slider 149 - image', '', 'publish', 'closed', 'closed', '', 'slider-149-image-3', '', '', '2023-04-26 16:07:58', '2023-04-26 14:07:58', '', 0, 'http://localhost/webshop_grupp1/?post_type=ml-slide&#038;p=156', 2, 'ml-slide', '', 0),
(157, 2, '2023-04-25 19:42:29', '2023-04-25 17:42:29', '', 'Slider 149 - image', '', 'publish', 'closed', 'closed', '', 'slider-149-image-4', '', '', '2023-04-26 16:07:58', '2023-04-26 14:07:58', '', 0, 'http://localhost/webshop_grupp1/?post_type=ml-slide&#038;p=157', 3, 'ml-slide', '', 0),
(159, 2, '2023-04-25 19:51:23', '2023-04-25 17:51:23', '<!-- wp:paragraph -->\n<p>På fredag firar vi 5 år av mighty gloss!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>APC Viol släpps kl 12:00 på fredag. </p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-25 19:51:23', '2023-04-25 17:51:23', '', 135, 'http://localhost/webshop_grupp1/?p=159', 0, 'revision', '', 0),
(160, 2, '2023-04-25 19:52:57', '2023-04-25 17:52:57', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 19:52:57', '2023-04-25 17:52:57', '', 133, 'http://localhost/webshop_grupp1/?p=160', 0, 'revision', '', 0),
(161, 2, '2023-04-25 19:53:18', '2023-04-25 17:53:18', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår supersnygga University Hoodie med riktigt välarbetad tershine-brodyr.</p>\n<!-- /wp:paragraph -->', 'Ny hoodie på G', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-04-25 19:53:18', '2023-04-25 17:53:18', '', 139, 'http://localhost/webshop_grupp1/?p=161', 0, 'revision', '', 0),
(162, 2, '2023-04-25 19:54:08', '2023-04-25 17:54:08', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar Hoppas alla kommer gilla nya Purify S + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Purify S+', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 19:54:08', '2023-04-25 17:54:08', '', 142, 'http://localhost/webshop_grupp1/?p=162', 0, 'revision', '', 0),
(164, 2, '2023-04-25 19:57:44', '2023-04-25 17:57:44', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya Amplify + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Purify S+', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 19:57:44', '2023-04-25 17:57:44', '', 142, 'http://localhost/webshop_grupp1/?p=164', 0, 'revision', '', 0),
(165, 2, '2023-04-25 19:58:26', '2023-04-25 17:58:26', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya Amplify + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Amplify Wet coat', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 19:58:26', '2023-04-25 17:58:26', '', 142, 'http://localhost/webshop_grupp1/?p=165', 0, 'revision', '', 0),
(166, 2, '2023-04-25 19:58:46', '2023-04-25 17:58:46', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya Amplify + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår kommande Amplify Wet coat', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 19:58:46', '2023-04-25 17:58:46', '', 142, 'http://localhost/webshop_grupp1/?p=166', 0, 'revision', '', 0),
(167, 2, '2023-04-25 20:30:06', '2023-04-25 18:30:06', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed-3', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=167', 0, 'product', '', 0),
(168, 2, '2023-04-25 20:30:55', '2023-04-25 18:30:55', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed-2', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=168', 0, 'product', '', 0),
(169, 2, '2023-04-25 20:34:08', '2023-04-25 18:34:08', '', 'elevate-bloginlagg', '', 'inherit', 'open', 'closed', '', 'elevate-bloginlagg', '', '', '2023-04-25 20:35:50', '2023-04-25 18:35:50', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/elevate-bloginlagg.jpg', 0, 'attachment', 'image/jpeg', 0),
(171, 2, '2023-04-25 20:36:05', '2023-04-25 18:36:05', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya Elevate Snow Foam+ och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria foamen, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med Elevate Snow Foam, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 20:36:05', '2023-04-25 18:36:05', '', 142, 'http://localhost/webshop_grupp1/?p=171', 0, 'revision', '', 0),
(173, 2, '2023-04-25 20:46:53', '2023-04-25 18:46:53', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya Amplify + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 20:46:53', '2023-04-25 18:46:53', '', 142, 'http://localhost/webshop_grupp1/?p=173', 0, 'revision', '', 0),
(174, 2, '2023-04-25 20:47:21', '2023-04-25 18:47:21', '', 'inlagg2img', '', 'inherit', 'open', 'closed', '', 'inlagg2img', '', '', '2023-04-25 20:48:17', '2023-04-25 18:48:17', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2img.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 2, '2023-04-25 20:48:40', '2023-04-25 18:48:40', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, APC Cederträ finns nu i lager igen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 20:48:40', '2023-04-25 18:48:40', '', 133, 'http://localhost/webshop_grupp1/?p=175', 0, 'revision', '', 0),
(176, 2, '2023-04-25 20:55:27', '2023-04-25 18:55:27', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 20:55:27', '2023-04-25 18:55:27', '', 133, 'http://localhost/webshop_grupp1/?p=176', 0, 'revision', '', 0),
(177, 2, '2023-04-25 20:57:12', '2023-04-25 18:57:12', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver,  APC Cederträ finns nu att beställa i butik och online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 20:57:12', '2023-04-25 18:57:12', '', 133, 'http://localhost/webshop_grupp1/?p=177', 0, 'revision', '', 0),
(179, 2, '2023-04-25 20:57:40', '2023-04-25 18:57:40', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver,  APC Cederträ finns nu att beställa i butik och online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Produkter åter i lager ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 20:57:40', '2023-04-25 18:57:40', '', 133, 'http://localhost/webshop_grupp1/?p=179', 0, 'revision', '', 0),
(180, 2, '2023-04-25 21:03:16', '2023-04-25 19:03:16', '', 'wahbucket-inlagg', '', 'inherit', 'open', 'closed', '', 'wahbucket-inlagg', '', '', '2023-04-25 21:06:37', '2023-04-25 19:06:37', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/wahbucket-inlagg.jpg', 0, 'attachment', 'image/jpeg', 0),
(182, 2, '2023-04-25 21:07:11', '2023-04-25 19:07:11', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår nya Wash Bucket som är riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar. <br>Skaffa den innan helgen för den obligatoriska helg-tvätten!</p>\n<!-- /wp:paragraph -->', 'Röktonad tvätthink', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-04-25 21:07:11', '2023-04-25 19:07:11', '', 139, 'http://localhost/webshop_grupp1/?p=182', 0, 'revision', '', 0),
(183, 2, '2023-04-25 21:11:02', '2023-04-25 19:11:02', '', 'AUTO-DRAFT', '', 'trash', 'open', 'closed', '', '__trashed', '', '', '2023-05-01 13:58:49', '2023-05-01 11:58:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=183', 0, 'product', '', 0),
(184, 2, '2023-04-25 21:16:33', '2023-04-25 19:16:33', '', 'Blogg', '', 'publish', 'closed', 'closed', '', 'blogg', '', '', '2023-04-25 21:16:43', '2023-04-25 19:16:43', '', 0, 'http://localhost/webshop_grupp1/?page_id=184', 0, 'page', '', 0),
(185, 2, '2023-04-25 21:16:42', '2023-04-25 19:16:42', '', 'Blogg', '', 'inherit', 'closed', 'closed', '', '184-revision-v1', '', '', '2023-04-25 21:16:42', '2023-04-25 19:16:42', '', 184, 'http://localhost/webshop_grupp1/?p=185', 0, 'revision', '', 0),
(186, 2, '2023-04-27 12:18:40', '2023-04-27 10:18:40', 'Riktigt smutt däck och plast-applikator av bra kvalitet. Lite tjockare så man slipper gegga ned händerna samt att den täcker bra även på större fordon så som lastbilar, hjullastare mm. Ett måste tillsammans med Refined - Rubber &amp; Trim. Går galant att klippa med en sax om man vill ha den mindre.', 'APPLICATOR', '<p>Riktigt smutt däck och plast-applikator av bra kvalitet.</p>', 'inherit', 'closed', 'closed', '', '97-autosave-v1', '', '', '2023-04-27 12:18:40', '2023-04-27 10:18:40', '', 97, 'http://localhost/webshop_grupp1/?p=186', 0, 'revision', '', 0),
(187, 2, '2023-05-05 09:11:43', '2023-04-26 08:03:46', '', 'Hem', '', 'publish', 'closed', 'closed', '', 'hem', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=187', 1, 'nav_menu_item', '', 0),
(188, 2, '2023-05-05 09:11:43', '2023-04-26 08:03:46', ' ', '', '', 'publish', 'closed', 'closed', '', '188', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=188', 4, 'nav_menu_item', '', 0),
(190, 2, '2023-05-05 09:11:43', '2023-04-26 08:03:46', ' ', '', '', 'publish', 'closed', 'closed', '', '190', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=190', 2, 'nav_menu_item', '', 0),
(191, 2, '2023-04-26 10:04:02', '2023-04-26 08:04:02', '', 'Butiker', '', 'publish', 'closed', 'closed', '', 'butik', '', '', '2023-04-27 16:45:03', '2023-04-27 14:45:03', '', 0, 'http://localhost/webshop_grupp1/?page_id=191', 0, 'page', '', 0),
(192, 2, '2023-04-26 10:04:11', '2023-04-26 08:04:11', '', 'Butiker', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2023-04-26 10:04:11', '2023-04-26 08:04:11', '', 191, 'http://localhost/webshop_grupp1/?p=192', 0, 'revision', '', 0),
(193, 2, '2023-04-26 10:04:21', '2023-04-26 08:04:21', '<!-- wp:contact-form-7/contact-form-selector {"id":246,"title":"Contact form 1"} -->\n<div class="wp-block-contact-form-7-contact-form-selector">[contact-form-7 id="246" title="Contact form 1"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Hitta hit</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Arenavägen 35<br>121 77 Johanneshov<br>Stockholm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2023-04-26 20:51:39', '2023-04-26 18:51:39', '', 0, 'http://localhost/webshop_grupp1/?page_id=193', 0, 'page', '', 0),
(194, 2, '2023-04-26 10:04:33', '2023-04-26 08:04:33', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-04-26 10:04:33', '2023-04-26 08:04:33', '', 193, 'http://localhost/webshop_grupp1/?p=194', 0, 'revision', '', 0),
(195, 2, '2023-05-05 09:11:43', '2023-04-26 08:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '195', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=195', 5, 'nav_menu_item', '', 0),
(196, 2, '2023-05-05 09:11:43', '2023-04-26 08:05:18', ' ', '', '', 'publish', 'closed', 'closed', '', '196', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=196', 3, 'nav_menu_item', '', 0),
(197, 2, '2023-04-26 10:18:57', '2023-04-26 08:18:57', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageAlign":"left","featuredImageSizeSlug":"medium","featuredImageSizeWidth":231,"featuredImageSizeHeight":231,"align":"center"} /-->', 'Hem', '', 'publish', 'closed', 'closed', '', 'hem', '', '', '2023-04-26 21:32:22', '2023-04-26 19:32:22', '', 0, 'http://localhost/webshop_grupp1/?page_id=197', 0, 'page', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(198, 2, '2023-04-26 10:19:05', '2023-04-26 08:19:05', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:19:05', '2023-04-26 08:19:05', '', 197, 'http://localhost/webshop_grupp1/?p=198', 0, 'revision', '', 0),
(200, 2, '2023-04-26 10:22:57', '2023-04-26 08:22:57', '<!-- wp:shortcode -->\n[featured_products]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:22:57', '2023-04-26 08:22:57', '', 197, 'http://localhost/webshop_grupp1/?p=200', 0, 'revision', '', 0),
(202, 2, '2023-04-26 10:27:28', '2023-04-26 08:27:28', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[featured_products columns="4"]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:27:28', '2023-04-26 08:27:28', '', 197, 'http://localhost/webshop_grupp1/?p=202', 0, 'revision', '', 0),
(203, 2, '2023-04-26 10:28:22', '2023-04-26 08:28:22', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="3" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:28:22', '2023-04-26 08:28:22', '', 197, 'http://localhost/webshop_grupp1/?p=203', 0, 'revision', '', 0),
(204, 2, '2023-04-26 10:28:52', '2023-04-26 08:28:52', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="2" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:28:52', '2023-04-26 08:28:52', '', 197, 'http://localhost/webshop_grupp1/?p=204', 0, 'revision', '', 0),
(205, 2, '2023-04-26 10:30:23', '2023-04-26 08:30:23', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="1" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:30:23', '2023-04-26 08:30:23', '', 197, 'http://localhost/webshop_grupp1/?p=205', 0, 'revision', '', 0),
(206, 2, '2023-04-26 10:30:57', '2023-04-26 08:30:57', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="1" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:30:57', '2023-04-26 08:30:57', '', 197, 'http://localhost/webshop_grupp1/?p=206', 0, 'revision', '', 0),
(208, 2, '2023-04-26 10:32:05', '2023-04-26 08:32:05', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"25%"} -->\n<div class="wp-block-column" style="flex-basis:25%"><!-- wp:shortcode -->\n[products limit="3" columns="1" visibility="featured" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {"width":"25%"} -->\n<div class="wp-block-column" style="flex-basis:25%"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {"width":"25%"} -->\n<div class="wp-block-column" style="flex-basis:25%"></div>\n<!-- /wp:column -->\n\n<!-- wp:column {"width":"25%"} -->\n<div class="wp-block-column" style="flex-basis:25%"></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:32:05', '2023-04-26 08:32:05', '', 197, 'http://localhost/webshop_grupp1/?p=208', 0, 'revision', '', 0),
(210, 2, '2023-04-26 10:32:56', '2023-04-26 08:32:56', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="1" visibility="featured" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:32:56', '2023-04-26 08:32:56', '', 197, 'http://localhost/webshop_grupp1/?p=210', 0, 'revision', '', 0),
(212, 2, '2023-04-26 10:34:58', '2023-04-26 08:34:58', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="3" visibility="featured" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:34:58', '2023-04-26 08:34:58', '', 197, 'http://localhost/webshop_grupp1/?p=212', 0, 'revision', '', 0),
(214, 2, '2023-04-26 10:37:31', '2023-04-26 08:37:31', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:37:31', '2023-04-26 08:37:31', '', 197, 'http://localhost/webshop_grupp1/?p=214', 0, 'revision', '', 0),
(215, 2, '2023-04-26 10:44:00', '2023-04-26 08:44:00', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" visibility="featured" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:44:00', '2023-04-26 08:44:00', '', 197, 'http://localhost/webshop_grupp1/?p=215', 0, 'revision', '', 0),
(216, 2, '2023-04-26 10:44:51', '2023-04-26 08:44:51', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 10:44:51', '2023-04-26 08:44:51', '', 197, 'http://localhost/webshop_grupp1/?p=216', 0, 'revision', '', 0),
(218, 2, '2023-04-26 11:22:43', '2023-04-26 09:22:43', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="3" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="2" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 11:22:43', '2023-04-26 09:22:43', '', 197, 'http://localhost/webshop_grupp1/?p=218', 0, 'revision', '', 0),
(219, 2, '2023-04-26 11:30:57', '2023-04-26 09:30:57', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="3" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 11:30:57', '2023-04-26 09:30:57', '', 197, 'http://localhost/webshop_grupp1/?p=219', 0, 'revision', '', 0),
(220, 2, '2023-04-26 11:32:10', '2023-04-26 09:32:10', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 11:32:10', '2023-04-26 09:32:10', '', 197, 'http://localhost/webshop_grupp1/?p=220', 0, 'revision', '', 0),
(221, 2, '2023-04-26 11:34:38', '2023-04-26 09:34:38', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 11:34:38', '2023-04-26 09:34:38', '', 197, 'http://localhost/webshop_grupp1/?p=221', 0, 'revision', '', 0),
(222, 2, '2023-04-26 11:59:33', '2023-04-26 09:59:33', '<!-- wp:metaslider/slider {"slideshowId":149} -->\n<div class="alignnormal">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 11:59:33', '2023-04-26 09:59:33', '', 197, 'http://localhost/webshop_grupp1/?p=222', 0, 'revision', '', 0),
(223, 2, '2023-04-26 12:09:40', '2023-04-26 10:09:40', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:09:40', '2023-04-26 10:09:40', '', 197, 'http://localhost/webshop_grupp1/?p=223', 0, 'revision', '', 0),
(224, 2, '2023-04-26 12:32:48', '2023-04-26 10:32:48', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"wide"} -->\n<div class="alignwide">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:32:48', '2023-04-26 10:32:48', '', 197, 'http://localhost/webshop_grupp1/?p=224', 0, 'revision', '', 0),
(225, 2, '2023-04-26 12:35:19', '2023-04-26 10:35:19', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"wide"} -->\n<div class="alignwide">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="3" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="3" columns="3" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="3" columns="3" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:35:19', '2023-04-26 10:35:19', '', 197, 'http://localhost/webshop_grupp1/?p=225', 0, 'revision', '', 0),
(226, 2, '2023-04-26 12:36:44', '2023-04-26 10:36:44', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"wide"} -->\n<div class="alignwide">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:36:44', '2023-04-26 10:36:44', '', 197, 'http://localhost/webshop_grupp1/?p=226', 0, 'revision', '', 0),
(227, 2, '2023-04-26 12:40:07', '2023-04-26 10:40:07', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"wide"} -->\n<div class="alignwide">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', '', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:40:07', '2023-04-26 10:40:07', '', 197, 'http://localhost/webshop_grupp1/?p=227', 0, 'revision', '', 0),
(228, 2, '2023-04-26 12:40:30', '2023-04-26 10:40:30', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"wide"} -->\n<div class="alignwide">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 12:40:30', '2023-04-26 10:40:30', '', 197, 'http://localhost/webshop_grupp1/?p=228', 0, 'revision', '', 0),
(229, 2, '2023-04-26 13:15:43', '2023-04-26 11:15:43', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 13:15:43', '2023-04-26 11:15:43', '', 197, 'http://localhost/webshop_grupp1/?p=229', 0, 'revision', '', 0),
(230, 2, '2023-04-26 14:19:49', '2023-04-26 12:19:49', '<strong>KOMMER VÅREN 2023! </strong>', 'REVIVE - LEMONADE ENERGY DRINK', 'Revive Lemonad Energy Drink\r\n\r\n<strong>KOMMER VÅREN 2023! </strong>', 'publish', 'open', 'closed', '', 'revive-lemonade-energy-drink', '', '', '2023-04-27 11:17:54', '2023-04-27 09:17:54', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=230', 0, 'product', '', 0),
(232, 2, '2023-04-26 14:52:16', '2023-04-26 12:52:16', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, <a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/"> APC Cederträ</a> finns nu att beställa i butik och online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Produkter åter i lager ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-26 14:52:16', '2023-04-26 12:52:16', '', 133, 'http://localhost/webshop_grupp1/?p=232', 0, 'revision', '', 0),
(234, 2, '2023-04-26 14:59:26', '2023-04-26 12:59:26', '<!-- wp:paragraph -->\n<p>Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Foam </a>och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!  </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria foam, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Form</a> , räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-26 14:59:26', '2023-04-26 12:59:26', '', 142, 'http://localhost/webshop_grupp1/?p=234', 0, 'revision', '', 0),
(235, 2, '2023-04-26 15:00:09', '2023-04-26 13:00:09', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår nya <a href="http://localhost/webshop_grupp1/product/wash-bucket/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/wash-bucket/">Wash Bucket</a> som är riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar. <br>Skaffa den innan helgen för den obligatoriska helg-tvätten!</p>\n<!-- /wp:paragraph -->', 'Röktonad tvätthink', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-04-26 15:00:09', '2023-04-26 13:00:09', '', 139, 'http://localhost/webshop_grupp1/?p=235', 0, 'revision', '', 0),
(236, 2, '2023-04-26 15:01:26', '2023-04-26 13:01:26', '<!-- wp:paragraph -->\n<p><a href="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/"><strong>REVIVE - LEMONADE ENERGY DRINK </strong> </a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2023-04-26 15:01:26', '2023-04-26 13:01:26', '', 127, 'http://localhost/webshop_grupp1/?p=236', 0, 'revision', '', 0),
(237, 2, '2023-04-26 15:02:08', '2023-04-26 13:02:08', '<!-- wp:paragraph -->\n<p>På fredag firar vi 5 år av mighty gloss!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/">APC Viol </a>släpps kl 12:00 på fredag. </p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-26 15:02:08', '2023-04-26 13:02:08', '', 135, 'http://localhost/webshop_grupp1/?p=237', 0, 'revision', '', 0),
(238, 2, '2023-04-26 16:33:38', '2023-04-26 14:33:38', '', 'logo', '', 'inherit', 'closed', 'closed', '', 'logo', '', '', '2023-04-26 16:34:43', '2023-04-26 14:34:43', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/logo.png', 0, 'attachment', 'image/png', 0),
(239, 2, '2023-04-26 16:35:17', '2023-04-26 14:35:17', '{"storefront-child::custom_logo":{"value":238,"type":"theme_mod","user_id":2,"date_modified_gmt":"2023-04-26 14:35:05"}}', '', '', 'trash', 'closed', 'closed', '', 'ac38910b-bfb3-43f1-9921-b5b83fc3faf1', '', '', '2023-04-26 16:35:17', '2023-04-26 14:35:17', '', 0, 'http://localhost/webshop_grupp1/?p=239', 0, 'customize_changeset', '', 0),
(240, 2, '2023-04-26 17:24:02', '2023-04-26 15:24:02', '', 'Produkter', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-04-26 17:24:02', '2023-04-26 15:24:02', '', 46, 'http://localhost/webshop_grupp1/?p=240', 0, 'revision', '', 0),
(241, 2, '2023-04-26 17:37:34', '2023-04-26 15:37:34', '', 'Shop', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-04-26 17:37:34', '2023-04-26 15:37:34', '', 46, 'http://localhost/webshop_grupp1/?p=241', 0, 'revision', '', 0),
(242, 2, '2023-04-26 17:51:49', '2023-04-26 15:51:49', '', 'Produkter', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2023-04-26 17:51:49', '2023-04-26 15:51:49', '', 46, 'http://localhost/webshop_grupp1/?p=242', 0, 'revision', '', 0),
(243, 2, '2023-04-26 18:08:36', '2023-04-26 16:08:36', '', 'drying-towel-big2', '', 'inherit', '', 'closed', '', 'drying-towel-big2', '', '', '2023-04-26 18:08:36', '2023-04-26 16:08:36', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/drying-towel-big2.webp', 0, 'attachment', 'image/webp', 0),
(245, 2, '2023-04-26 20:36:19', '2023-04-26 18:36:19', '<!-- wp:gutenberg-wpgmza/block /-->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-04-26 20:36:19', '2023-04-26 18:36:19', '', 193, 'http://localhost/webshop_grupp1/?p=245', 0, 'revision', '', 0),
(246, 2, '2023-04-26 20:37:44', '2023-04-26 18:37:44', '<label> Namn\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> Email\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> Ärende\r\n    [select* Subject class:subject-contact-form include_blank "Kontakt" "Reklamation" "Faktura"] </label>\r\n\r\n<label> Meddelande (frivilligt)\r\n    [textarea your-message] </label>\r\n\r\n[submit "Skicka"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <sandra.hostkannerberg@medieinstitutet.se>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <sandra.hostkannerberg@medieinstitutet.se>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-04-26 20:48:51', '2023-04-26 18:48:51', '', 0, 'http://localhost/webshop_grupp1/?post_type=wpcf7_contact_form&#038;p=246', 0, 'wpcf7_contact_form', '', 0),
(247, 2, '2023-04-26 20:38:38', '2023-04-26 18:38:38', '<!-- wp:gutenberg-wpgmza/block /-->\n\n<!-- wp:contact-form-7/contact-form-selector {"id":246,"title":"Contact form 1"} -->\n<div class="wp-block-contact-form-7-contact-form-selector">[contact-form-7 id="246" title="Contact form 1"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-04-26 20:38:38', '2023-04-26 18:38:38', '', 193, 'http://localhost/webshop_grupp1/?p=247', 0, 'revision', '', 0),
(249, 2, '2023-04-26 20:51:39', '2023-04-26 18:51:39', '<!-- wp:contact-form-7/contact-form-selector {"id":246,"title":"Contact form 1"} -->\n<div class="wp-block-contact-form-7-contact-form-selector">[contact-form-7 id="246" title="Contact form 1"]</div>\n<!-- /wp:contact-form-7/contact-form-selector -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Hitta hit</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Arenavägen 35<br>121 77 Johanneshov<br>Stockholm</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gutenberg-wpgmza/block /-->', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '193-revision-v1', '', '', '2023-04-26 20:51:39', '2023-04-26 18:51:39', '', 193, 'http://localhost/webshop_grupp1/?p=249', 0, 'revision', '', 0),
(251, 2, '2023-04-26 21:27:14', '2023-04-26 19:27:14', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageSizeWidth":150,"featuredImageSizeHeight":150,"align":"center"} /-->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 21:27:14', '2023-04-26 19:27:14', '', 197, 'http://localhost/webshop_grupp1/?p=251', 0, 'revision', '', 0),
(252, 2, '2023-04-26 21:28:17', '2023-04-26 19:28:17', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageAlign":"left","featuredImageSizeWidth":150,"featuredImageSizeHeight":150,"align":"center"} /-->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 21:28:17', '2023-04-26 19:28:17', '', 197, 'http://localhost/webshop_grupp1/?p=252', 0, 'revision', '', 0),
(253, 2, '2023-04-26 21:30:23', '2023-04-26 19:30:23', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageAlign":"left","featuredImageSizeWidth":300,"featuredImageSizeHeight":300,"align":"center"} /-->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 21:30:23', '2023-04-26 19:30:23', '', 197, 'http://localhost/webshop_grupp1/?p=253', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(254, 2, '2023-04-26 21:31:28', '2023-04-26 19:31:28', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageAlign":"left","featuredImageSizeSlug":"medium","align":"center"} /-->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 21:31:28', '2023-04-26 19:31:28', '', 197, 'http://localhost/webshop_grupp1/?p=254', 0, 'revision', '', 0),
(255, 2, '2023-04-26 21:32:22', '2023-04-26 19:32:22', '<!-- wp:metaslider/slider {"slideshowId":149,"stretch":"full"} -->\n<div class="alignfull">[metaslider id=149 cssclass=""]</div>\n<!-- /wp:metaslider/slider -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Populära produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" best_selling="true" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Rea produkter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:columns -->\n<div class="wp-block-columns"><!-- wp:column {"width":"100%"} -->\n<div class="wp-block-column" style="flex-basis:100%"><!-- wp:shortcode -->\n[products limit="4" columns="4" orderby="popularity" class="quick-sale" on_sale="true" ]\n<!-- /wp:shortcode --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Utvalda</h2>\n<!-- /wp:heading -->\n\n<!-- wp:shortcode -->\n[products limit="4" columns="4" visibility="featured" ]\n<!-- /wp:shortcode -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Senaste från bloggen</h2>\n<!-- /wp:heading -->\n\n<!-- wp:latest-posts {"postsToShow":1,"displayPostContent":true,"excerptLength":100,"displayFeaturedImage":true,"featuredImageAlign":"left","featuredImageSizeSlug":"medium","featuredImageSizeWidth":231,"featuredImageSizeHeight":231,"align":"center"} /-->', 'Hem', '', 'inherit', 'closed', 'closed', '', '197-revision-v1', '', '', '2023-04-26 21:32:22', '2023-04-26 19:32:22', '', 197, 'http://localhost/webshop_grupp1/?p=255', 0, 'revision', '', 0),
(256, 2, '2023-04-27 10:04:03', '2023-04-27 08:04:03', '{"woocommerce_terms_page_id":{"value":"50","type":"option","user_id":2,"date_modified_gmt":"2023-04-27 08:03:16"}}', '', '', 'trash', 'closed', 'closed', '', 'c5494072-6719-4430-9a16-af506d0cdbc6', '', '', '2023-04-27 10:04:03', '2023-04-27 08:04:03', '', 0, 'http://localhost/webshop_grupp1/?p=256', 0, 'customize_changeset', '', 0),
(257, 2, '2023-04-27 10:44:42', '2023-04-27 08:44:42', '', '100OFF', '100 kr rabatt', 'publish', 'closed', 'closed', '', '100off', '', '', '2023-04-27 12:39:01', '2023-04-27 10:39:01', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_coupon&#038;p=257', 0, 'shop_coupon', '', 0),
(258, 2, '2023-04-27 10:53:17', '2023-04-27 08:53:17', '{"woocommerce_checkout_privacy_policy_text":{"value":"Dina personuppgifter kommer att anv\\u00e4ndas f\\u00f6r att behandla din best\\u00e4llning, st\\u00f6dja din upplevelse p\\u00e5 denna webbplats och f\\u00f6r andra \\u00e4ndam\\u00e5l som beskrivs i v\\u00e5r [privacy_policy].","type":"option","user_id":2,"date_modified_gmt":"2023-04-27 08:53:17"}}', '', '', 'trash', 'closed', 'closed', '', 'ea710e65-a9b5-4150-a76e-e4a89a193f40', '', '', '2023-04-27 10:53:17', '2023-04-27 08:53:17', '', 0, 'http://localhost/webshop_grupp1/ea710e65-a9b5-4150-a76e-e4a89a193f40/', 0, 'customize_changeset', '', 0),
(259, 2, '2023-04-27 10:55:48', '2023-04-27 08:55:48', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi är</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Vår webbplatsadress är: http://localhost/webshop_grupp1.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Kommentarer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>När besökare lämnar kommentarer på webbplatsen samlar vi in de uppgifter som visas i kommentarsformuläret samt besökarens IP-adress och webbläsarens användaragent-sträng som hjälp för detektering av skräppost.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En anonymiserad sträng som skapats utifrån din e-postadress (även kallat hash-värde) kan komma att sändas till tjänsten Gravatar för att avgöra om du finns registrerad där. Integritetspolicyn för tjänsten Gravatar finns på https://automattic.com/privacy/. När din kommentar har godkänts visas din profilbild offentligt tillsammans med din kommentar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du laddar upp bilder till webbplatsen bör du undvika att ladda upp bilder där EXIF-data inkluderar data från GPS-lokalisering. Besökare till webbplatsen kan ladda ned och ta fram alla positioneringsuppgifter från bilder på webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookie-filer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du lämnar en kommentar på vår webbplats kan du välja att spara ditt namn, din e-postadress och webbplatsadress i cookie-filer. Detta är för din bekvämlighet för att du inte ska behöva fylla i dessa uppgifter igen nästa gång du skriver en kommentar. Dessa cookie-filer gäller i ett år.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du besöker vår inloggningssida kommer vi att sätta en tillfällig cookie för att undersöka om din webbläsare accepterar dem. Denna cookie innehåller inga personuppgifter och den försvinner när du stänger din webbläsare.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>När du loggar in kommer vi dessutom att skapa flera cookie-filer för att spara information om din inloggning och dina val för utformning av skärmlayouten. Cookie-filer för inloggning gäller i två dagar och cookie-filer för layoutval gäller i ett år. Om du kryssar i ”Kom ihåg mig” kommer din cookie att finnas kvar i två veckor. Om du loggar ut från ditt konto kommer cookie-filerna för inloggning att tas bort.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du redigerar eller publicerar en artikel kommer en extra cookie-fil att sparas i din webbläsare. Denna cookie-fil innehåller inga personuppgifter utan anger endast inläggs-ID för den artikel du just redigerade och löper ut efter ett dygn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Inbäddad innehåll från andra webbplatser</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>Artiklar på denna webbplats kan innehålla inbäddat innehåll (exempelvis videoklipp, bilder, artiklar o.s.v.). Inbäddat innehåll från andra webbplatser beter sig precis på samma sätt som om besökaren har besökt den andra webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dessa webbplatser kan samla in uppgifter om dig, använda cookie-filer, bädda in ytterligare spårning från tredje part och övervaka din interaktion med sagda inbäddade innehåll, inklusive spårning av din interaktion med detta inbäddade innehåll om du har ett konto och är inloggad på webbplatsen i fråga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi delar dina data med</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du begär återställning av lösenordet kommer din IP-adress att ingå i e-postmeddelandet om återställning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Hur länge vi behåller era uppgifter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du skriver en kommentar kommer kommentaren och dess metadata att sparas utan tidsgräns. Anledningen till detta är att vi behöver kunna hitta och godkänna uppföljningskommentarer automatiskt och inte lägga dem i kö för granskning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>För användare som registrerar sig på er webbplats (om sådana finns) sparar vi även de personuppgifter de anger i sin användarprofil. Alla användare kan se, redigera eller radera sina personuppgifter när som helst (med undantaget att de inte kan ändra sitt användarnamn). Även webbplatsens administratörer kan se och redigera denna information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka rättigheter du har över dina data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du har ett konto eller har skrivit några kommentarer på denna webbplats kan du begära en exportfil med de personuppgifter vi har om dig, inklusive alla uppgifter du har gett oss. Du kan också begära att vi tar bort alla personuppgifter vi har om dig. Detta omfattar inte eventuella uppgifter som vi är tvungna att spara av administrativa, legala eller säkerhetsändamål.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vart dina uppgifter skickas</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">F</strong>Kommentarer från besökare kanske kontrolleras via en automatiserad tjänst för detektering av skräppost.</p>\n<!-- /wp:paragraph -->', 'Integritetspolicy', '', 'inherit', 'closed', 'closed', '', '3-autosave-v1', '', '', '2023-04-27 10:55:48', '2023-04-27 08:55:48', '', 3, 'http://localhost/webshop_grupp1/?p=259', 0, 'revision', '', 0),
(260, 2, '2023-04-27 10:56:02', '2023-04-27 08:56:02', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi är</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Vår webbplatsadress är: http://localhost/webshop_grupp1.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Kommentarer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>När besökare lämnar kommentarer på webbplatsen samlar vi in de uppgifter som visas i kommentarsformuläret samt besökarens IP-adress och webbläsarens användaragent-sträng som hjälp för detektering av skräppost.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En anonymiserad sträng som skapats utifrån din e-postadress (även kallat hash-värde) kan komma att sändas till tjänsten Gravatar för att avgöra om du finns registrerad där. Integritetspolicyn för tjänsten Gravatar finns på https://automattic.com/privacy/. När din kommentar har godkänts visas din profilbild offentligt tillsammans med din kommentar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du laddar upp bilder till webbplatsen bör du undvika att ladda upp bilder där EXIF-data inkluderar data från GPS-lokalisering. Besökare till webbplatsen kan ladda ned och ta fram alla positioneringsuppgifter från bilder på webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookie-filer</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du lämnar en kommentar på vår webbplats kan du välja att spara ditt namn, din e-postadress och webbplatsadress i cookie-filer. Detta är för din bekvämlighet för att du inte ska behöva fylla i dessa uppgifter igen nästa gång du skriver en kommentar. Dessa cookie-filer gäller i ett år.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du besöker vår inloggningssida kommer vi att sätta en tillfällig cookie för att undersöka om din webbläsare accepterar dem. Denna cookie innehåller inga personuppgifter och den försvinner när du stänger din webbläsare.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>När du loggar in kommer vi dessutom att skapa flera cookie-filer för att spara information om din inloggning och dina val för utformning av skärmlayouten. Cookie-filer för inloggning gäller i två dagar och cookie-filer för layoutval gäller i ett år. Om du kryssar i ”Kom ihåg mig” kommer din cookie att finnas kvar i två veckor. Om du loggar ut från ditt konto kommer cookie-filerna för inloggning att tas bort.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Om du redigerar eller publicerar en artikel kommer en extra cookie-fil att sparas i din webbläsare. Denna cookie-fil innehåller inga personuppgifter utan anger endast inläggs-ID för den artikel du just redigerade och löper ut efter ett dygn.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Inbäddad innehåll från andra webbplatser</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial"> </strong>Artiklar på denna webbplats kan innehålla inbäddat innehåll (exempelvis videoklipp, bilder, artiklar o.s.v.). Inbäddat innehåll från andra webbplatser beter sig precis på samma sätt som om besökaren har besökt den andra webbplatsen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dessa webbplatser kan samla in uppgifter om dig, använda cookie-filer, bädda in ytterligare spårning från tredje part och övervaka din interaktion med sagda inbäddade innehåll, inklusive spårning av din interaktion med detta inbäddade innehåll om du har ett konto och är inloggad på webbplatsen i fråga.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka vi delar dina data med</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du begär återställning av lösenordet kommer din IP-adress att ingå i e-postmeddelandet om återställning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Hur länge vi behåller era uppgifter</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du skriver en kommentar kommer kommentaren och dess metadata att sparas utan tidsgräns. Anledningen till detta är att vi behöver kunna hitta och godkänna uppföljningskommentarer automatiskt och inte lägga dem i kö för granskning.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>För användare som registrerar sig på er webbplats (om sådana finns) sparar vi även de personuppgifter de anger i sin användarprofil. Alla användare kan se, redigera eller radera sina personuppgifter när som helst (med undantaget att de inte kan ändra sitt användarnamn). Även webbplatsens administratörer kan se och redigera denna information.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vilka rättigheter du har över dina data</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Om du har ett konto eller har skrivit några kommentarer på denna webbplats kan du begära en exportfil med de personuppgifter vi har om dig, inklusive alla uppgifter du har gett oss. Du kan också begära att vi tar bort alla personuppgifter vi har om dig. Detta omfattar inte eventuella uppgifter som vi är tvungna att spara av administrativa, legala eller säkerhetsändamål.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Vart dina uppgifter skickas</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Kommentarer från besökare kanske kontrolleras via en automatiserad tjänst för detektering av skräppost.</p>\n<!-- /wp:paragraph -->', 'Integritetspolicy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-04-27 10:56:02', '2023-04-27 08:56:02', '', 3, 'http://localhost/webshop_grupp1/?p=260', 0, 'revision', '', 0),
(261, 1, '2023-04-27 12:33:07', '2023-04-27 10:33:07', '', 'Order &ndash; april 27, 2023 @ 12:33 e m', '', 'wc-cancelled', 'closed', 'closed', 'wc_order_YuHh5QNhy3NLu', 'bestallning-27-apr-2023-kthursday-1033', '', '', '2023-04-27 14:09:55', '2023-04-27 12:09:55', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=261', 0, 'shop_order', '', 1),
(262, 1, '2023-04-27 12:34:42', '2023-04-27 10:34:42', '', 'Order &ndash; april 27, 2023 @ 12:34 e m', '', 'wc-completed', 'closed', 'closed', 'wc_order_i5zcaNxM93ChW', 'bestallning-27-apr-2023-kthursday-1034', '', '', '2023-05-01 14:43:28', '2023-05-01 12:43:28', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=262', 0, 'shop_order', '', 5),
(263, 2, '2023-04-27 14:37:16', '2023-04-27 12:37:16', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"butik";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Butiker', 'butiker', 'publish', 'closed', 'closed', '', 'group_644a6c7cc74de', '', '', '2023-05-02 14:01:50', '2023-05-02 12:01:50', '', 0, 'http://localhost/webshop_grupp1/?post_type=acf-field-group&#038;p=263', 0, 'acf-field-group', '', 0),
(264, 2, '2023-04-27 14:39:23', '2023-04-27 12:39:23', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Butikens namn', 'butikens_namn', 'publish', 'closed', 'closed', '', 'field_644a6c7d4450e', '', '', '2023-04-27 14:39:23', '2023-04-27 12:39:23', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&p=264', 0, 'acf-field', '', 0),
(265, 2, '2023-04-27 14:49:53', '2023-04-27 12:49:53', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'trash', 'closed', 'closed', '', 'den-fina-butiken-1__trashed', '', '', '2023-04-27 15:06:02', '2023-04-27 13:06:02', '', 191, 'http://localhost/webshop_grupp1/?page_id=265', 0, 'page', '', 0),
(266, 2, '2023-04-27 14:51:29', '2023-04-27 12:51:29', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2023-04-27 14:51:29', '2023-04-27 12:51:29', '', 265, 'http://localhost/webshop_grupp1/?p=266', 0, 'revision', '', 0),
(267, 2, '2023-04-27 14:51:30', '2023-04-27 12:51:30', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2023-04-27 14:51:30', '2023-04-27 12:51:30', '', 265, 'http://localhost/webshop_grupp1/?p=267', 0, 'revision', '', 0),
(270, 2, '2023-04-27 14:58:26', '2023-04-27 12:58:26', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2023-04-27 14:58:26', '2023-04-27 12:58:26', '', 265, 'http://localhost/webshop_grupp1/?p=270', 0, 'revision', '', 0),
(271, 2, '2023-04-27 14:58:49', '2023-04-27 12:58:49', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2023-04-27 14:58:49', '2023-04-27 12:58:49', '', 265, 'http://localhost/webshop_grupp1/?p=271', 0, 'revision', '', 0),
(272, 2, '2023-04-27 15:00:12', '2023-04-27 13:00:12', '<!-- wp:paragraph -->\n<p>fchgsvbjnkmjl,.sö-sfd</p>\n<!-- /wp:paragraph -->', 'Den fina butiken 1', '', 'inherit', 'closed', 'closed', '', '265-revision-v1', '', '', '2023-04-27 15:00:12', '2023-04-27 13:00:12', '', 265, 'http://localhost/webshop_grupp1/?p=272', 0, 'revision', '', 0),
(273, 2, '2023-04-27 15:03:23', '2023-04-27 13:03:23', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-27 15:03:23', '2023-04-27 13:03:23', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=273', 0, 'butik', '', 0),
(274, 2, '2023-04-27 15:04:14', '2023-04-27 13:04:14', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-27 15:04:14', '2023-04-27 13:04:14', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=274', 0, 'butik', '', 0),
(275, 2, '2023-04-27 15:05:33', '2023-04-27 13:05:33', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-27 15:05:33', '2023-04-27 13:05:33', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=275', 0, 'butik', '', 0),
(276, 4, '2023-04-27 15:06:09', '2023-04-27 13:06:09', '', 'Tershine Stockholm', '', 'publish', 'closed', 'closed', '', 'thershine-stockholm', '', '', '2023-05-02 14:55:04', '2023-05-02 12:55:04', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=276', 0, 'butik', '', 0),
(277, 2, '2023-04-27 15:09:00', '2023-04-27 13:09:00', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-27 15:09:00', '2023-04-27 13:09:00', '', 0, 'http://localhost/webshop_grupp1/?page_id=277', 0, 'page', '', 0),
(278, 4, '2023-04-27 15:13:22', '2023-04-27 13:13:22', '', 'Tershine Göteborg', '', 'publish', 'closed', 'closed', '', 'thershine-goteborg', '', '', '2023-05-02 14:54:02', '2023-05-02 12:54:02', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=278', 0, 'butik', '', 0),
(279, 4, '2023-04-27 15:16:39', '2023-04-27 13:16:39', '', 'Tershine Jukkasjärvi', '', 'publish', 'closed', 'closed', '', 'tershine-jukkasjarvi', '', '', '2023-05-02 14:52:52', '2023-05-02 12:52:52', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=279', 0, 'butik', '', 0),
(281, 2, '2023-04-27 16:24:50', '2023-04-27 14:24:50', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Våra butiker</h2>\n<!-- /wp:heading -->', 'Butiker', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2023-04-27 16:24:50', '2023-04-27 14:24:50', '', 191, 'http://localhost/webshop_grupp1/?p=281', 0, 'revision', '', 0),
(282, 2, '2023-04-27 16:25:18', '2023-04-27 14:25:18', '<!-- wp:heading {"level":1} -->\n<h1 class="wp-block-heading">Våra butiker</h1>\n<!-- /wp:heading -->', 'Butiker', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2023-04-27 16:25:18', '2023-04-27 14:25:18', '', 191, 'http://localhost/webshop_grupp1/?p=282', 0, 'revision', '', 0),
(283, 2, '2023-04-27 16:38:11', '2023-04-27 14:38:11', '', 'Butiker', '', 'inherit', 'closed', 'closed', '', '191-revision-v1', '', '', '2023-04-27 16:38:11', '2023-04-27 14:38:11', '', 191, 'http://localhost/webshop_grupp1/?p=283', 0, 'revision', '', 0),
(284, 2, '2023-04-27 17:19:39', '2023-04-27 15:19:39', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-27 17:19:39', '2023-04-27 15:19:39', '', 0, 'http://localhost/webshop_grupp1/?post_type=acf-taxonomy&p=284', 0, 'acf-taxonomy', '', 0),
(285, 2, '2023-04-27 17:59:07', '2023-04-27 15:59:07', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Gata', 'gata', 'publish', 'closed', 'closed', '', 'field_644a9a7ec7df0', '', '', '2023-04-27 17:59:07', '2023-04-27 15:59:07', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&p=285', 1, 'acf-field', '', 0),
(286, 2, '2023-04-27 17:59:07', '2023-04-27 15:59:07', 'a:13:{s:10:"aria-label";s:0:"";s:4:"type";s:6:"number";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:11:"placeholder";s:0:"";s:4:"step";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Postnummer', 'postnummer', 'publish', 'closed', 'closed', '', 'field_644a9b09c7df1', '', '', '2023-04-27 17:59:07', '2023-04-27 15:59:07', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&p=286', 2, 'acf-field', '', 0),
(287, 2, '2023-04-27 17:59:07', '2023-04-27 15:59:07', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Stad', 'stad', 'publish', 'closed', 'closed', '', 'field_644a9b2fc7df2', '', '', '2023-04-27 17:59:07', '2023-04-27 15:59:07', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&p=287', 3, 'acf-field', '', 0),
(288, 2, '2023-04-27 17:59:07', '2023-04-27 15:59:07', 'a:11:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Land', 'land', 'publish', 'closed', 'closed', '', 'field_644a9b3dc7df3', '', '', '2023-04-27 17:59:07', '2023-04-27 15:59:07', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&p=288', 4, 'acf-field', '', 0),
(289, 2, '2023-04-27 21:07:33', '2023-04-27 19:07:33', '<!-- wp:navigation-link {"label":"Hem","type":"custom","url":"http://localhost/webshop_grupp1/","kind":"custom","isTopLevelLink":true} /-->\n\n<!-- wp:navigation-link {"label":"Produkter","type":"page","id":46,"url":"http://localhost/webshop_grupp1/produkter/","kind":"post-type","isTopLevelLink":true} /-->\n\n<!-- wp:navigation-link {"label":"Butiker","type":"page","id":191,"url":"http://localhost/webshop_grupp1/butik/","kind":"post-type","isTopLevelLink":true} /-->\n\n<!-- wp:navigation-link {"label":"Blogg","type":"page","id":184,"url":"http://localhost/webshop_grupp1/blogg/","kind":"post-type","isTopLevelLink":true} /-->\n\n<!-- wp:navigation-link {"label":"Kontakt","type":"page","id":193,"url":"http://localhost/webshop_grupp1/kontakt/","kind":"post-type","isTopLevelLink":true} /-->', 'Huvud meny', '', 'publish', 'closed', 'closed', '', 'huvud-meny', '', '', '2023-04-27 21:07:33', '2023-04-27 19:07:33', '', 0, 'http://localhost/webshop_grupp1/huvud-meny/', 0, 'wp_navigation', '', 0),
(290, 2, '2023-04-28 10:00:02', '2023-04-28 08:00:02', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-28 10:00:02', '2023-04-28 08:00:02', '', 0, 'http://localhost/webshop_grupp1/?post_type=acf-taxonomy&p=290', 0, 'acf-taxonomy', '', 0),
(291, 1, '2023-05-01 14:38:13', '2023-05-01 12:38:13', '', 'Order &ndash; maj 1, 2023 @ 02:38 e m', '', 'trash', 'closed', 'closed', 'wc_order_pNYhPRUcniIaX', 'bestallning-1-may-2023-kmonday-1238__trashed', '', '', '2023-05-01 14:42:15', '2023-05-01 12:42:15', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=291', 0, 'shop_order', '', 4),
(292, 3, '2023-05-01 14:44:57', '2023-05-01 12:44:57', '', 'Automatiskt utkast', '', 'auto-draft', '', 'open', '', '', '', '', '2023-05-01 14:44:57', '2023-05-01 12:44:57', '', 0, 'http://localhost/webshop_grupp1/?p=292', 0, 'post', '', 0),
(293, 1, '2023-05-01 14:47:40', '2023-05-01 12:47:40', '', 'Order &ndash; maj 1, 2023 @ 02:47 e m', '', 'wc-cancelled', 'closed', 'closed', 'wc_order_Ug7mzE5uNJtyI', 'bestallning-1-may-2023-kmonday-1247', '', '', '2023-05-01 16:31:19', '2023-05-01 14:31:19', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=293', 0, 'shop_order', '', 8),
(294, 3, '2023-05-01 17:38:28', '2023-05-01 15:38:28', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-01 17:38:28', '2023-05-01 15:38:28', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=294', 0, 'butik', '', 0),
(295, 2, '2023-05-02 12:50:30', '2023-05-02 10:50:30', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-02 12:50:30', '2023-05-02 10:50:30', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=295', 0, 'butik', '', 0),
(296, 2, '2023-05-02 12:51:38', '2023-05-02 10:51:38', '<!-- wp:html /-->', '', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-05-02 13:39:32', '2023-05-02 11:39:32', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=296', 0, 'butik', '', 0),
(297, 4, '2023-05-02 13:14:03', '2023-05-02 11:14:03', '', 'Automatiskt utkast', '', 'auto-draft', '', 'open', '', '', '', '', '2023-05-02 13:14:03', '2023-05-02 11:14:03', '', 0, 'http://localhost/webshop_grupp1/?p=297', 0, 'post', '', 0),
(298, 1, '2023-05-02 13:21:08', '2023-05-02 11:21:08', '', 'Order &ndash; maj 2, 2023 @ 01:21 e m', '', 'wc-completed', 'closed', 'closed', 'wc_order_lZaGrATRAUxlG', 'bestallning-2-may-2023-ktuesday-1121', '', '', '2023-05-02 13:28:21', '2023-05-02 11:28:21', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=298', 0, 'shop_order', '', 8),
(299, 4, '2023-05-02 13:57:34', '2023-05-02 11:57:34', 'a:7:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Karta', 'karta', 'publish', 'closed', 'closed', '', 'field_6450f9b8469f8', '', '', '2023-05-02 14:01:50', '2023-05-02 12:01:50', '', 263, 'http://localhost/webshop_grupp1/?post_type=acf-field&#038;p=299', 5, 'acf-field', '', 0),
(300, 4, '2023-05-02 13:57:43', '2023-05-02 11:57:43', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-02 13:57:43', '2023-05-02 11:57:43', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=300', 0, 'butik', '', 0),
(301, 4, '2023-05-02 14:26:45', '2023-05-02 12:26:45', ' ', '', '', 'publish', 'closed', 'closed', '', '301', '', '', '2023-05-02 14:26:45', '2023-05-02 12:26:45', '', 0, 'http://localhost/webshop_grupp1/?p=301', 4, 'nav_menu_item', '', 0),
(302, 4, '2023-05-02 14:26:45', '2023-05-02 12:26:45', ' ', '', '', 'publish', 'closed', 'closed', '', '302', '', '', '2023-05-02 14:26:45', '2023-05-02 12:26:45', '', 0, 'http://localhost/webshop_grupp1/?p=302', 2, 'nav_menu_item', '', 0),
(303, 4, '2023-05-02 14:26:45', '2023-05-02 12:26:45', ' ', '', '', 'publish', 'closed', 'closed', '', '303', '', '', '2023-05-02 14:26:45', '2023-05-02 12:26:45', '', 0, 'http://localhost/webshop_grupp1/?p=303', 1, 'nav_menu_item', '', 0),
(304, 4, '2023-05-02 14:26:45', '2023-05-02 12:26:45', ' ', '', '', 'publish', 'closed', 'closed', '', '304', '', '', '2023-05-02 14:26:45', '2023-05-02 12:26:45', '', 0, 'http://localhost/webshop_grupp1/?p=304', 3, 'nav_menu_item', '', 0),
(305, 4, '2023-05-02 16:10:43', '2023-05-02 14:10:43', '', 'Tershine Borgholm', '', 'publish', 'closed', 'closed', '', 'tershine-borgholm', '', '', '2023-05-02 16:15:55', '2023-05-02 14:15:55', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=305', 0, 'butik', '', 0),
(306, 4, '2023-05-02 16:16:16', '2023-05-02 14:16:16', '', 'Tershine Malmö', '', 'publish', 'closed', 'closed', '', 'tershine-malmo', '', '', '2023-05-02 16:17:29', '2023-05-02 14:17:29', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&#038;p=306', 0, 'butik', '', 0),
(307, 4, '2023-05-05 09:12:00', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '307', '', '', '2023-05-05 09:12:00', '2023-05-05 07:12:00', '', 0, 'http://localhost/webshop_grupp1/?p=307', 1, 'nav_menu_item', '', 0),
(308, 4, '2023-05-05 09:12:01', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '308', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=308', 5, 'nav_menu_item', '', 0),
(309, 4, '2023-05-05 09:12:01', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '309', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=309', 4, 'nav_menu_item', '', 0),
(310, 4, '2023-05-05 09:12:01', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '310', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=310', 3, 'nav_menu_item', '', 0),
(311, 4, '2023-05-05 09:12:01', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '311', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=311', 6, 'nav_menu_item', '', 0),
(312, 4, '2023-05-05 09:12:00', '2023-05-02 14:37:17', ' ', '', '', 'publish', 'closed', 'closed', '', '312', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=312', 2, 'nav_menu_item', '', 0),
(313, 2, '2023-05-02 20:52:11', '2023-05-02 18:52:11', '', 'frifrakt', 'Fri frakt över 299 kr', 'trash', 'closed', 'closed', '', 'fri-frakt__trashed', '', '', '2023-05-03 09:34:36', '2023-05-03 07:34:36', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_coupon&#038;p=313', 0, 'shop_coupon', '', 0),
(314, 1, '2023-05-02 21:13:49', '2023-05-02 19:13:49', '', 'Automatiskt utkast', '', 'auto-draft', '', 'open', '', '', '', '', '2023-05-02 21:13:49', '2023-05-02 19:13:49', '', 0, 'http://localhost/webshop_grupp1/?p=314', 0, 'post', '', 0),
(315, 1, '2023-05-02 21:17:07', '2023-05-02 19:17:07', '', 'Order &ndash; maj 2, 2023 @ 09:17 e m', '', 'wc-completed', 'closed', 'closed', 'wc_order_C6KLuRHUJYpCu', 'bestallning-2-may-2023-ktuesday-1917', '', '', '2023-05-02 21:18:39', '2023-05-02 19:18:39', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=315', 0, 'shop_order', '', 4),
(316, 1, '2023-05-02 21:20:54', '2023-05-02 19:20:54', '', 'Order &ndash; maj 2, 2023 @ 09:20 e m', '', 'wc-completed', 'closed', 'closed', 'wc_order_EcVuoBKgQ7FXv', 'bestallning-2-may-2023-ktuesday-1920', '', '', '2023-05-02 21:23:05', '2023-05-02 19:23:05', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=316', 0, 'shop_order', '', 4),
(317, 1, '2023-05-02 21:26:13', '2023-05-02 19:26:13', '', 'Order &ndash; maj 2, 2023 @ 09:26 e m', '', 'trash', 'closed', 'closed', 'wc_order_eA4Vvu6FKDVuH', 'bestallning-2-may-2023-ktuesday-1926__trashed', '', '', '2023-05-03 09:29:13', '2023-05-03 07:29:13', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=317', 0, 'shop_order', '', 8),
(318, 1, '2023-05-02 21:29:00', '2023-05-02 19:29:00', '', 'Återbetalning &ndash; 2 May, 2023 kTuesday. 19:29', '', 'trash', 'closed', 'closed', 'wc_order_siTcbcb2MDCPA', 'aterbetalning-2-may-2023-ktuesday-1929', '', '', '2023-05-02 21:29:00', '2023-05-02 19:29:00', '', 317, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=318', 0, 'shop_order_refund', '', 0),
(319, 1, '2023-05-02 21:29:42', '2023-05-02 19:29:42', '', 'Återbetalning &ndash; 2 May, 2023 kTuesday. 19:29', '', 'trash', 'closed', 'closed', 'wc_order_SNpakCpV84cNz', 'aterbetalning-2-may-2023-ktuesday-1929-2', '', '', '2023-05-02 21:29:42', '2023-05-02 19:29:42', '', 317, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=319', 0, 'shop_order_refund', '', 0),
(320, 1, '2023-05-02 21:34:27', '2023-05-02 19:34:27', '', 'Order &ndash; maj 2, 2023 @ 09:34 e m', '', 'wc-completed', 'closed', 'closed', 'wc_order_gxS0oyn9xtQ9m', 'bestallning-2-may-2023-ktuesday-1934', '', '', '2023-05-02 21:36:58', '2023-05-02 19:36:58', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=320', 0, 'shop_order', '', 5),
(321, 1, '2023-05-02 21:35:38', '2023-05-02 19:35:38', '', 'Order &ndash; maj 2, 2023 @ 09:35 e m', '', 'wc-refunded', 'closed', 'closed', 'wc_order_1qaRtaq1O8e8m', 'bestallning-2-may-2023-ktuesday-1935', '', '', '2023-05-02 21:38:40', '2023-05-02 19:38:40', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=321', 0, 'shop_order', '', 5),
(322, 1, '2023-05-02 21:36:30', '2023-05-02 19:36:30', '', 'Återbetalning &ndash; 2 May, 2023 kTuesday. 19:36', '', 'wc-completed', 'closed', 'closed', 'wc_order_ENH6knZHTgspM', 'aterbetalning-2-may-2023-ktuesday-1936', '', '', '2023-05-02 21:36:30', '2023-05-02 19:36:30', '', 320, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=322', 0, 'shop_order_refund', '', 0),
(323, 1, '2023-05-02 21:38:19', '2023-05-02 19:38:19', '', 'Återbetalning &ndash; 2 May, 2023 kTuesday. 19:38', '', 'wc-completed', 'closed', 'closed', 'wc_order_msx5m3HPOnws7', 'aterbetalning-2-may-2023-ktuesday-1938', '', '', '2023-05-02 21:38:19', '2023-05-02 19:38:19', '', 321, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=323', 0, 'shop_order_refund', '', 0),
(324, 1, '2023-05-02 21:38:38', '2023-05-02 19:38:38', '', 'Återbetalning &ndash; 2 May, 2023 kTuesday. 19:38', '', 'wc-completed', 'closed', 'closed', 'wc_order_44QGNtcf4Ub79', 'aterbetalning-2-may-2023-ktuesday-1938-2', '', '', '2023-05-02 21:38:38', '2023-05-02 19:38:38', '', 321, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=324', 0, 'shop_order_refund', '', 0),
(325, 4, '2023-05-02 21:49:57', '2023-05-02 19:49:57', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna och betalning vid leverans.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas vi att ni blir nöjda med våra produkter men skulle det vara några problem som uppstår så kontakta gärna mig på en gång så löser vi det. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar jag den nya frakten från mig till dig. Byten går bra men meddela oss gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via vår webshop och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'inherit', 'closed', 'closed', '', '50-autosave-v1', '', '', '2023-05-02 21:49:57', '2023-05-02 19:49:57', '', 50, 'http://localhost/webshop_grupp1/?p=325', 0, 'revision', '', 0),
(326, 4, '2023-05-02 21:50:49', '2023-05-02 19:50:49', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna och betalning vid leverans.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas vi att ni blir nöjda med våra produkter men skulle det vara några problem som uppstår så kontakta gärna oss på en gång så löser vi det. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar vi den nya frakten frånoss till dig. Byten går bra men meddela oss gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via vår webshop och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-05-02 21:50:49', '2023-05-02 19:50:49', '', 50, 'http://localhost/webshop_grupp1/?p=326', 0, 'revision', '', 0),
(327, 2, '2023-05-03 09:38:05', '2023-05-03 07:38:05', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 09:38:05', '2023-05-03 07:38:05', '', 0, 'http://localhost/webshop_grupp1/?post_type=acf-taxonomy&p=327', 0, 'acf-taxonomy', '', 0),
(328, 2, '2023-05-03 09:45:25', '2023-05-03 07:45:25', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 09:45:25', '2023-05-03 07:45:25', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_coupon&p=328', 0, 'shop_coupon', '', 0),
(329, 1, '2023-05-03 12:06:29', '2023-05-03 10:06:29', '', 'Order &ndash; maj 3, 2023 @ 12:06 e m', '', 'wc-refunded', 'closed', 'closed', 'wc_order_yD7gbHHEsvWCB', 'bestallning-3-may-2023-kwednesday-1006', '', '', '2023-05-03 12:07:14', '2023-05-03 10:07:14', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=329', 0, 'shop_order', '', 5),
(330, 1, '2023-05-03 12:07:12', '2023-05-03 10:07:12', '', 'Återbetalning &ndash; 3 May, 2023 kWednesday. 10:07', '', 'wc-completed', 'closed', 'closed', 'wc_order_nL9A1jIkmuyEz', 'aterbetalning-3-may-2023-kwednesday-1007', '', '', '2023-05-03 12:07:12', '2023-05-03 10:07:12', '', 329, 'http://localhost/webshop_grupp1/?post_type=shop_order_refund&p=330', 0, 'shop_order_refund', '', 0),
(331, 2, '2023-05-03 12:28:26', '2023-05-03 10:28:26', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 12:28:26', '2023-05-03 10:28:26', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_coupon&p=331', 0, 'shop_coupon', '', 0),
(332, 2, '2023-05-03 13:51:55', '2023-05-03 11:51:55', '', 'AUTO-DRAFT', '', 'auto-draft', '', 'closed', '', '', '', '', '2023-05-03 13:51:55', '2023-05-03 11:51:55', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&p=332', 0, 'product', '', 0),
(333, 2, '2023-05-03 13:57:02', '2023-05-03 11:57:02', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 13:57:02', '2023-05-03 11:57:02', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=333', 0, 'butik', '', 0),
(334, 2, '2023-05-03 13:57:40', '2023-05-03 11:57:40', '', 'Automatiskt utkast', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-05-03 13:57:40', '2023-05-03 11:57:40', '', 0, 'http://localhost/webshop_grupp1/?post_type=butik&p=334', 0, 'butik', '', 0),
(335, 2, '2023-05-03 14:55:37', '2023-05-03 12:55:37', '', 'Automatiskt utkast', '', 'auto-draft', '', 'open', '', '', '', '', '2023-05-03 14:55:37', '2023-05-03 12:55:37', '', 0, 'http://localhost/webshop_grupp1/?p=335', 0, 'post', '', 0),
(336, 2, '2023-05-03 15:25:44', '2023-05-03 13:25:44', '<!-- wp:paragraph -->\n<p>På fredag firar vi 5 år av mighty gloss!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph"><a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/">APC Viol </a>släpps kl 12:00 på fredag. </p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-autosave-v1', '', '', '2023-05-03 15:25:44', '2023-05-03 13:25:44', '', 135, 'http://localhost/webshop_grupp1/?p=336', 0, 'revision', '', 0),
(337, 2, '2023-05-03 15:25:48', '2023-05-03 13:25:48', '<!-- wp:paragraph -->\n<p>På fredag firar vi 5 år av mighty gloss!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph"><a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/">APC Viol </a>släpps kl 12:00 på fredag. </p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-05-03 15:25:48', '2023-05-03 13:25:48', '', 135, 'http://localhost/webshop_grupp1/?p=337', 0, 'revision', '', 0),
(338, 2, '2023-05-03 15:26:26', '2023-05-03 13:26:26', '<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph"><a href="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/revive-lemonade-energy-drink/"><strong>REVIVE - LEMONADE ENERGY DRINK&nbsp;</strong>&nbsp;</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2023-05-03 15:26:26', '2023-05-03 13:26:26', '', 127, 'http://localhost/webshop_grupp1/?p=338', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(339, 2, '2023-05-03 15:26:55', '2023-05-03 13:26:55', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Men de produkter som är slut kommer fyllas på nu successivt framöver, <a href="http://localhost/webshop_grupp1/product/apc-interior-cleaner/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/apc-interior-cleaner/"> APC Cederträ</a> finns nu att beställa i butik och online.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® </p>\n<!-- /wp:paragraph -->', 'Produkter åter i lager ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-05-03 15:26:55', '2023-05-03 13:26:55', '', 133, 'http://localhost/webshop_grupp1/?p=339', 0, 'revision', '', 0),
(340, 2, '2023-05-03 15:27:17', '2023-05-03 13:27:17', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Idag kl 10:00 kommer ett nytt drop på vår nya <a href="http://localhost/webshop_grupp1/product/wash-bucket/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/wash-bucket/">Wash Bucket</a> som är riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar.&nbsp;<br>Skaffa den innan helgen för den obligatoriska helg-tvätten!</p>\n<!-- /wp:paragraph -->', 'Röktonad tvätthink', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-05-03 15:27:17', '2023-05-03 13:27:17', '', 139, 'http://localhost/webshop_grupp1/?p=340', 0, 'revision', '', 0),
(341, 2, '2023-05-03 15:27:38', '2023-05-03 13:27:38', '<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Foam </a>och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria foam, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Form</a> , räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-05-03 15:27:38', '2023-05-03 13:27:38', '', 142, 'http://localhost/webshop_grupp1/?p=341', 0, 'revision', '', 0),
(342, 2, '2023-05-03 15:27:47', '2023-05-03 13:27:47', '<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Vilken helg! <br>Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar.<br>Hoppas alla kommer gilla nya <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Foam </a>och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {"className":"post-paragraph"} -->\n<p class="post-paragraph">Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria foam, så vi har galet många paket att ta tag i nu.<br> Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia.<br>Kom också ihåg att less is more med <a href="http://localhost/webshop_grupp1/product/elevate-snow-foam/" data-type="URL" data-id="http://localhost/webshop_grupp1/product/elevate-snow-foam/">Elevate Snow Form</a> , räcker till många många appliceringar och kan spädas efter behov Godnatt och tack åter igen för all kärlek ni ger oss </p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Elevate Snow Foam', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-05-03 15:27:47', '2023-05-03 13:27:47', '', 142, 'http://localhost/webshop_grupp1/?p=342', 0, 'revision', '', 0),
(343, 5, '2023-05-04 09:25:51', '2023-05-04 07:25:51', '', 'Automatiskt utkast', '', 'auto-draft', '', 'open', '', '', '', '', '2023-05-04 09:25:51', '2023-05-04 07:25:51', '', 0, 'http://localhost/webshop_grupp1/?p=343', 0, 'post', '', 0),
(344, 1, '2023-05-04 14:03:11', '2023-05-04 12:03:11', '', 'Order &ndash; maj 4, 2023 @ 02:03 e m', '', 'wc-processing', 'closed', 'closed', 'wc_order_reePMeyEYAAmt', 'bestallning-4-may-2023-kthursday-1203', '', '', '2023-05-04 14:03:26', '2023-05-04 12:03:26', '', 0, 'http://localhost/webshop_grupp1/?post_type=shop_order&#038;p=344', 0, 'shop_order', '', 3),
(345, 2, '2023-05-05 09:11:09', '2023-05-05 07:11:09', '<!-- wp:shortcode -->\n[woocommerce_my_account]\n<!-- /wp:shortcode -->', 'Mitt konto', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2023-05-05 09:11:09', '2023-05-05 07:11:09', '', 49, 'http://localhost/webshop_grupp1/?p=345', 0, 'revision', '', 0),
(346, 2, '2023-05-05 09:11:43', '2023-05-05 07:11:43', ' ', '', '', 'publish', 'closed', 'closed', '', '346', '', '', '2023-05-05 09:11:43', '2023-05-05 07:11:43', '', 0, 'http://localhost/webshop_grupp1/?p=346', 6, 'nav_menu_item', '', 0),
(347, 2, '2023-05-05 09:12:01', '2023-05-05 07:12:01', ' ', '', '', 'publish', 'closed', 'closed', '', '347', '', '', '2023-05-05 09:12:01', '2023-05-05 07:12:01', '', 0, 'http://localhost/webshop_grupp1/?p=347', 7, 'nav_menu_item', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(51, 4, 0),
(51, 16, 0),
(51, 35, 0),
(51, 37, 0),
(51, 45, 0),
(53, 47, 0),
(54, 45, 0),
(56, 4, 0),
(56, 16, 0),
(56, 35, 0),
(56, 37, 0),
(56, 45, 0),
(57, 47, 0),
(58, 45, 0),
(59, 4, 0),
(59, 8, 0),
(59, 16, 0),
(59, 36, 0),
(59, 37, 0),
(59, 38, 0),
(59, 46, 0),
(61, 47, 0),
(63, 46, 0),
(67, 2, 0),
(67, 16, 0),
(67, 45, 0),
(68, 4, 0),
(68, 16, 0),
(68, 36, 0),
(68, 37, 0),
(68, 38, 0),
(68, 46, 0),
(69, 46, 0),
(70, 47, 0),
(71, 47, 0),
(73, 2, 0),
(73, 16, 0),
(73, 45, 0),
(74, 4, 0),
(74, 8, 0),
(74, 17, 0),
(74, 26, 0),
(74, 27, 0),
(74, 32, 0),
(74, 33, 0),
(74, 45, 0),
(79, 4, 0),
(79, 19, 0),
(79, 20, 0),
(79, 23, 0),
(79, 24, 0),
(79, 25, 0),
(79, 45, 0),
(83, 4, 0),
(83, 19, 0),
(83, 21, 0),
(83, 23, 0),
(83, 24, 0),
(83, 25, 0),
(83, 45, 0),
(87, 2, 0),
(87, 8, 0),
(87, 18, 0),
(87, 45, 0),
(88, 2, 0),
(88, 18, 0),
(88, 45, 0),
(90, 2, 0),
(90, 18, 0),
(90, 45, 0),
(91, 2, 0),
(91, 18, 0),
(91, 45, 0),
(94, 2, 0),
(94, 18, 0),
(94, 45, 0),
(96, 2, 0),
(96, 18, 0),
(96, 45, 0),
(97, 2, 0),
(97, 18, 0),
(97, 45, 0),
(98, 4, 0),
(98, 8, 0),
(98, 17, 0),
(98, 26, 0),
(98, 27, 0),
(98, 28, 0),
(98, 29, 0),
(98, 30, 0),
(98, 31, 0),
(98, 32, 0),
(98, 34, 0),
(98, 35, 0),
(98, 37, 0),
(99, 47, 0),
(103, 47, 0),
(106, 45, 0),
(107, 45, 0) ;
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(108, 45, 0),
(109, 45, 0),
(110, 45, 0),
(112, 45, 0),
(127, 39, 0),
(133, 40, 0),
(135, 39, 0),
(139, 39, 0),
(139, 40, 0),
(139, 43, 0),
(142, 39, 0),
(142, 40, 0),
(154, 42, 0),
(155, 42, 0),
(156, 42, 0),
(157, 42, 0),
(187, 44, 0),
(188, 44, 0),
(190, 44, 0),
(195, 44, 0),
(196, 44, 0),
(230, 2, 0),
(230, 9, 0),
(230, 18, 0),
(230, 45, 0),
(301, 48, 0),
(302, 48, 0),
(303, 48, 0),
(304, 48, 0),
(307, 49, 0),
(308, 49, 0),
(309, 49, 0),
(310, 49, 0),
(311, 49, 0),
(312, 49, 0),
(346, 44, 0),
(347, 49, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 10),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 8),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 4),
(9, 9, 'product_visibility', '', 0, 1),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 6),
(17, 17, 'product_cat', '', 0, 2),
(18, 18, 'product_cat', '', 0, 8),
(19, 19, 'product_cat', '', 0, 2),
(20, 20, 'product_cat', '', 19, 1),
(21, 21, 'product_cat', '', 19, 1),
(23, 23, 'pa_storlek', '', 0, 2),
(24, 24, 'pa_storlek', '', 0, 2),
(25, 25, 'pa_storlek', '', 0, 2),
(26, 26, 'pa_dofter', '', 0, 2),
(27, 27, 'pa_dofter', '', 0, 2),
(28, 28, 'pa_dofter', '', 0, 1),
(29, 29, 'pa_dofter', '', 0, 1),
(30, 30, 'pa_dofter', '', 0, 1),
(31, 31, 'pa_dofter', '', 0, 1),
(32, 32, 'pa_dofter', '', 0, 2),
(33, 33, 'product_cat', '', 17, 1),
(34, 34, 'product_cat', '', 17, 1),
(35, 35, 'pa_volym', '', 0, 3),
(36, 36, 'pa_volym', '', 0, 2),
(37, 37, 'pa_volym', '', 0, 5),
(38, 38, 'pa_volym', '', 0, 2),
(39, 39, 'category', '', 0, 4),
(40, 40, 'category', '', 0, 3),
(41, 41, 'category', '', 39, 0),
(42, 42, 'ml-slider', '', 0, 4),
(43, 43, 'category', '', 0, 1),
(44, 44, 'nav_menu', '', 0, 6),
(45, 45, 'product_shipping_class', 'Mindre än 1kg', 0, 23),
(46, 46, 'product_shipping_class', 'Mellan 1-2kg', 0, 4),
(47, 47, 'product_shipping_class', 'Över 2kg', 0, 7),
(48, 48, 'nav_menu', '', 0, 4),
(49, 49, 'nav_menu', '', 0, 7) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#
INSERT INTO `wp_termmeta` ( `meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 16, 'order', '0'),
(2, 16, 'display_type', ''),
(3, 16, 'thumbnail_id', '0'),
(4, 17, 'order', '0'),
(5, 17, 'display_type', ''),
(6, 17, 'thumbnail_id', '0'),
(7, 18, 'order', '0'),
(8, 18, 'display_type', ''),
(9, 18, 'thumbnail_id', '0'),
(10, 19, 'order', '0'),
(11, 19, 'display_type', ''),
(12, 19, 'thumbnail_id', '0'),
(13, 20, 'order', '0'),
(14, 20, 'display_type', ''),
(15, 20, 'thumbnail_id', '0'),
(16, 21, 'order', '0'),
(17, 21, 'display_type', ''),
(18, 21, 'thumbnail_id', '0'),
(20, 23, 'order', '0'),
(21, 24, 'order', '0'),
(22, 25, 'order', '0'),
(23, 26, 'order', '0'),
(24, 27, 'order', '0'),
(25, 28, 'order', '0'),
(26, 29, 'order', '0'),
(27, 30, 'order', '0'),
(28, 31, 'order', '0'),
(29, 32, 'order', '0'),
(30, 33, 'order', '0'),
(31, 33, 'display_type', ''),
(32, 33, 'thumbnail_id', '0'),
(33, 34, 'order', '0'),
(34, 34, 'display_type', ''),
(35, 34, 'thumbnail_id', '0'),
(36, 35, 'order', '0'),
(37, 36, 'order', '0'),
(38, 37, 'order', '0'),
(39, 38, 'order', '0'),
(40, 16, 'product_count_product_cat', '6'),
(41, 17, 'product_count_product_cat', '2'),
(42, 33, 'product_count_product_cat', '1'),
(43, 19, 'product_count_product_cat', '2'),
(44, 20, 'product_count_product_cat', '1'),
(45, 21, 'product_count_product_cat', '1'),
(46, 18, 'product_count_product_cat', '8'),
(47, 34, 'product_count_product_cat', '1') ;

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Okategoriserade', 'okategoriserade', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Uncategorized', 'uncategorized', 0),
(16, 'Exteriör', 'exterior', 0),
(17, 'Interiör', 'interior', 0),
(18, 'Tillbehör', 'tillbehor', 0),
(19, 'Kläder', 'klader', 0),
(20, 'Hoodie', 'hoodie', 0),
(21, 'T-shirt', 't-shirt', 0),
(23, 'Small', 'small', 0),
(24, 'Medium', 'medium', 0),
(25, 'Large', 'large', 0),
(26, 'Äpple', 'apple', 0),
(27, 'Jordgubb', 'jordgubb', 0),
(28, 'Cederträ', 'cedertra', 0),
(29, 'Melon', 'melon', 0),
(30, 'Lime', 'lime', 0),
(31, 'Viol', 'viol', 0),
(32, 'Vanilj', 'vanilj', 0),
(33, 'Air freshener', 'air-freshener', 0),
(34, 'APC', 'apc', 0),
(35, '500 ml', '500-ml', 0),
(36, '1 liter', '1-liter', 0),
(37, '5 liter', '5-liter', 0),
(38, '25 liter', '25-liter', 0),
(39, 'Nyheter', 'nyheter', 0),
(40, 'Tershine', 'tershine', 0),
(41, 'Kläder', 'klader', 0),
(42, '149', '149', 0),
(43, 'Tillbehör', 'tillbehor', 0),
(44, 'Huvud meny', 'huvud-meny', 0),
(45, 'Under 1kg', 'under-1kg', 0),
(46, '1-2kg', '1-2kg', 0),
(47, 'Över 2kg', 'over-2kg', 0),
(48, 'Produktmeny', 'produktmeny', 0),
(49, 'Mobil meny', 'mobil-meny', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sandra'),
(2, 1, 'first_name', 'Sandra'),
(3, 1, 'last_name', 'Höst Kannerberg'),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '314'),
(18, 2, 'nickname', 'carro'),
(19, 2, 'first_name', 'Carolina'),
(20, 2, 'last_name', 'Andersson'),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', 'sv_SE'),
(29, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(30, 2, 'wp_user_level', '10'),
(31, 2, 'dismissed_wp_pointers', 'wcpdf_document_settings_sections'),
(32, 3, 'nickname', 'elin'),
(33, 3, 'first_name', 'Elin'),
(34, 3, 'last_name', 'Robertsson'),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(44, 3, 'wp_user_level', '10'),
(45, 3, 'dismissed_wp_pointers', ''),
(46, 4, 'nickname', 'linus'),
(47, 4, 'first_name', 'Linus'),
(48, 4, 'last_name', 'Lundell'),
(49, 4, 'description', ''),
(50, 4, 'rich_editing', 'true'),
(51, 4, 'syntax_highlighting', 'true'),
(52, 4, 'comment_shortcuts', 'false'),
(53, 4, 'admin_color', 'fresh'),
(54, 4, 'use_ssl', '0'),
(55, 4, 'show_admin_bar_front', 'true'),
(56, 4, 'locale', 'sv_SE'),
(57, 4, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(58, 4, 'wp_user_level', '10'),
(59, 4, 'dismissed_wp_pointers', 'wcpdf_document_settings_sections'),
(60, 1, '_woocommerce_tracks_anon_id', 'woo:0+bG9ghKa7iLibRTzGGNq3xa'),
(61, 1, 'last_update', '1683055254'),
(62, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{"tax":1}'),
(63, 1, 'wc_last_active', '1683158400'),
(64, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:55:"woocommerce-product-data,postcustom,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(65, 1, 'wp_user-settings', 'libraryContent=browse'),
(66, 1, 'wp_user-settings-time', '1682413968'),
(68, 2, 'wc_last_active', '1683244800'),
(70, 2, '_woocommerce_tracks_anon_id', 'woo:NcU4J/K5N91kmNydsI0AuQaF'),
(71, 2, 'wp_dashboard_quick_press_last_post_id', '335'),
(73, 2, 'meta-box-order_product', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:102:"otter_woo_builder,submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:44:"woocommerce-product-data,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(74, 2, 'last_update', '1683201791'),
(75, 2, 'wp_persisted_preferences', 'a:3:{s:14:"core/edit-post";a:3:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;s:10:"openPanels";a:4:{i:0;s:12:"post-excerpt";i:1;s:16:"discussion-panel";i:2;s:15:"page-attributes";i:3;s:11:"post-status";}}s:9:"_modified";s:24:"2023-04-26T15:46:36.600Z";s:17:"core/edit-widgets";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;}}'),
(76, 2, 'wp_user-settings', 'libraryContent=browse'),
(77, 2, 'wp_user-settings-time', '1682435346'),
(78, 2, 'wp_metaslider_analytics_onboarding_status', 'no'),
(79, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(80, 2, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:12:"add-post_tag";i:2;s:15:"add-product_cat";i:3;s:15:"add-product_tag";}'),
(81, 2, 'closedpostboxes_page', 'a:0:{}'),
(82, 2, 'metaboxhidden_page', 'a:0:{}'),
(83, 2, 'closedpostboxes_product', 'a:1:{i:0;s:24:"woocommerce-product-data";}'),
(84, 2, 'metaboxhidden_product', 'a:1:{i:0;s:7:"slugdiv";}'),
(86, 2, 'closedpostboxes_post', 'a:1:{i:0;s:20:"litespeed_meta_boxes";}'),
(87, 2, 'metaboxhidden_post', 'a:0:{}'),
(88, 2, 'nav_menu_recently_edited', '49'),
(90, 2, 'billing_first_name', 'Carolina'),
(91, 2, 'billing_last_name', 'Andersson'),
(92, 2, 'billing_address_1', 'HÅRDGÅRDSBODARNA 110'),
(93, 2, 'billing_city', 'Sörbygden'),
(94, 2, 'billing_postcode', '84398'),
(95, 2, 'billing_country', 'SE'),
(96, 2, 'billing_email', 'carolinaisabellaandersson@gmail.com'),
(97, 2, 'billing_phone', '0762628953'),
(98, 2, 'shipping_first_name', 'Carolina'),
(99, 2, 'shipping_last_name', 'Andersson'),
(100, 2, 'shipping_address_1', 'HÅRDGÅRDSBODARNA 110'),
(101, 2, 'shipping_city', 'Sörbygden'),
(102, 2, 'shipping_postcode', '84398'),
(103, 2, 'shipping_country', 'SE'),
(104, 2, 'shipping_method', 'a:1:{i:0;s:15:"free_shipping:6";}'),
(105, 2, 'paying_customer', '1'),
(106, 2, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(107, 2, 'acf_user_settings', 'a:3:{s:19:"post-type-first-run";b:1;s:20:"taxonomies-first-run";b:1;s:15:"show_field_keys";s:1:"0";}'),
(109, 2, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(110, 2, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(111, 2, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:"acf-advanced-settings";i:1;s:7:"slugdiv";}'),
(112, 2, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(113, 2, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(114, 2, 'manageedit-shop_ordercolumnshidden', 'a:1:{i:0;s:16:"shipping_address";}'),
(116, 2, 'billing_company', ''),
(117, 2, 'billing_address_2', ''),
(118, 2, 'billing_state', ''),
(119, 2, 'shipping_company', ''),
(120, 2, 'shipping_address_2', ''),
(121, 2, 'shipping_state', ''),
(122, 2, 'shipping_phone', '0762628953'),
(123, 3, 'session_tokens', 'a:1:{s:64:"578c78746d1e72e61c075eeb5e6e08746f408f1ab906dfdb6e1dc1eb2701f3ea";a:4:{s:10:"expiration";i:1683117896;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1682945096;}}'),
(124, 3, 'wc_last_active', '1682899200'),
(126, 3, 'wp_dashboard_quick_press_last_post_id', '292'),
(128, 3, 'last_update', '1682955515'),
(129, 3, 'billing_first_name', 'Elin'),
(130, 3, 'billing_last_name', 'Robertsson'),
(131, 3, 'billing_address_1', 'Någongata 1337'),
(132, 3, 'billing_city', 'Någon stad'),
(133, 3, 'billing_postcode', '12345'),
(134, 3, 'billing_country', 'SE'),
(135, 3, 'billing_email', 'elin.robertsson@medieinstitutet.se'),
(136, 3, 'billing_phone', '0700000000'),
(137, 3, 'shipping_first_name', 'Elin'),
(138, 3, 'shipping_last_name', 'Robertsson'),
(139, 3, 'shipping_address_1', 'Någongata 1337'),
(140, 3, 'shipping_city', 'Någon stad'),
(141, 3, 'shipping_postcode', '12345'),
(142, 3, 'shipping_country', 'SE'),
(143, 3, 'shipping_method', 'a:1:{i:0;s:15:"free_shipping:6";}'),
(144, 3, 'paying_customer', '1'),
(145, 3, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:55:"woocommerce-product-data,postcustom,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(146, 3, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:1:{s:26:"isComplementaryAreaVisible";b:1;}s:9:"_modified";s:24:"2023-05-01T15:38:33.859Z";}'),
(150, 5, 'nickname', 'medie-admin'),
(151, 5, 'first_name', 'Henrik'),
(152, 5, 'last_name', ''),
(153, 5, 'description', ''),
(154, 5, 'rich_editing', 'true'),
(155, 5, 'syntax_highlighting', 'true'),
(156, 5, 'comment_shortcuts', 'false'),
(157, 5, 'admin_color', 'fresh'),
(158, 5, 'use_ssl', '0'),
(159, 5, 'show_admin_bar_front', 'true'),
(160, 5, 'locale', ''),
(161, 5, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(162, 5, 'wp_user_level', '10'),
(163, 5, 'dismissed_wp_pointers', ''),
(164, 5, 'last_update', '1683021617'),
(165, 2, 'closedpostboxes_butik', 'a:0:{}'),
(166, 2, 'metaboxhidden_butik', 'a:0:{}'),
(167, 4, 'session_tokens', 'a:2:{s:64:"6920a01aad11e4abe10631da5e675596c80f6747725fb6f724dc5e67ef8519a6";a:4:{s:10:"expiration";i:1683198842;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1683026042;}s:64:"db668deb71a1c152a84d64f7621b4d0b96755bfb8cd92a81f3ecc7261b634ab8";a:4:{s:10:"expiration";i:1683228270;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1683055470;}}'),
(168, 4, 'wc_last_active', '1682985600'),
(170, 4, 'wp_dashboard_quick_press_last_post_id', '297'),
(172, 4, 'last_update', '1683056138'),
(173, 4, 'billing_first_name', 'Linus'),
(174, 4, 'billing_last_name', 'Lundell'),
(175, 4, 'billing_address_1', 'Madvägen 12'),
(176, 4, 'billing_city', 'Ronneby'),
(177, 4, 'billing_postcode', '37273'),
(178, 4, 'billing_country', 'SE'),
(179, 4, 'billing_email', 'linus.lundell@medieinstitutet.se'),
(180, 4, 'billing_phone', '0706666666'),
(181, 4, 'shipping_first_name', 'Linus'),
(182, 4, 'shipping_last_name', 'Lundell'),
(183, 4, 'shipping_address_1', 'Madvägen 12'),
(184, 4, 'shipping_city', 'Ronneby'),
(185, 4, 'shipping_postcode', '37273'),
(186, 4, 'shipping_country', 'SE'),
(187, 4, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:2";}'),
(188, 4, 'paying_customer', '1'),
(189, 4, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:55:"woocommerce-product-data,postcustom,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(190, 4, 'closedpostboxes_shop_order', 'a:1:{i:0;s:24:"wpo_wcpdf-data-input-box";}'),
(191, 4, 'metaboxhidden_shop_order', 'a:0:{}'),
(192, 4, 'wp_persisted_preferences', 'a:2:{s:14:"core/edit-post";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:12:"welcomeGuide";b:0;}s:9:"_modified";s:24:"2023-05-02T11:39:41.000Z";}'),
(193, 4, 'nav_menu_recently_edited', '49'),
(194, 4, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(195, 4, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:21:"add-post-type-product";i:1;s:19:"add-post-type-butik";i:2;s:12:"add-post_tag";i:3;s:15:"add-product_tag";}'),
(196, 4, 'closedpostboxes_nav-menus', 'a:0:{}'),
(202, 1, 'billing_first_name', 'Sandra'),
(203, 1, 'billing_last_name', 'Höst Kannerberg'),
(204, 1, 'billing_address_1', 'Statsgatan 1'),
(205, 1, 'billing_city', 'I staden'),
(206, 1, 'billing_postcode', '12488'),
(207, 1, 'billing_country', 'SE'),
(208, 1, 'billing_email', 'sandra.hostkannerberg@medieinstitutet.se'),
(209, 1, 'billing_phone', '0701231233'),
(210, 1, 'shipping_first_name', 'Sandra'),
(211, 1, 'shipping_last_name', 'Höst Kannerberg'),
(212, 1, 'shipping_address_1', 'Statsgatan 1'),
(213, 1, 'shipping_city', 'I staden'),
(214, 1, 'shipping_postcode', '12488'),
(215, 1, 'shipping_country', 'SE'),
(216, 1, 'shipping_method', 'a:1:{i:0;s:11:"flat_rate:2";}'),
(217, 1, 'paying_customer', '1'),
(222, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:1:{s:32:"3544fece8863ec26c3644ef1ced0f675";a:6:{s:3:"key";s:32:"3544fece8863ec26c3644ef1ced0f675";s:10:"product_id";i:98;s:12:"variation_id";i:106;s:9:"variation";a:2:{s:18:"attribute_pa_volym";s:6:"500-ml";s:19:"attribute_pa_dofter";s:5:"apple";}s:8:"quantity";i:1;s:9:"data_hash";s:32:"3066e015e0dce0be2b76bc8c57da639f";}}}'),
(223, 4, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(224, 4, 'acf_user_settings', 'a:1:{s:20:"taxonomies-first-run";b:1;}') ;
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(225, 2, 'session_tokens', 'a:4:{s:64:"dc0d607e4e71c62ac61ebdcde22499823a69358512e7b58cf47949abdb32a910";a:4:{s:10:"expiration";i:1683269510;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1683096710;}s:64:"a6e5bef458644c2fd8937c3e85936569579e2371f03a552d92bbddf2a8892e39";a:4:{s:10:"expiration";i:1683357968;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36";s:5:"login";i:1683185168;}s:64:"6daf8cd3eb5350a38153c649e9df73eb0f4bfd6ff1a43db85b7a786a8043ac5a";a:4:{s:10:"expiration";i:1683374946;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36";s:5:"login";i:1683202146;}s:64:"2c1c6c70a134d69bb6b45ecbcf969e035ef10c33a85c5d3d573b53b1de23d2a2";a:4:{s:10:"expiration";i:1683442247;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36";s:5:"login";i:1683269447;}}'),
(227, 2, 'screen_layout_product', '2'),
(229, 2, 'manageedit-butikcolumnshidden', 'a:0:{}'),
(231, 5, 'wc_last_active', '1683158400'),
(233, 5, '_woocommerce_tracks_anon_id', 'woo:E9wxpkpC8DkPh9NJ/8kOyI95'),
(234, 5, 'wp_dashboard_quick_press_last_post_id', '343'),
(235, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(239, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(240, 1, 'session_tokens', 'a:1:{s:64:"6627926aad43b76ee9110b6921047862ca20595843c3dc5af40ad2dcd1397ca2";a:4:{s:10:"expiration";i:1683382030;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/113.0.0.0 Safari/537.36";s:5:"login";i:1683209230;}}'),
(242, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:2:{s:32:"54229abfcfa5649e7003b83dd4755294";a:11:{s:3:"key";s:32:"54229abfcfa5649e7003b83dd4755294";s:10:"product_id";i:91;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:1:{i:1;d:39.7999999999999971578290569595992565155029296875;}s:5:"total";a:1:{i:1;d:39.7999999999999971578290569595992565155029296875;}}s:13:"line_subtotal";d:159.19999999999998863131622783839702606201171875;s:17:"line_subtotal_tax";d:39.7999999999999971578290569595992565155029296875;s:10:"line_total";d:159.19999999999998863131622783839702606201171875;s:8:"line_tax";d:39.7999999999999971578290569595992565155029296875;}s:32:"3544fece8863ec26c3644ef1ced0f675";a:6:{s:3:"key";s:32:"3544fece8863ec26c3644ef1ced0f675";s:10:"product_id";i:98;s:12:"variation_id";i:106;s:9:"variation";a:2:{s:18:"attribute_pa_volym";s:6:"500-ml";s:19:"attribute_pa_dofter";s:5:"apple";}s:8:"quantity";i:1;s:9:"data_hash";s:32:"3066e015e0dce0be2b76bc8c57da639f";}}}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sandra', '$P$B1zhIl7wltREcbN1U1Z0hiU0MYnZ8m1', 'sandra', 'sandra.hostkannerberg@medieinstitutet.se', 'http://localhost/webshop_grupp1', '2023-04-24 11:27:03', '', 0, 'sandra'),
(2, 'carro', '$P$ByNNK/PmVC.FaQ1ZxZZlD2LnzPicyp/', 'carro', 'andersson.carolina@medieinstitutet.se', '', '2023-04-25 07:07:31', '1682406452:$P$BZSyuqUniRX7idwVZeBJASJRXqwtwJ.', 0, 'carro'),
(3, 'elin', '$P$BpG3jIh38WT8glMorUVhtjCUGuGdGA1', 'elin', 'elin.robertsson@medieinstitutet.se', '', '2023-04-25 07:09:12', '1682406552:$P$BsAU/XSz6DYOEAy.OgDQ09rE/r6ezS0', 0, 'elin'),
(4, 'linus', '$P$B/63NHuWICKQFygyf8TRQx.p53x3Nz0', 'linus', 'linus.lundell@medieinstitutet.se', '', '2023-04-25 07:18:55', '1682407135:$P$BSiKI/jRzopdOVjiv4At5say0PDbph0', 0, 'linus'),
(5, 'medie-admin', '$P$B07uW3gI7AGG44u9XLM4XcUFjxPo9e1', 'medie-admin', 'henrikutbildare@gmail.com', '', '2023-05-02 10:00:17', '1683021617:$P$Bv/pZW/sX7zx0WM4pWGzvmTCZd3N0x1', 0, 'Henrik') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_admin_note_actions`
#

DROP TABLE IF EXISTS `wp_wc_admin_note_actions`;


#
# Table structure of table `wp_wc_admin_note_actions`
#

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `note_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `actioned_text` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonce_action` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nonce_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `note_id` (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2074 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_admin_note_actions`
#
INSERT INTO `wp_wc_admin_note_actions` ( `action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(60, 50, 'notify-refund-returns-page', 'Edit page', 'http://localhost/webshop_grupp1/wp-admin/post.php?post=50&action=edit', 'actioned', '', NULL, NULL),
(120, 51, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(180, 52, 'customize-store-with-storefront', 'Let\'s go!', 'http://localhost/webshop_grupp1/wp-admin/themes.php?page=storefront-welcome', 'actioned', '', NULL, NULL),
(417, 53, 'visit-the-theme-marketplace', 'Besök temamarknadsplatsen', 'https://woocommerce.com/product-category/themes/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(418, 54, 'learn-more', 'Lär dig mer', 'https://woocommerce.com/posts/pre-launch-checklist-the-essentials/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(596, 55, 'remove-legacy-coupon-menu', 'Ta bort äldre rabattkodsmeny', 'http://localhost/webshop_grupp1/wp-admin/admin.php?page=wc-admin&action=remove-coupon-menu', 'actioned', '', NULL, NULL),
(597, 56, 'learn-more', 'Lär dig mer', 'https://woocommerce.com/mobile/?utm_medium=product', 'actioned', '', NULL, NULL),
(778, 58, 'learn-more', 'Lär dig mer', 'https://woocommerce.com/document/managing-orders/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(1439, 59, 'day-after-first-product', 'Lär dig mer', 'https://woocommerce.com/document/woocommerce-customizer/?utm_source=inbox&utm_medium=product', 'actioned', '', NULL, NULL),
(1634, 62, 'woopay-beta-existingmerchants-noaction-documentation-27APR23-test2', 'Documentation', 'https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23-test2', 'actioned', '', NULL, NULL),
(1635, 62, 'woopay-beta-existingmerchants-noaction-documentation-27APR23-dismiss-test2', 'Dismiss', 'http://localhost/webshop_grupp1/wp-admin/#', 'actioned', '', NULL, NULL),
(1636, 63, 'woopay-beta-existingmerchants-update-WCPay-27APR23-test', 'Update WooCommerce Payments', 'http://localhost/webshop_grupp1/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL),
(1637, 63, 'woopay-beta-existingmerchants-update-WCPay-27APR23-dismiss-test', 'Dismiss', 'http://localhost/webshop_grupp1/wp-admin/#', 'actioned', '', NULL, NULL),
(1762, 64, 'tracking-opt-in', 'Aktivera användningsspårning', '', 'actioned', '', NULL, NULL),
(1825, 65, 'view-report', 'Visa rapport', '?page=wc-admin&path=/analytics/revenue&period=custom&compare=previous_year&after=2023-05-02&before=2023-05-02', 'actioned', '', NULL, NULL),
(2012, 1, 'browse_extensions', 'Browse extensions', 'http://localhost/webshop_grupp1/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(2013, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(2014, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(2015, 4, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(2016, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(2017, 6, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(2018, 7, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(2019, 8, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(2020, 9, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(2021, 10, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost/webshop_grupp1/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(2022, 11, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(2023, 14, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(2024, 15, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(2025, 16, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(2026, 16, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2027, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(2028, 17, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2029, 18, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(2030, 18, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2031, 19, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(2032, 19, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2033, 20, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(2034, 21, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(2035, 21, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2036, 22, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(2037, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2038, 23, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(2039, 24, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(2040, 25, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(2041, 26, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(2042, 26, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2043, 27, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(2044, 27, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(2045, 28, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'Learn more', 'https://woocommerce.com/document/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_custom_attribute_mapping_q4_2022#attribute-mapping', 'actioned', '', NULL, NULL),
(2046, 29, 'needs-update-eway-payment-gateway-rin-action-button-2022-12-20', 'See available updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(2047, 29, 'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(2048, 30, 'updated-eway-payment-gateway-rin-action-button-2022-12-20', 'See all updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(2049, 30, 'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(2050, 31, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/new-ecommerce-plan-navigation', 'actioned', '', NULL, NULL),
(2051, 32, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'Boost my business with Google', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_no_gla', 'actioned', '', NULL, NULL),
(2052, 33, 'google_listings_ads_pmax_i1_q1_2023_with_gla', 'Create a new ad', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_with_gla', 'actioned', '', NULL, NULL),
(2053, 34, 'woocommerce-wcpay-march-2023-update-needed-button', 'See Blog Post', 'https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know', 'unactioned', '', NULL, NULL),
(2054, 34, 'woocommerce-wcpay-march-2023-update-needed-dismiss-button', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(2055, 57, 'wc-admin-BNPL-WCPay-coming-soon', 'Sign up now', 'https://woocommerce.com/buy-now-pay-later-for-woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-BNPL-WCPay-coming-soon', 'actioned', '', NULL, NULL),
(2056, 35, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'Simplify my payments', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay', 'actioned', '', NULL, NULL),
(2057, 36, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'Set up Tap to Pay on iPhone', 'https://woocommerce.com/document/woocommerce-payments/in-person-payments/woocommerce-in-person-payments-tap-to-pay-on-iphone-quick-start-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_with_wcpay', 'actioned', '', NULL, NULL),
(2058, 37, 'extension-settings', 'See available updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(2059, 37, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(2060, 38, 'wc-admin-wcpay-denmark-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/denmark/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-denmark-Q2-2023', 'actioned', '', NULL, NULL),
(2061, 39, 'wc-admin-wcpay-greece-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/greece/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-greece-Q2-2023', 'actioned', '', NULL, NULL),
(2062, 40, 'wc-admin-wcpay-norway-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/norway/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-norway-Q2-2023', 'actioned', '', NULL, NULL),
(2063, 41, 'wc-admin-wcpay-slovakia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovakia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovakia-Q2-2023', 'actioned', '', NULL, NULL),
(2064, 42, 'wc-admin-wcpay-finland-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/finland/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-finland-Q2-2023', 'actioned', '', NULL, NULL),
(2065, 43, 'wc-admin-wcpay-estonia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/estonia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-estonia-Q2-2023', 'actioned', '', NULL, NULL),
(2066, 44, 'wc-admin-wcpay-lithuania-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/lithuania/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-lithuania-Q2-2023', 'actioned', '', NULL, NULL),
(2067, 45, 'wc-admin-wcpay-slovenia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovenia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovenia-Q2-2023', 'actioned', '', NULL, NULL),
(2068, 46, 'wc-admin-wcpay-latvia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/latvia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-latvia-Q2-2023', 'actioned', '', NULL, NULL),
(2069, 47, 'wc-admin-wcpay-cyprus-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/cyprus/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-cyprus-Q2-2023', 'actioned', '', NULL, NULL),
(2070, 48, 'wc-admin-wcpay-malta-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/malta/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-malta-Q2-2023', 'actioned', '', NULL, NULL),
(2071, 49, 'wc-admin-wcpay-luxembourg-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/luxembourg/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-luxembourg-Q2-2023', 'actioned', '', NULL, NULL),
(2072, 60, 'woopay-beta-existingmerchants-noaction-documentation-27APR23', 'Documentation', 'https://woocommerce.com/document/woopay-merchant-documentation/?utm_source=inbox_note&utm_medium=product&utm_campaign=woopay-beta-existingmerchants-noaction-documentation-27APR23', 'actioned', '', NULL, NULL),
(2073, 61, 'woopay-beta-existingmerchants-update-WCPay-27APR23', 'Update WooCommerce Payments', 'http://localhost/webshop_grupp1/wp-admin/plugins.php?plugin_status=all', 'actioned', '', NULL, NULL) ;

#
# End of data contents of table `wp_wc_admin_note_actions`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_admin_notes`
#

DROP TABLE IF EXISTS `wp_wc_admin_notes`;


#
# Table structure of table `wp_wc_admin_notes`
#

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_520_ci,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT '0',
  `layout` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `image` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'info',
  PRIMARY KEY (`note_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_admin_notes`
#
INSERT INTO `wp_wc_admin_notes` ( `note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 1, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href="https://woocommerce.com/woocommerce-shipping/">WooCommerce Shipping</a> – all directly from your mobile device!', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store "ready to sell" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 14:13:53', NULL, 0, 'plain', '', 0, 1, 'info'),
(6, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '[]', 'unactioned', 'woocommerce.com', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 1, 'info'),
(7, 'wc-payments-qualitative-feedback', 'info', 'en_US', 'WooCommerce Payments setup - let us know what you think', 'Congrats on enabling WooCommerce Payments for your store. Please share your feedback in this 2 minute survey to help us improve the setup process.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(8, 'share-your-feedback-on-paypal', 'info', 'en_US', 'Share your feedback on PayPal', 'Share your feedback in this 2 minute survey about how we can make the process of accepting payments more useful for your store.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(9, 'google_listings_and_ads_install', 'marketing', 'en_US', 'Drive traffic and sales with Google', 'Reach online shoppers to drive traffic and sales for your store by showcasing products across Google, for free or with ads.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(10, 'wc-subscriptions-security-update-3-0-15', 'info', 'en_US', 'WooCommerce Subscriptions security update!', 'We recently released an important security update to WooCommerce Subscriptions. To ensure your site’s data is protected, please upgrade <strong>WooCommerce Subscriptions to version 3.0.15</strong> or later.<br /><br />Click the button below to view and update to the latest Subscriptions version, or log in to <a href="https://woocommerce.com/my-dashboard">WooCommerce.com Dashboard</a> and navigate to your <strong>Downloads</strong> page.<br /><br />We recommend always using the latest version of WooCommerce Subscriptions, and other software running on your site, to ensure maximum security.<br /><br />If you have any questions we are here to help — just <a href="https://woocommerce.com/my-account/create-a-ticket/">open a ticket</a>.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(11, 'woocommerce-core-update-5-4-0', 'info', 'en_US', 'Update to WooCommerce 5.4.1 now', 'WooCommerce 5.4.1 addresses a checkout issue discovered in WooCommerce 5.4. We recommend upgrading to WooCommerce 5.4.1 as soon as possible.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(12, 'wcpay-promo-2020-11', 'marketing', 'en_US', 'wcpay-promo-2020-11', 'wcpay-promo-2020-11', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(13, 'wcpay-promo-2020-12', 'marketing', 'en_US', 'wcpay-promo-2020-12', 'wcpay-promo-2020-12', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(14, 'ppxo-pps-upgrade-paypal-payments-1', 'info', 'en_US', 'Get the latest PayPal extension for WooCommerce', 'Heads up! There’s a new PayPal on the block!<br /><br />Now is a great time to upgrade to our latest <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">PayPal extension</a> to continue to receive support and updates with PayPal.<br /><br />Get access to a full suite of PayPal payment methods, extensive currency and country coverage, and pay later options with the all-new PayPal extension for WooCommerce.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(15, 'ppxo-pps-upgrade-paypal-payments-2', 'info', 'en_US', 'Upgrade your PayPal experience!', 'Get access to a full suite of PayPal payment methods, extensive currency and country coverage, offer subscription and recurring payments, and the new PayPal pay later options.<br /><br />Start using our <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">latest PayPal today</a> to continue to receive support and updates.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(16, 'woocommerce-core-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(17, 'woocommerce-blocks-sqli-july-2021-need-to-update', 'update', 'en_US', 'Action required: Critical vulnerabilities in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we are working with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br />Our investigation into this vulnerability is ongoing, but <strong>we wanted to let you know now about the importance of updating immediately</strong>.<br /><br />For more information on which actions you should take, as well as answers to FAQs, please urgently review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(18, 'woocommerce-core-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(19, 'woocommerce-blocks-sqli-july-2021-store-patched', 'update', 'en_US', 'Solved: Critical vulnerabilities patched in WooCommerce Blocks', 'In response to a critical vulnerability identified on July 13, 2021, we worked with the WordPress Plugins Team to deploy software updates to stores running WooCommerce (versions 3.3 to 5.5) and the WooCommerce Blocks feature plugin (versions 2.5 to 5.5).<br /><br /><strong>Your store has been updated to the latest secure version(s)</strong>. For more information and answers to FAQs, please review our blog post detailing this issue.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(20, 'habit-moment-survey', 'marketing', 'en_US', 'We’re all ears! Share your experience so far with WooCommerce', 'We’d love your input to shape the future of WooCommerce together. Feel free to share any feedback, ideas or suggestions that you have.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(21, 'woocommerce-core-paypal-march-2022-updated', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy PayPal Standard security updates for stores running WooCommerce (version 3.5 to 6.3). It’s recommended to disable PayPal Standard, and use <a href="https://woocommerce.com/products/woocommerce-paypal-payments/" target="_blank">PayPal Payments</a> to accept PayPal.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(22, 'woocommerce-core-paypal-march-2022-updated-nopp', 'update', 'en_US', 'Security auto-update of WooCommerce', '<strong>Your store has been updated to the latest secure version of WooCommerce</strong>. We worked with WordPress to deploy security updates related to PayPal Standard payment gateway for stores running WooCommerce (version 3.5 to 6.3).', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(23, 'pinterest_03_2022_update', 'marketing', 'en_US', 'Your Pinterest for WooCommerce plugin is out of date!', 'Update to the latest version of Pinterest for WooCommerce to continue using this plugin and keep your store connected with Pinterest. To update, visit <strong>Plugins &gt; Installed Plugins</strong>, and click on “update now” under Pinterest for WooCommerce.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(24, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '[]', 'unactioned', 'woocommerce.com', '2023-05-02 08:03:33', NULL, 0, 'plain', '', 0, 1, 'info'),
(25, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'marketing', 'en_US', 'Our latest improvement to the Google Listings & Ads extension: Attribute Mapping', 'You spoke, we listened. This new feature enables you to easily upload your products, customize your product attributes in one place, and target shoppers with more relevant ads. Extend how far your ad dollars go with each campaign.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'needs-update-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'Security vulnerability patched in WooCommerce Eway Gateway', 'In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'updated-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'WooCommerce Eway Gateway has been automatically updated', 'Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'ecomm-wc-navigation-survey-2023', 'info', 'en_US', 'Navigating WooCommerce on WordPress.com', 'We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'marketing', 'en_US', 'Create more engaging ads – without the hard work', 'Get in front of millions of shoppers searching for products like yours with Google Listings &amp; Ads. With new customization features, Google automatically tests multiple combinations of text and images to create the most engaging ad to boost your business. Plus, get up to $500 in ad credit – terms and conditions apply.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 1, 'info'),
(33, 'google_listings_ads_pmax_i1_q1_2023_with_gla', 'marketing', 'en_US', 'New customization features to boost your business', 'You can now add custom images, messaging, and URLs to campaigns in Google Listings &amp; Ads. Google then automatically tests multiple combinations to create the most engaging version to help boost your business. Get more sales with dynamic content – edit an existing campaign or create a new ad now.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(34, 'woocommerce-wcpay-march-2023-update-needed', 'update', 'en_US', 'Action required: Security update for WooCommerce Payments', '<strong>Your store requires a security update for WooCommerce Payments</strong>. Please update to the latest version of WooCommerce Payments immediately to address a potential vulnerability discovered on March 22. For more information on how to update, visit this WooCommerce Developer Blog Post.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(35, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'marketing', 'en_US', 'Accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone and WooCommerce Payments is quick, secure, and simple to set up — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(36, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'marketing', 'en_US', 'New: accept in-person contactless payments on your iPhone', 'Tap to Pay on iPhone is quick, secure, and simple to set up in WooCommerce Payments — no extra terminals or card readers are needed. Accept contactless debit and credit cards, Apple Pay, and other NFC digital wallets in person in a few short steps!', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(37, 'woocommerce-WCPreOrders-april-2023-update-needed', 'update', 'en_US', 'Action required: Security update of WooCommerce Pre-Orders extension', '<strong>Your store requires a security update for the WooCommerce Pre-Orders extension</strong>. Please update the WooCommerce Pre-Orders extension immediately to address a potential vulnerability discovered on April 11.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(38, 'wc-admin-wcpay-denmark-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Denmark!', 'We’ve recently released WooCommerce Payments in Denmark. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(39, 'wc-admin-wcpay-greece-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Greece!', 'We’ve recently released WooCommerce Payments in Greece. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(40, 'wc-admin-wcpay-norway-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Norway!', 'We’ve recently released WooCommerce Payments in Norway. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(41, 'wc-admin-wcpay-slovakia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Slovakia!', 'We’ve recently released WooCommerce Payments in Slovakia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(42, 'wc-admin-wcpay-finland-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Finland!', 'We’ve recently released WooCommerce Payments in Finland. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(43, 'wc-admin-wcpay-estonia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Estonia!', 'We’ve recently released WooCommerce Payments in Estonia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(44, 'wc-admin-wcpay-lithuania-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Lithuania!', 'We’ve recently released WooCommerce Payments in Lithuania. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(45, 'wc-admin-wcpay-slovenia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Slovenia!', 'We’ve recently released WooCommerce Payments in Slovenia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(46, 'wc-admin-wcpay-latvia-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Latvia!', 'We’ve recently released WooCommerce Payments in Latvia. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(47, 'wc-admin-wcpay-cyprus-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Cyprus!', 'We’ve recently released WooCommerce Payments in Cyprus. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(48, 'wc-admin-wcpay-malta-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Malta!', 'We’ve recently released WooCommerce Payments in Malta. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(49, 'wc-admin-wcpay-luxembourg-Q2-2023', 'marketing', 'en_US', 'WooCommerce Payments is now available in Luxembourg!', 'We’ve recently released WooCommerce Payments in Luxembourg. You can view and manage transactions right in your WordPress dashboard while securely accepting major cards, Apple Pay, and payments in over 100 currencies.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(50, 'wc-refund-returns-page', 'info', 'en_US', 'Setup a Refund and Returns Policy page to boost your store\'s credibility.', 'We have created a sample draft Refund and Returns Policy page for you. Please have a look and update it to fit your store.', '[]', 'unactioned', 'woocommerce-core', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(51, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-25 07:56:25', NULL, 0, 'plain', '', 0, 1, 'info'),
(52, 'storefront-customize', 'info', 'en_US', 'Design your store with Storefront 🎨', 'Visit the Storefront settings page to start setup and customization of your shop.', '[]', 'unactioned', 'storefront', '2023-04-25 08:01:28', NULL, 0, 'plain', '', 0, 1, 'info'),
(53, 'wc-admin-choosing-a-theme', 'marketing', 'en_US', 'Välj ett tema?', 'Kolla in olika teman som är kompatibla med WooCommerce och välj ett som passar ihop med ditt varumärke och dina företagsbehov.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-26 07:57:04', NULL, 0, 'plain', '', 0, 1, 'info'),
(54, 'wc-admin-launch-checklist', 'info', 'en_US', 'Är du redo att lansera din butik?', 'Vi har sammanställt en omfattande checklista innan webbplatsen tas i bruk så att du aldrig får känslan av att ha glömt något.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-26 07:57:04', NULL, 0, 'plain', '', 0, 1, 'info'),
(55, 'wc-admin-coupon-page-moved', 'update', 'en_US', 'Hantering av rabattkoder har flyttat!', 'Rabattkoder kan nu hanteras från Marknadsföring &gt; Rabattkoder. Klicka på knappen nedan för att ta bort det äldre menyobjektet WooCommerce &gt; Rabattkoder.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-27 07:20:03', NULL, 0, 'plain', '', 0, 0, 'info'),
(56, 'wc-admin-mobile-app', 'info', 'en_US', 'Installera Woo-mobilappen', 'Installera WooCommerce-mobilappen och hantera beställningar, få säljnotiser och granska nyckeltal – var som helst.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-27 07:56:55', NULL, 0, 'plain', '', 0, 1, 'info'),
(57, 'wc_admin_BNPL_WCPay_coming-soon_Q1_2023', 'marketing', 'en_US', 'Buy now, pay later is heading to WooCommerce Payments', 'Great news: full integration with Afterpay and Affirm is on its way to WooCommerce Payments! You’ll soon be able to increase your order values, sell more, and offer customers a payment option they’ll love — with no extra downloads or extensions required.', '[]', 'pending', 'woocommerce.com', '2023-04-27 07:56:55', NULL, 0, 'plain', '', 0, 0, 'info'),
(58, 'wc-admin-orders-milestone', 'info', 'en_US', 'Första beställning mottagen', 'Grattis till din första beställning! Nu är det dags att lära sig hur man hanterar dina beställningar.', '{"current_milestone":1}', 'unactioned', 'woocommerce-admin', '2023-04-27 10:57:41', NULL, 0, 'plain', '', 0, 1, 'info'),
(59, 'wc-admin-customizing-product-catalog', 'info', 'en_US', 'Så här anpassar du din produktkatalog', 'Du vill att din produktkatalog och dina bilder ska se fantastiska ut och vara i linje med ditt varumärke. Den här guiden ger dig alla tips du behöver för att få dina produkter att se fantastiska ut i din butik.', '[]', 'unactioned', 'woocommerce-admin', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 1, 'info'),
(60, 'woopay-beta-existingmerchants-noaction-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed. No action is required on your part.\r\n<br /><br />\r\nYou can now continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '[]', 'pending', 'woocommerce.com', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 0, 'info'),
(61, 'woopay-beta-existingmerchants-update-27APR23', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '[]', 'pending', 'woocommerce.com', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 0, 'info'),
(62, 'woopay-beta-existingmerchants-noaction-27APR23-test2', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed. No action is required on your part.\r\n<br /><br />\r\nYou can now continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '[]', 'pending', 'woocommerce.com', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 0, 'info'),
(63, 'woopay-beta-existingmerchants-update-27APR23-test', 'info', 'en_US', 'WooPay is back!', 'Thanks for previously trying WooPay, the express checkout feature built into WooCommerce Payments. We’re excited to announce that WooPay availability has resumed.\r\n<br /><br />\r\n\r\nUpdate to the latest WooCommerce Payments version to continue boosting conversions by offering your customers a simple, secure way to pay with a single click.', '[]', 'pending', 'woocommerce.com', '2023-04-28 07:56:43', NULL, 0, 'plain', '', 0, 0, 'info'),
(64, 'wc-admin-usage-tracking-opt-in', 'info', 'en_US', 'Hjälp WooCommerce att förbättras med användningsspårning', 'Genom att samla in användningsdata kan vi förbättra WooCommerce. Din butik kommer att övervägas när vi utvärderar nya funktioner, bedömer kvaliteten på en uppdatering, eller bestämmer om en förbättring är meningsfull. Du kan alltid gå till <a href="http://localhost/webshop_grupp1/wp-admin/admin.php?page=wc-settings&#038;tab=advanced&#038;section=woocommerce_com" target="_blank">Inställningar</a> och välja att sluta dela data. <a href="https://woocommerce.com/usage-tracking?utm_medium=product" target="_blank">Läs mer</a> om vilka data vi samlar in.', '[]', 'unactioned', 'woocommerce-admin', '2023-05-02 08:03:33', NULL, 0, 'plain', '', 0, 1, 'info'),
(65, 'wc-admin-new-sales-record', 'info', 'en_US', 'Nytt försäljningsrekord!', 'Woohoo, 2 maj 2023 var en rekorddag för din försäljning! Nettoförsäljning var 3603,25 kr, vilket slår det tidigare rekordet på 1294,00 kr som sattes 27 april 2023.', '{"old_record_date":"2023-04-27","old_record_amt":1294,"new_record_date":"2023-05-02","new_record_amt":3603.25}', 'unactioned', 'woocommerce-admin', '2023-05-03 07:56:59', NULL, 0, 'plain', '', 0, 0, 'info') ;

#
# End of data contents of table `wp_wc_admin_notes`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_category_lookup`
#

DROP TABLE IF EXISTS `wp_wc_category_lookup`;


#
# Table structure of table `wp_wc_category_lookup`
#

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) unsigned NOT NULL,
  `category_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`category_tree_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_category_lookup`
#
INSERT INTO `wp_wc_category_lookup` ( `category_tree_id`, `category_id`) VALUES
(15, 15),
(16, 16),
(17, 17),
(17, 33),
(17, 34),
(18, 18),
(19, 19),
(19, 20),
(19, 21),
(20, 20),
(21, 21),
(33, 33),
(34, 34) ;

#
# End of data contents of table `wp_wc_category_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_customer_lookup`
#

DROP TABLE IF EXISTS `wp_wc_customer_lookup`;


#
# Table structure of table `wp_wc_customer_lookup`
#

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `date_last_active` timestamp NULL DEFAULT NULL,
  `date_registered` timestamp NULL DEFAULT NULL,
  `country` char(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `postcode` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `city` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `state` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_customer_lookup`
#
INSERT INTO `wp_wc_customer_lookup` ( `customer_id`, `user_id`, `username`, `first_name`, `last_name`, `email`, `date_last_active`, `date_registered`, `country`, `postcode`, `city`, `state`) VALUES
(1, 2, 'carro', 'Carolina', 'Andersson', 'carolinaisabellaandersson@gmail.com', '2023-05-04 12:03:11', '2023-04-25 07:07:31', 'SE', '84398', 'Sörbygden', ''),
(2, 3, 'elin', 'Elin', 'Robertsson', 'elin.robertsson@medieinstitutet.se', '2023-05-01 12:47:40', '2023-04-25 07:09:12', 'SE', '12345', 'Någon stad', ''),
(3, 4, 'linus', 'Linus', 'Lundell', 'linus.lundell@medieinstitutet.se', '2023-05-02 19:35:38', '2023-04-25 07:18:55', 'SE', '37273', 'Ronneby', ''),
(4, 1, 'sandra', 'Sandra', 'Höst Kannerberg', 'sandra.hostkannerberg@medieinstitutet.se', '2023-05-02 19:20:54', '2023-04-24 11:27:03', 'SE', '12488', 'I staden', '') ;

#
# End of data contents of table `wp_wc_customer_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_download_log`
#

DROP TABLE IF EXISTS `wp_wc_download_log`;


#
# Table structure of table `wp_wc_download_log`
#

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`download_log_id`),
  KEY `permission_id` (`permission_id`),
  KEY `timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_download_log`
#

#
# End of data contents of table `wp_wc_download_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_order_coupon_lookup`
#

DROP TABLE IF EXISTS `wp_wc_order_coupon_lookup`;


#
# Table structure of table `wp_wc_order_coupon_lookup`
#

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`coupon_id`),
  KEY `coupon_id` (`coupon_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_order_coupon_lookup`
#
INSERT INTO `wp_wc_order_coupon_lookup` ( `order_id`, `coupon_id`, `date_created`, `discount_amount`) VALUES
(261, 257, '2023-04-27 12:33:07', '80'),
(298, 257, '2023-05-02 13:21:08', '80'),
(315, 257, '2023-05-02 21:17:07', '80'),
(344, 257, '2023-05-04 14:03:11', '80') ;

#
# End of data contents of table `wp_wc_order_coupon_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_order_product_lookup`
#

DROP TABLE IF EXISTS `wp_wc_order_product_lookup`;


#
# Table structure of table `wp_wc_order_product_lookup`
#

CREATE TABLE `wp_wc_order_product_lookup` (
  `order_item_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `variation_id` bigint(20) unsigned NOT NULL,
  `customer_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `product_qty` int(11) NOT NULL,
  `product_net_revenue` double NOT NULL DEFAULT '0',
  `product_gross_revenue` double NOT NULL DEFAULT '0',
  `coupon_amount` double NOT NULL DEFAULT '0',
  `tax_amount` double NOT NULL DEFAULT '0',
  `shipping_amount` double NOT NULL DEFAULT '0',
  `shipping_tax_amount` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `customer_id` (`customer_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_order_product_lookup`
#
INSERT INTO `wp_wc_order_product_lookup` ( `order_item_id`, `order_id`, `product_id`, `variation_id`, `customer_id`, `date_created`, `product_qty`, `product_net_revenue`, `product_gross_revenue`, `coupon_amount`, `tax_amount`, `shipping_amount`, `shipping_tax_amount`) VALUES
(1, 261, 91, 0, 1, '2023-04-27 12:33:07', 1, '119.2', '149', '40', '29.8', '0', '0'),
(2, 261, 79, 81, 1, '2023-04-27 12:33:07', 1, '358.4', '448', '40', '89.6', '0', '0'),
(6, 262, 91, 0, 1, '2023-04-27 12:34:42', 1, '159.2', '199', '0', '39.8', '0', '0'),
(7, 262, 79, 81, 1, '2023-04-27 12:34:42', 1, '398.4', '498', '0', '99.6', '0', '0'),
(10, 291, 51, 53, 1, '2023-05-01 14:38:13', 1, '1038.4', '1298', '0', '259.6', '0', '0'),
(11, 291, 88, 0, 1, '2023-05-01 14:38:13', 1, '15.2', '19', '0', '3.8', '0', '0'),
(12, 291, 83, 85, 1, '2023-05-01 14:38:13', 1, '207.2', '259', '0', '51.8', '0', '0'),
(13, 291, 74, 75, 1, '2023-05-01 14:38:13', 1, '23.2', '29', '0', '5.8', '0', '0'),
(16, 293, 98, 108, 2, '2023-05-01 14:47:40', 1, '143.2', '179', '0', '35.8', '0', '0'),
(17, 293, 59, 61, 2, '2023-05-01 14:47:40', 1, '478.4', '598', '0', '119.6', '0', '0'),
(18, 293, 56, 58, 2, '2023-05-01 14:47:40', 1, '238.4', '298', '0', '59.6', '0', '0'),
(19, 293, 67, 0, 2, '2023-05-01 14:47:40', 1, '119.2', '149', '0', '29.8', '0', '0'),
(22, 298, 91, 0, 3, '2023-05-02 13:21:08', 1, '143.2', '179', '16', '35.8', '0', '0'),
(23, 298, 68, 70, 3, '2023-05-02 13:21:08', 1, '1340', '1675', '16', '335', '0', '0'),
(24, 298, 83, 84, 3, '2023-05-02 13:21:08', 1, '263.2', '329', '16', '65.8', '0', '0'),
(25, 298, 97, 0, 3, '2023-05-02 13:21:08', 1, '23.2', '29', '16', '5.8', '0', '0'),
(26, 298, 73, 0, 3, '2023-05-02 13:21:08', 1, '142.4', '178', '16', '35.6', '0', '0'),
(30, 315, 98, 112, 4, '2023-05-02 21:17:07', 1, '123.2', '154', '20', '30.8', '0', '0'),
(31, 315, 74, 76, 4, '2023-05-02 21:17:07', 1, '3.2', '4', '20', '0.8', '0', '0'),
(32, 315, 67, 0, 4, '2023-05-02 21:17:07', 1, '99.2', '124', '20', '24.8', '0', '0'),
(33, 315, 79, 81, 4, '2023-05-02 21:17:07', 1, '378.4', '473', '20', '94.6', '0', '0'),
(37, 316, 91, 0, 4, '2023-05-02 21:20:54', 1, '159.2', '260.25', '0', '39.8', '49', '12.25'),
(40, 317, 97, 0, 3, '2023-05-02 21:26:13', 1, '39.2', '49', '0', '9.8', '0', '0'),
(41, 317, 51, 54, 3, '2023-05-02 21:26:13', 1, '199.2', '249', '0', '49.8', '0', '0'),
(42, 317, 87, 0, 3, '2023-05-02 21:26:13', 1, '279.2', '349', '0', '69.8', '0', '0'),
(45, 318, 97, 0, 3, '2023-05-02 21:29:00', -1, '-39.2', '-49', '0', '-9.8', '0', '0'),
(47, 320, 68, 71, 3, '2023-05-02 21:34:27', 1, '316', '395', '0', '79', '0', '0'),
(48, 320, 88, 0, 3, '2023-05-02 21:34:27', 1, '15.2', '19', '0', '3.8', '0', '0'),
(49, 320, 98, 106, 3, '2023-05-02 21:34:27', 1, '143.2', '179', '0', '35.8', '0', '0'),
(52, 321, 67, 0, 3, '2023-05-02 21:35:38', 1, '119.2', '210.25', '0', '29.8', '49', '12.25'),
(55, 322, 68, 71, 3, '2023-05-02 21:36:30', -1, '-316', '-395', '0', '-79', '0', '0'),
(57, 323, 67, 0, 3, '2023-05-02 21:38:19', -1, '-119.2', '-149', '0', '-29.8', '0', '0'),
(59, 329, 97, 0, 1, '2023-05-03 12:06:29', 1, '39.2', '49', '0', '9.8', '0', '0'),
(60, 329, 91, 0, 1, '2023-05-03 12:06:29', 2, '318.4', '398', '0', '79.6', '0', '0'),
(63, 344, 74, 76, 1, '2023-05-04 14:03:11', 1, '0', '0', '23.2', '0', '0', '0'),
(64, 344, 59, 61, 1, '2023-05-04 14:03:11', 1, '421.6', '527', '56.8', '105.4', '0', '0') ;

#
# End of data contents of table `wp_wc_order_product_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_order_stats`
#

DROP TABLE IF EXISTS `wp_wc_order_stats`;


#
# Table structure of table `wp_wc_order_stats`
#

CREATE TABLE `wp_wc_order_stats` (
  `order_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_paid` datetime DEFAULT '0000-00-00 00:00:00',
  `date_completed` datetime DEFAULT '0000-00-00 00:00:00',
  `num_items_sold` int(11) NOT NULL DEFAULT '0',
  `total_sales` double NOT NULL DEFAULT '0',
  `tax_total` double NOT NULL DEFAULT '0',
  `shipping_total` double NOT NULL DEFAULT '0',
  `net_total` double NOT NULL DEFAULT '0',
  `returning_customer` tinyint(1) DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `customer_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `date_created` (`date_created`),
  KEY `customer_id` (`customer_id`),
  KEY `status` (`status`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_order_stats`
#
INSERT INTO `wp_wc_order_stats` ( `order_id`, `parent_id`, `date_created`, `date_created_gmt`, `date_paid`, `date_completed`, `num_items_sold`, `total_sales`, `tax_total`, `shipping_total`, `net_total`, `returning_customer`, `status`, `customer_id`) VALUES
(261, 0, '2023-04-27 12:33:07', '2023-04-27 10:33:07', NULL, NULL, 2, '597', '119.4', '0', '477.6', 1, 'wc-cancelled', 1),
(262, 0, '2023-04-27 12:34:42', '2023-04-27 10:34:42', '2023-04-27 12:35:51', '2023-05-01 14:42:58', 2, '697', '139.4', '0', '557.6', 0, 'wc-completed', 1),
(291, 0, '2023-05-01 14:38:13', '2023-05-01 12:38:13', '2023-05-01 14:38:55', NULL, 4, '1605', '321', '0', '1284', 1, 'wc-processing', 1),
(293, 0, '2023-05-01 14:47:40', '2023-05-01 12:47:40', '2023-05-01 14:48:02', NULL, 4, '1224', '244.8', '0', '979.2', 0, 'wc-cancelled', 2),
(298, 0, '2023-05-02 13:21:08', '2023-05-02 11:21:08', '2023-05-02 13:21:38', '2023-05-02 13:28:13', 5, '2390', '478', '0', '1912', 0, 'wc-completed', 3),
(315, 0, '2023-05-02 21:17:07', '2023-05-02 19:17:07', '2023-05-02 21:17:26', '2023-05-02 21:18:39', 4, '755', '151', '0', '604', 0, 'wc-completed', 4),
(316, 0, '2023-05-02 21:20:54', '2023-05-02 19:20:54', '2023-05-02 21:21:11', '2023-05-02 21:23:05', 1, '260.25', '52.05', '49', '159.2', 1, 'wc-completed', 4),
(317, 0, '2023-05-02 21:26:13', '2023-05-02 19:26:13', '2023-05-02 21:27:06', '2023-05-02 21:30:33', 3, '647', '129.4', '0', '517.6', 1, 'wc-refunded', 3),
(318, 317, '2023-05-02 21:29:00', '2023-05-02 19:29:00', '2023-05-02 21:29:00', '2023-05-02 21:29:00', -1, '-49', '-9.8', '0', '-39.2', NULL, 'wc-refunded', 3),
(319, 317, '2023-05-02 21:29:42', '2023-05-02 19:29:42', '2023-05-02 21:29:42', '2023-05-02 21:29:42', 0, '-598', '0', '0', '-598', NULL, 'wc-refunded', 3),
(320, 0, '2023-05-02 21:34:27', '2023-05-02 19:34:27', '2023-05-02 21:34:40', '2023-05-02 21:36:58', 3, '593', '118.6', '0', '474.4', 1, 'wc-completed', 3),
(321, 0, '2023-05-02 21:35:38', '2023-05-02 19:35:38', NULL, NULL, 1, '210.25', '42.05', '49', '119.2', 1, 'wc-refunded', 3),
(322, 320, '2023-05-02 21:36:30', '2023-05-02 19:36:30', '2023-05-02 21:36:30', '2023-05-02 21:36:30', -1, '-395', '-79', '0', '-316', NULL, 'wc-completed', 3),
(323, 321, '2023-05-02 21:38:19', '2023-05-02 19:38:19', '2023-05-02 21:38:19', '2023-05-02 21:38:19', -1, '-149', '-29.8', '0', '-119.2', NULL, 'wc-refunded', 3),
(324, 321, '2023-05-02 21:38:38', '2023-05-02 19:38:38', '2023-05-02 21:38:38', '2023-05-02 21:38:38', 0, '-61.25', '0', '0', '-61.25', NULL, 'wc-refunded', 3),
(329, 0, '2023-05-03 12:06:29', '2023-05-03 10:06:29', '2023-05-03 12:06:40', NULL, 3, '447', '89.4', '0', '357.6', 1, 'wc-refunded', 1),
(330, 329, '2023-05-03 12:07:12', '2023-05-03 10:07:12', '2023-05-03 12:07:12', '2023-05-03 12:07:12', 0, '-447', '0', '0', '-447', NULL, 'wc-refunded', 1),
(344, 0, '2023-05-04 14:03:11', '2023-05-04 12:03:11', '2023-05-04 14:03:26', NULL, 2, '527', '105.4', '0', '421.6', 1, 'wc-processing', 1) ;

#
# End of data contents of table `wp_wc_order_stats`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_order_tax_lookup`
#

DROP TABLE IF EXISTS `wp_wc_order_tax_lookup`;


#
# Table structure of table `wp_wc_order_tax_lookup`
#

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) unsigned NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT '0',
  `order_tax` double NOT NULL DEFAULT '0',
  `total_tax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_id`,`tax_rate_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `date_created` (`date_created`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_order_tax_lookup`
#
INSERT INTO `wp_wc_order_tax_lookup` ( `order_id`, `tax_rate_id`, `date_created`, `shipping_tax`, `order_tax`, `total_tax`) VALUES
(261, 1, '2023-04-27 12:33:07', '0', '119.4', '119.4'),
(262, 1, '2023-04-27 12:34:42', '0', '139.4', '139.4'),
(291, 1, '2023-05-01 14:38:13', '0', '321', '321'),
(293, 1, '2023-05-01 14:47:40', '0', '244.8', '244.8'),
(298, 1, '2023-05-02 13:21:08', '0', '478', '478'),
(315, 1, '2023-05-02 21:17:07', '0', '151', '151'),
(316, 1, '2023-05-02 21:20:54', '12.25', '39.8', '52.05'),
(317, 1, '2023-05-02 21:26:13', '0', '129.4', '129.4'),
(318, 1, '2023-05-02 21:29:00', '0', '-9.8', '-9.8'),
(320, 1, '2023-05-02 21:34:27', '0', '118.6', '118.6'),
(321, 1, '2023-05-02 21:35:38', '12.25', '29.8', '42.05'),
(322, 1, '2023-05-02 21:36:30', '0', '-79', '-79'),
(323, 1, '2023-05-02 21:38:19', '0', '-29.8', '-29.8'),
(329, 1, '2023-05-03 12:06:29', '0', '89.4', '89.4'),
(344, 1, '2023-05-04 14:03:11', '0', '105.4', '105.4') ;

#
# End of data contents of table `wp_wc_order_tax_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_product_attributes_lookup`
#

DROP TABLE IF EXISTS `wp_wc_product_attributes_lookup`;


#
# Table structure of table `wp_wc_product_attributes_lookup`
#

CREATE TABLE `wp_wc_product_attributes_lookup` (
  `product_id` bigint(20) NOT NULL,
  `product_or_parent_id` bigint(20) NOT NULL,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `term_id` bigint(20) NOT NULL,
  `is_variation_attribute` tinyint(1) NOT NULL,
  `in_stock` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_or_parent_id`,`term_id`,`product_id`,`taxonomy`),
  KEY `is_variation_attribute_term_id` (`is_variation_attribute`,`term_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_product_attributes_lookup`
#
INSERT INTO `wp_wc_product_attributes_lookup` ( `product_id`, `product_or_parent_id`, `taxonomy`, `term_id`, `is_variation_attribute`, `in_stock`) VALUES
(54, 51, 'pa_volym', 35, 1, 1),
(53, 51, 'pa_volym', 37, 1, 1),
(58, 56, 'pa_volym', 35, 1, 1),
(57, 56, 'pa_volym', 37, 1, 1),
(63, 59, 'pa_volym', 36, 1, 1),
(61, 59, 'pa_volym', 37, 1, 1),
(69, 68, 'pa_volym', 36, 1, 1),
(71, 68, 'pa_volym', 37, 1, 1),
(70, 68, 'pa_volym', 38, 1, 1),
(75, 74, 'pa_dofter', 26, 1, 1),
(76, 74, 'pa_dofter', 27, 1, 1),
(77, 74, 'pa_dofter', 32, 1, 1),
(82, 79, 'pa_storlek', 23, 1, 1),
(81, 79, 'pa_storlek', 24, 1, 1),
(80, 79, 'pa_storlek', 25, 1, 1),
(86, 83, 'pa_storlek', 23, 1, 1),
(85, 83, 'pa_storlek', 24, 1, 1),
(84, 83, 'pa_storlek', 25, 1, 1),
(99, 98, 'pa_dofter', 26, 1, 1),
(106, 98, 'pa_dofter', 26, 1, 1),
(108, 98, 'pa_dofter', 27, 1, 1),
(107, 98, 'pa_dofter', 28, 1, 1),
(103, 98, 'pa_dofter', 29, 1, 1),
(110, 98, 'pa_dofter', 29, 1, 1),
(109, 98, 'pa_dofter', 30, 1, 1),
(112, 98, 'pa_dofter', 31, 1, 1),
(106, 98, 'pa_volym', 35, 1, 1),
(107, 98, 'pa_volym', 35, 1, 1),
(108, 98, 'pa_volym', 35, 1, 1),
(109, 98, 'pa_volym', 35, 1, 1),
(110, 98, 'pa_volym', 35, 1, 1),
(112, 98, 'pa_volym', 35, 1, 1),
(99, 98, 'pa_volym', 37, 1, 1),
(103, 98, 'pa_volym', 37, 1, 1) ;

#
# End of data contents of table `wp_wc_product_attributes_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_product_download_directories`
#

DROP TABLE IF EXISTS `wp_wc_product_download_directories`;


#
# Table structure of table `wp_wc_product_download_directories`
#

CREATE TABLE `wp_wc_product_download_directories` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`url_id`),
  KEY `url` (`url`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_product_download_directories`
#
INSERT INTO `wp_wc_product_download_directories` ( `url_id`, `url`, `enabled`) VALUES
(1, 'file://C:/MAMP/htdocs/webshop_grupp1/wp-content/uploads/woocommerce_uploads/', 1),
(2, 'http://localhost/webshop_grupp1/wp-content/uploads/woocommerce_uploads/', 1) ;

#
# End of data contents of table `wp_wc_product_download_directories`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_product_meta_lookup`
#

DROP TABLE IF EXISTS `wp_wc_product_meta_lookup`;


#
# Table structure of table `wp_wc_product_meta_lookup`
#

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(19,4) DEFAULT NULL,
  `max_price` decimal(19,4) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0',
  `tax_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'taxable',
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  PRIMARY KEY (`product_id`),
  KEY `virtual` (`virtual`),
  KEY `downloadable` (`downloadable`),
  KEY `stock_status` (`stock_status`),
  KEY `stock_quantity` (`stock_quantity`),
  KEY `onsale` (`onsale`),
  KEY `min_max_price` (`min_price`,`max_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_product_meta_lookup`
#
INSERT INTO `wp_wc_product_meta_lookup` ( `product_id`, `sku`, `virtual`, `downloadable`, `min_price`, `max_price`, `onsale`, `stock_quantity`, `stock_status`, `rating_count`, `average_rating`, `total_sales`, `tax_status`, `tax_class`) VALUES
(51, '', 0, 0, '249.0000', '1298.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(53, 'purifysplus-5L', 0, 0, '1298.0000', '1298.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(54, 'purifysplus-500ml', 0, 0, '249.0000', '249.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(56, '', 0, 0, '298.0000', '1498.0000', 0, NULL, 'instock', 0, '0.00', 1, 'taxable', ''),
(57, 'purifys-5L', 0, 0, '1498.0000', '1498.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(58, 'purifys-500ml', 0, 0, '298.0000', '298.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(59, '', 0, 0, '189.0000', '598.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(61, 'elevate-5L', 0, 0, '598.0000', '598.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(63, 'elevate-1L', 0, 0, '189.0000', '189.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(67, 'visionglas', 0, 0, '149.0000', '149.0000', 1, '9', 'instock', 0, '0.00', 3, 'taxable', ''),
(68, '', 0, 0, '129.0000', '1695.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(69, 'extract-1L', 0, 0, '129.0000', '129.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(70, 'extract-25L', 0, 0, '1695.0000', '1695.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(71, 'extract-5L', 0, 0, '395.0000', '395.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(73, 'refined', 0, 0, '198.0000', '198.0000', 0, '9', 'instock', 0, '0.00', 1, 'taxable', ''),
(74, '', 0, 0, '29.0000', '29.0000', 0, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(75, 'airfreshener-äpple', 0, 0, '29.0000', '29.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(76, 'airfreshener-jordgubb', 0, 0, '29.0000', '29.0000', 0, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(77, 'airfreshener-vanilj', 0, 0, '29.0000', '29.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(79, '', 0, 0, '498.0000', '498.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(80, 'hoodie-large', 0, 0, '498.0000', '498.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(81, 'hoodie-medium', 0, 0, '498.0000', '498.0000', 0, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(82, 'hoodie-small', 0, 0, '498.0000', '498.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(83, '', 0, 0, '259.0000', '349.0000', 0, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(84, 'tshirt-large', 0, 0, '349.0000', '349.0000', 0, '7', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(85, 'tshirt-medium', 0, 0, '259.0000', '259.0000', 1, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(86, 'tshirt-small', 0, 0, '259.0000', '259.0000', 1, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(87, 'washbucket', 0, 0, '349.0000', '349.0000', 0, '9', 'instock', 0, '0.00', 1, 'taxable', ''),
(88, '', 0, 0, '19.0000', '19.0000', 1, NULL, 'instock', 0, '0.00', 2, 'taxable', ''),
(90, '', 0, 0, '25.0000', '25.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, 'torkduk', 0, 0, '199.0000', '199.0000', 1, '5', 'instock', 0, '0.00', 5, 'taxable', ''),
(94, 'spraypump-petroleum', 0, 0, '295.0000', '295.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(96, 'spraypump-akalisk', 0, 0, '249.0000', '249.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(97, 'applicator', 0, 0, '49.0000', '49.0000', 0, '8', 'instock', 0, '0.00', 3, 'taxable', ''),
(98, '', 0, 0, '179.0000', '898.0000', 0, NULL, 'instock', 0, '0.00', 3, 'taxable', ''),
(99, 'apc-apple-5L', 0, 0, '898.0000', '898.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(103, 'apc-melon-5L', 0, 0, '898.0000', '898.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(106, 'apc-apple', 0, 0, '179.0000', '179.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(107, 'apc-cedertra', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(108, 'apc-jordgubb', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(109, 'apc-lime', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(110, 'apc-melon', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(112, 'apc-viol', 0, 0, '179.0000', '179.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(230, 'revive-lemonade-energy-drink', 0, 0, '19.0000', '19.0000', 0, '0', 'outofstock', 0, '0.00', 0, 'taxable', '') ;

#
# End of data contents of table `wp_wc_product_meta_lookup`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_rate_limits`
#

DROP TABLE IF EXISTS `wp_wc_rate_limits`;


#
# Table structure of table `wp_wc_rate_limits`
#

CREATE TABLE `wp_wc_rate_limits` (
  `rate_limit_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rate_limit_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rate_limit_expiry` bigint(20) unsigned NOT NULL,
  `rate_limit_remaining` smallint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rate_limit_id`),
  UNIQUE KEY `rate_limit_key` (`rate_limit_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_rate_limits`
#

#
# End of data contents of table `wp_wc_rate_limits`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_reserved_stock`
#

DROP TABLE IF EXISTS `wp_wc_reserved_stock`;


#
# Table structure of table `wp_wc_reserved_stock`
#

CREATE TABLE `wp_wc_reserved_stock` (
  `order_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `stock_quantity` double NOT NULL DEFAULT '0',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expires` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`order_id`,`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_reserved_stock`
#

#
# End of data contents of table `wp_wc_reserved_stock`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_tax_rate_classes`
#

DROP TABLE IF EXISTS `wp_wc_tax_rate_classes`;


#
# Table structure of table `wp_wc_tax_rate_classes`
#

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_class_id`),
  UNIQUE KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_tax_rate_classes`
#
INSERT INTO `wp_wc_tax_rate_classes` ( `tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate') ;

#
# End of data contents of table `wp_wc_tax_rate_classes`
# --------------------------------------------------------



#
# Delete any existing table `wp_wc_webhooks`
#

DROP TABLE IF EXISTS `wp_wc_webhooks`;


#
# Table structure of table `wp_wc_webhooks`
#

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`webhook_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_webhooks`
#

#
# End of data contents of table `wp_wc_webhooks`
# --------------------------------------------------------



#
# Delete any existing table `wp_wcpdf_invoice_number`
#

DROP TABLE IF EXISTS `wp_wcpdf_invoice_number`;


#
# Table structure of table `wp_wcpdf_invoice_number`
#

CREATE TABLE `wp_wcpdf_invoice_number` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `order_id` int(16) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `calculated_number` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wcpdf_invoice_number`
#
INSERT INTO `wp_wcpdf_invoice_number` ( `id`, `order_id`, `date`, `calculated_number`) VALUES
(1, 262, '2023-04-27 23:01:12', NULL),
(2, 298, '2023-05-02 13:28:13', NULL),
(3, 315, '2023-05-02 21:18:39', NULL),
(4, 316, '2023-05-02 21:23:05', NULL),
(5, 317, '2023-05-02 21:27:06', NULL),
(6, 320, '2023-05-02 21:36:58', NULL),
(7, 293, '2023-05-03 09:31:53', NULL),
(8, 321, '2023-05-03 09:32:17', NULL) ;

#
# End of data contents of table `wp_wcpdf_invoice_number`
# --------------------------------------------------------



#
# Delete any existing table `wp_wcpdf_packing_slip_number`
#

DROP TABLE IF EXISTS `wp_wcpdf_packing_slip_number`;


#
# Table structure of table `wp_wcpdf_packing_slip_number`
#

CREATE TABLE `wp_wcpdf_packing_slip_number` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `order_id` int(16) DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  `calculated_number` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wcpdf_packing_slip_number`
#

#
# End of data contents of table `wp_wcpdf_packing_slip_number`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_api_keys`
#

DROP TABLE IF EXISTS `wp_woocommerce_api_keys`;


#
# Table structure of table `wp_woocommerce_api_keys`
#

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL,
  PRIMARY KEY (`key_id`),
  KEY `consumer_key` (`consumer_key`),
  KEY `consumer_secret` (`consumer_secret`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#
INSERT INTO `wp_woocommerce_api_keys` ( `key_id`, `user_id`, `description`, `permissions`, `consumer_key`, `consumer_secret`, `nonces`, `truncated_key`, `last_access`) VALUES
(1, 2, 'Webshop-api', 'read', 'df28250817ffae0b618ab9468618f1d6395b8327a47867f00fe9a9c1e4547f35', 'cs_2a4a40bdb2f9dcb64d6b6d4f7f3e30ddc6fd438f', 'a:4:{i:1683027645;s:32:"wkGb1uGbl8Ez2yLtuDQFRmW17WyAUwVY";i:1683027647;s:32:"gnABUHdvcatyFknI6VEjmveEXOxf9Wia";i:1683028299;s:32:"FQY0seS1PfBuXEuob8XnIW55u5jxGyBX";i:1683028304;s:32:"nFQWL455aXMe0s4xxOG2c4E1UXarwhvc";}', 'fda3660', '2023-05-02 13:51:45') ;

#
# End of data contents of table `wp_woocommerce_api_keys`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_attribute_taxonomies`
#

DROP TABLE IF EXISTS `wp_woocommerce_attribute_taxonomies`;


#
# Table structure of table `wp_woocommerce_attribute_taxonomies`
#

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`attribute_id`),
  KEY `attribute_name` (`attribute_name`(20))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_attribute_taxonomies`
#
INSERT INTO `wp_woocommerce_attribute_taxonomies` ( `attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'storlek', 'Storlek', 'select', 'menu_order', 0),
(2, 'dofter', 'Dofter', 'select', 'menu_order', 0),
(3, 'volym', 'Volym', 'select', 'menu_order', 0) ;

#
# End of data contents of table `wp_woocommerce_attribute_taxonomies`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_downloadable_product_permissions`
#

DROP TABLE IF EXISTS `wp_woocommerce_downloadable_product_permissions`;


#
# Table structure of table `wp_woocommerce_downloadable_product_permissions`
#

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `order_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`permission_id`),
  KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  KEY `order_id` (`order_id`),
  KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_downloadable_product_permissions`
#

#
# End of data contents of table `wp_woocommerce_downloadable_product_permissions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_log`
#

DROP TABLE IF EXISTS `wp_woocommerce_log`;


#
# Table structure of table `wp_woocommerce_log`
#

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`log_id`),
  KEY `level` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_log`
#

#
# End of data contents of table `wp_woocommerce_log`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_itemmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_itemmeta`;


#
# Table structure of table `wp_woocommerce_order_itemmeta`
#

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `order_item_id` (`order_item_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB AUTO_INCREMENT=551 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '91'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '159.2'),
(6, 1, '_line_subtotal_tax', '39.8'),
(7, 1, '_line_total', '119.2'),
(8, 1, '_line_tax', '29.8'),
(9, 1, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"29.8";}s:8:"subtotal";a:1:{i:1;s:4:"39.8";}}'),
(10, 2, '_product_id', '79'),
(11, 2, '_variation_id', '81'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '398.4'),
(15, 2, '_line_subtotal_tax', '99.6'),
(16, 2, '_line_total', '358.4'),
(17, 2, '_line_tax', '89.6'),
(18, 2, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"89.6";}s:8:"subtotal";a:1:{i:1;s:4:"99.6";}}'),
(19, 2, 'pa_storlek', 'medium'),
(20, 3, 'method_id', 'free_shipping'),
(21, 3, 'instance_id', '6'),
(22, 3, 'cost', '0.00'),
(23, 3, 'total_tax', '0'),
(24, 3, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(25, 3, 'Artiklar', 'DRYING TOWEL BIG &times; 1, LOGO HOODIE - SVART - Medium &times; 1'),
(26, 4, 'rate_id', '1'),
(27, 4, 'label', '25%'),
(28, 4, 'compound', ''),
(29, 4, 'tax_amount', '119.4'),
(30, 4, 'shipping_tax_amount', '0'),
(31, 4, 'rate_percent', '25'),
(32, 5, 'discount_amount', '80'),
(33, 5, 'discount_amount_tax', '20'),
(34, 5, 'coupon_data', 'a:25:{s:2:"id";i:257;s:4:"code";s:6:"100off";s:6:"amount";s:3:"100";s:6:"status";s:7:"publish";s:12:"date_created";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 10:44:42.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"date_modified";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 10:50:15.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:12:"date_expires";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2024-09-27 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"discount_type";s:10:"fixed_cart";s:11:"description";s:13:"100 kr rabatt";s:11:"usage_count";i:0;s:14:"individual_use";b:0;s:11:"product_ids";a:0:{}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:0;s:20:"usage_limit_per_user";i:1;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:3:"200";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:1:{i:0;O:12:"WC_Meta_Data":4:{s:15:"\0*\0current_data";a:3:{s:2:"id";i:1606;s:3:"key";s:32:"_maybe_used_by_1682595187_5LCDDe";s:5:"value";s:1:"2";}s:7:"\0*\0data";a:3:{s:2:"id";i:1606;s:3:"key";s:32:"_maybe_used_by_1682595187_5LCDDe";s:5:"value";s:1:"2";}s:12:"current_data";a:3:{s:2:"id";i:1606;s:3:"key";s:32:"_maybe_used_by_1682595187_5LCDDe";s:5:"value";s:1:"2";}s:4:"data";a:3:{s:2:"id";i:1606;s:3:"key";s:32:"_maybe_used_by_1682595187_5LCDDe";s:5:"value";s:1:"2";}}}}'),
(35, 6, '_product_id', '91'),
(36, 6, '_variation_id', '0'),
(37, 6, '_qty', '1'),
(38, 6, '_tax_class', ''),
(39, 6, '_line_subtotal', '159.2'),
(40, 6, '_line_subtotal_tax', '39.8'),
(41, 6, '_line_total', '159.2'),
(42, 6, '_line_tax', '39.8'),
(43, 6, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"39.8";}s:8:"subtotal";a:1:{i:1;s:4:"39.8";}}'),
(44, 7, '_product_id', '79'),
(45, 7, '_variation_id', '81'),
(46, 7, '_qty', '1'),
(47, 7, '_tax_class', ''),
(48, 7, '_line_subtotal', '398.4'),
(49, 7, '_line_subtotal_tax', '99.6'),
(50, 7, '_line_total', '398.4'),
(51, 7, '_line_tax', '99.6'),
(52, 7, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"99.6";}s:8:"subtotal";a:1:{i:1;s:4:"99.6";}}'),
(53, 7, 'pa_storlek', 'medium'),
(54, 8, 'method_id', 'free_shipping'),
(55, 8, 'instance_id', '6'),
(56, 8, 'cost', '0.00'),
(57, 8, 'total_tax', '0'),
(58, 8, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(59, 8, 'Artiklar', 'DRYING TOWEL BIG &times; 1, LOGO HOODIE - SVART - Medium &times; 1'),
(60, 9, 'rate_id', '1'),
(61, 9, 'label', '25%'),
(62, 9, 'compound', ''),
(63, 9, 'tax_amount', '139.4'),
(64, 9, 'shipping_tax_amount', '0'),
(65, 9, 'rate_percent', '25'),
(66, 6, '_reduced_stock', '1'),
(67, 7, '_reduced_stock', '1'),
(68, 10, '_product_id', '51'),
(69, 10, '_variation_id', '53'),
(70, 10, '_qty', '1'),
(71, 10, '_tax_class', ''),
(72, 10, '_line_subtotal', '1038.4'),
(73, 10, '_line_subtotal_tax', '259.6'),
(74, 10, '_line_total', '1038.4'),
(75, 10, '_line_tax', '259.6'),
(76, 10, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:5:"259.6";}s:8:"subtotal";a:1:{i:1;s:5:"259.6";}}'),
(77, 10, 'pa_volym', '5-liter'),
(78, 11, '_product_id', '88'),
(79, 11, '_variation_id', '0'),
(80, 11, '_qty', '1'),
(81, 11, '_tax_class', ''),
(82, 11, '_line_subtotal', '15.2'),
(83, 11, '_line_subtotal_tax', '3.8'),
(84, 11, '_line_total', '15.2'),
(85, 11, '_line_tax', '3.8'),
(86, 11, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"3.8";}s:8:"subtotal";a:1:{i:1;s:3:"3.8";}}'),
(87, 12, '_product_id', '83'),
(88, 12, '_variation_id', '85'),
(89, 12, '_qty', '1'),
(90, 12, '_tax_class', ''),
(91, 12, '_line_subtotal', '207.2'),
(92, 12, '_line_subtotal_tax', '51.8'),
(93, 12, '_line_total', '207.2'),
(94, 12, '_line_tax', '51.8'),
(95, 12, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"51.8";}s:8:"subtotal";a:1:{i:1;s:4:"51.8";}}'),
(96, 12, 'pa_storlek', 'medium'),
(97, 13, '_product_id', '74'),
(98, 13, '_variation_id', '75'),
(99, 13, '_qty', '1'),
(100, 13, '_tax_class', '') ;
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(101, 13, '_line_subtotal', '23.2'),
(102, 13, '_line_subtotal_tax', '5.8'),
(103, 13, '_line_total', '23.2'),
(104, 13, '_line_tax', '5.8'),
(105, 13, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"5.8";}s:8:"subtotal";a:1:{i:1;s:3:"5.8";}}'),
(106, 13, 'pa_dofter', 'apple'),
(107, 14, 'method_id', 'free_shipping'),
(108, 14, 'instance_id', '6'),
(109, 14, 'cost', '0.00'),
(110, 14, 'total_tax', '0'),
(111, 14, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(112, 14, 'Artiklar', 'PURIFY S+ SCHAMPO - 5 liter &times; 1, P-SKIVA / ISSKRAPA &times; 1, T-SHIRT - YARIS GR - Medium &times; 1, AIR FRESHENER - Äpple &times; 1'),
(113, 15, 'rate_id', '1'),
(114, 15, 'label', '25%'),
(115, 15, 'compound', ''),
(116, 15, 'tax_amount', '321'),
(117, 15, 'shipping_tax_amount', '0'),
(118, 15, 'rate_percent', '25'),
(119, 10, '_reduced_stock', '1'),
(120, 12, '_reduced_stock', '1'),
(121, 13, '_reduced_stock', '1'),
(122, 16, '_product_id', '98'),
(123, 16, '_variation_id', '108'),
(124, 16, '_qty', '1'),
(125, 16, '_tax_class', ''),
(126, 16, '_line_subtotal', '143.2'),
(127, 16, '_line_subtotal_tax', '35.8'),
(128, 16, '_line_total', '143.2'),
(129, 16, '_line_tax', '35.8'),
(130, 16, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"35.8";}s:8:"subtotal";a:1:{i:1;s:4:"35.8";}}'),
(131, 16, 'pa_volym', '500-ml'),
(132, 16, 'pa_dofter', 'jordgubb'),
(133, 17, '_product_id', '59'),
(134, 17, '_variation_id', '61'),
(135, 17, '_qty', '1'),
(136, 17, '_tax_class', ''),
(137, 17, '_line_subtotal', '478.4'),
(138, 17, '_line_subtotal_tax', '119.6'),
(139, 17, '_line_total', '478.4'),
(140, 17, '_line_tax', '119.6'),
(141, 17, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:5:"119.6";}s:8:"subtotal";a:1:{i:1;s:5:"119.6";}}'),
(142, 17, 'pa_volym', '5-liter'),
(143, 18, '_product_id', '56'),
(144, 18, '_variation_id', '58'),
(145, 18, '_qty', '1'),
(146, 18, '_tax_class', ''),
(147, 18, '_line_subtotal', '238.4'),
(148, 18, '_line_subtotal_tax', '59.6'),
(149, 18, '_line_total', '238.4'),
(150, 18, '_line_tax', '59.6'),
(151, 18, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"59.6";}s:8:"subtotal";a:1:{i:1;s:4:"59.6";}}'),
(152, 18, 'pa_volym', '500-ml'),
(153, 19, '_product_id', '67'),
(154, 19, '_variation_id', '0'),
(155, 19, '_qty', '1'),
(156, 19, '_tax_class', ''),
(157, 19, '_line_subtotal', '119.2'),
(158, 19, '_line_subtotal_tax', '29.8'),
(159, 19, '_line_total', '119.2'),
(160, 19, '_line_tax', '29.8'),
(161, 19, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"29.8";}s:8:"subtotal";a:1:{i:1;s:4:"29.8";}}'),
(162, 20, 'method_id', 'free_shipping'),
(163, 20, 'instance_id', '6'),
(164, 20, 'cost', '0.00'),
(165, 20, 'total_tax', '0'),
(166, 20, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(167, 20, 'Artiklar', 'APC - INTERIOR CLEANER - 500 ml, Jordgubb &times; 1, ELEVATE - SNOW FOAM - 5 liter &times; 1, PURIFY S - SCHAMPO GLOSS - 500 ml &times; 1, VISION+ GLASS CLEANER 500ML &times; 1'),
(168, 21, 'rate_id', '1'),
(169, 21, 'label', '25%'),
(170, 21, 'compound', ''),
(171, 21, 'tax_amount', '244.8'),
(172, 21, 'shipping_tax_amount', '0'),
(173, 21, 'rate_percent', '25'),
(174, 22, '_product_id', '91'),
(175, 22, '_variation_id', '0'),
(176, 22, '_qty', '1'),
(177, 22, '_tax_class', ''),
(178, 22, '_line_subtotal', '159.2'),
(179, 22, '_line_subtotal_tax', '39.8'),
(180, 22, '_line_total', '143.2'),
(181, 22, '_line_tax', '35.8'),
(182, 22, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"35.8";}s:8:"subtotal";a:1:{i:1;s:4:"39.8";}}'),
(183, 23, '_product_id', '68'),
(184, 23, '_variation_id', '70'),
(185, 23, '_qty', '1'),
(186, 23, '_tax_class', ''),
(187, 23, '_line_subtotal', '1356'),
(188, 23, '_line_subtotal_tax', '339'),
(189, 23, '_line_total', '1340'),
(190, 23, '_line_tax', '335'),
(191, 23, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"335";}s:8:"subtotal";a:1:{i:1;s:3:"339";}}'),
(192, 23, 'pa_volym', '25-liter'),
(193, 24, '_product_id', '83'),
(194, 24, '_variation_id', '84'),
(195, 24, '_qty', '1'),
(196, 24, '_tax_class', ''),
(197, 24, '_line_subtotal', '279.2'),
(198, 24, '_line_subtotal_tax', '69.8'),
(199, 24, '_line_total', '263.2'),
(200, 24, '_line_tax', '65.8') ;
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(201, 24, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"65.8";}s:8:"subtotal";a:1:{i:1;s:4:"69.8";}}'),
(202, 24, 'pa_storlek', 'large'),
(203, 25, '_product_id', '97'),
(204, 25, '_variation_id', '0'),
(205, 25, '_qty', '1'),
(206, 25, '_tax_class', ''),
(207, 25, '_line_subtotal', '39.2'),
(208, 25, '_line_subtotal_tax', '9.8'),
(209, 25, '_line_total', '23.2'),
(210, 25, '_line_tax', '5.8'),
(211, 25, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"5.8";}s:8:"subtotal";a:1:{i:1;s:3:"9.8";}}'),
(212, 26, '_product_id', '73'),
(213, 26, '_variation_id', '0'),
(214, 26, '_qty', '1'),
(215, 26, '_tax_class', ''),
(216, 26, '_line_subtotal', '158.4'),
(217, 26, '_line_subtotal_tax', '39.6'),
(218, 26, '_line_total', '142.4'),
(219, 26, '_line_tax', '35.6'),
(220, 26, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"35.6";}s:8:"subtotal";a:1:{i:1;s:4:"39.6";}}'),
(221, 27, 'method_id', 'free_shipping'),
(222, 27, 'instance_id', '6'),
(223, 27, 'cost', '0.00'),
(224, 27, 'total_tax', '0'),
(225, 27, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(226, 27, 'Artiklar', 'DRYING TOWEL BIG &times; 1, EXTRACT - ALKALISK AVFETTNING - 25 liter &times; 1, T-SHIRT - YARIS GR - Large &times; 1, APPLICATOR &times; 1, REFINED - RUBBER AND TRIM 500ML &times; 1'),
(227, 28, 'rate_id', '1'),
(228, 28, 'label', '25%'),
(229, 28, 'compound', ''),
(230, 28, 'tax_amount', '478'),
(231, 28, 'shipping_tax_amount', '0'),
(232, 28, 'rate_percent', '25'),
(233, 29, 'discount_amount', '80'),
(234, 29, 'discount_amount_tax', '20'),
(235, 29, 'coupon_data', 'a:25:{s:2:"id";i:257;s:4:"code";s:6:"100off";s:6:"amount";s:3:"100";s:6:"status";s:7:"publish";s:12:"date_created";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 10:44:42.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"date_modified";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 12:39:01.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:12:"date_expires";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2024-09-27 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"discount_type";s:10:"fixed_cart";s:11:"description";s:13:"100 kr rabatt";s:11:"usage_count";i:0;s:14:"individual_use";b:0;s:11:"product_ids";a:0:{}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:0;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:3:"200";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(236, 22, '_reduced_stock', '1'),
(237, 23, '_reduced_stock', '1'),
(238, 24, '_reduced_stock', '1'),
(239, 25, '_reduced_stock', '1'),
(240, 26, '_reduced_stock', '1'),
(241, 30, '_product_id', '98'),
(242, 30, '_variation_id', '112'),
(243, 30, '_qty', '1'),
(244, 30, '_tax_class', ''),
(245, 30, '_line_subtotal', '143.2'),
(246, 30, '_line_subtotal_tax', '35.8'),
(247, 30, '_line_total', '123.2'),
(248, 30, '_line_tax', '30.8'),
(249, 30, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"30.8";}s:8:"subtotal";a:1:{i:1;s:4:"35.8";}}'),
(250, 30, 'pa_volym', '500-ml'),
(251, 30, 'pa_dofter', 'viol'),
(252, 31, '_product_id', '74'),
(253, 31, '_variation_id', '76'),
(254, 31, '_qty', '1'),
(255, 31, '_tax_class', ''),
(256, 31, '_line_subtotal', '23.2'),
(257, 31, '_line_subtotal_tax', '5.8'),
(258, 31, '_line_total', '3.2'),
(259, 31, '_line_tax', '0.8'),
(260, 31, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"0.8";}s:8:"subtotal";a:1:{i:1;s:3:"5.8";}}'),
(261, 31, 'pa_dofter', 'jordgubb'),
(262, 32, '_product_id', '67'),
(263, 32, '_variation_id', '0'),
(264, 32, '_qty', '1'),
(265, 32, '_tax_class', ''),
(266, 32, '_line_subtotal', '119.2'),
(267, 32, '_line_subtotal_tax', '29.8'),
(268, 32, '_line_total', '99.2'),
(269, 32, '_line_tax', '24.8'),
(270, 32, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"24.8";}s:8:"subtotal";a:1:{i:1;s:4:"29.8";}}'),
(271, 33, '_product_id', '79'),
(272, 33, '_variation_id', '81'),
(273, 33, '_qty', '1'),
(274, 33, '_tax_class', ''),
(275, 33, '_line_subtotal', '398.4'),
(276, 33, '_line_subtotal_tax', '99.6'),
(277, 33, '_line_total', '378.4'),
(278, 33, '_line_tax', '94.6'),
(279, 33, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"94.6";}s:8:"subtotal";a:1:{i:1;s:4:"99.6";}}'),
(280, 33, 'pa_storlek', 'medium'),
(281, 34, 'method_id', 'free_shipping'),
(282, 34, 'instance_id', '6'),
(283, 34, 'cost', '0.00'),
(284, 34, 'total_tax', '0'),
(285, 34, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(286, 34, 'Artiklar', 'APC - INTERIOR CLEANER - 500 ml, Viol &times; 1, AIR FRESHENER - Jordgubb &times; 1, VISION+ GLASS CLEANER 500ML &times; 1, LOGO HOODIE - SVART - Medium &times; 1'),
(287, 35, 'rate_id', '1'),
(288, 35, 'label', '25%'),
(289, 35, 'compound', ''),
(290, 35, 'tax_amount', '151'),
(291, 35, 'shipping_tax_amount', '0'),
(292, 35, 'rate_percent', '25'),
(293, 36, 'discount_amount', '80'),
(294, 36, 'discount_amount_tax', '20'),
(295, 36, 'coupon_data', 'a:25:{s:2:"id";i:257;s:4:"code";s:6:"100off";s:6:"amount";s:3:"100";s:6:"status";s:7:"publish";s:12:"date_created";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 10:44:42.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"date_modified";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 12:39:01.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:12:"date_expires";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2024-09-27 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"discount_type";s:10:"fixed_cart";s:11:"description";s:13:"100 kr rabatt";s:11:"usage_count";i:1;s:14:"individual_use";b:0;s:11:"product_ids";a:0:{}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:0;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:3:"200";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(296, 30, '_reduced_stock', '1'),
(297, 31, '_reduced_stock', '1'),
(298, 32, '_reduced_stock', '1'),
(299, 33, '_reduced_stock', '1'),
(300, 37, '_product_id', '91') ;
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(301, 37, '_variation_id', '0'),
(302, 37, '_qty', '1'),
(303, 37, '_tax_class', ''),
(304, 37, '_line_subtotal', '159.2'),
(305, 37, '_line_subtotal_tax', '39.8'),
(306, 37, '_line_total', '159.2'),
(307, 37, '_line_tax', '39.8'),
(308, 37, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"39.8";}s:8:"subtotal";a:1:{i:1;s:4:"39.8";}}'),
(309, 38, 'method_id', 'flat_rate'),
(310, 38, 'instance_id', '2'),
(311, 38, 'cost', '49.00'),
(312, 38, 'total_tax', '12.25'),
(313, 38, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:5:"12.25";}}'),
(314, 38, 'Artiklar', 'DRYING TOWEL BIG &times; 1'),
(315, 39, 'rate_id', '1'),
(316, 39, 'label', '25%'),
(317, 39, 'compound', ''),
(318, 39, 'tax_amount', '39.8'),
(319, 39, 'shipping_tax_amount', '12.25'),
(320, 39, 'rate_percent', '25'),
(321, 37, '_reduced_stock', '1'),
(322, 40, '_product_id', '97'),
(323, 40, '_variation_id', '0'),
(324, 40, '_qty', '1'),
(325, 40, '_tax_class', ''),
(326, 40, '_line_subtotal', '39.2'),
(327, 40, '_line_subtotal_tax', '9.8'),
(328, 40, '_line_total', '39.2'),
(329, 40, '_line_tax', '9.8'),
(330, 40, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"9.8";}s:8:"subtotal";a:1:{i:1;s:3:"9.8";}}'),
(331, 41, '_product_id', '51'),
(332, 41, '_variation_id', '54'),
(333, 41, '_qty', '1'),
(334, 41, '_tax_class', ''),
(335, 41, '_line_subtotal', '199.2'),
(336, 41, '_line_subtotal_tax', '49.8'),
(337, 41, '_line_total', '199.2'),
(338, 41, '_line_tax', '49.8'),
(339, 41, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"49.8";}s:8:"subtotal";a:1:{i:1;s:4:"49.8";}}'),
(340, 41, 'pa_volym', '500-ml'),
(341, 42, '_product_id', '87'),
(342, 42, '_variation_id', '0'),
(343, 42, '_qty', '1'),
(344, 42, '_tax_class', ''),
(345, 42, '_line_subtotal', '279.2'),
(346, 42, '_line_subtotal_tax', '69.8'),
(347, 42, '_line_total', '279.2'),
(348, 42, '_line_tax', '69.8'),
(349, 42, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"69.8";}s:8:"subtotal";a:1:{i:1;s:4:"69.8";}}'),
(350, 43, 'method_id', 'free_shipping'),
(351, 43, 'instance_id', '6'),
(352, 43, 'cost', '0.00'),
(353, 43, 'total_tax', '0'),
(354, 43, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(355, 43, 'Artiklar', 'APPLICATOR &times; 1, PURIFY S+ SCHAMPO - 500 ml &times; 1, WASH BUCKET &times; 1'),
(356, 44, 'rate_id', '1'),
(357, 44, 'label', '25%'),
(358, 44, 'compound', ''),
(359, 44, 'tax_amount', '129.4'),
(360, 44, 'shipping_tax_amount', '0'),
(361, 44, 'rate_percent', '25'),
(362, 40, '_reduced_stock', '0'),
(363, 41, '_reduced_stock', '1'),
(364, 42, '_reduced_stock', '1'),
(365, 45, '_product_id', '97'),
(366, 45, '_variation_id', '0'),
(367, 45, '_qty', '-1'),
(368, 45, '_tax_class', ''),
(369, 45, '_line_subtotal', '-39.2'),
(370, 45, '_line_subtotal_tax', '-9.8'),
(371, 45, '_line_total', '-39.2'),
(372, 45, '_line_tax', '-9.8'),
(373, 45, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"-9.8";}s:8:"subtotal";a:1:{i:1;s:4:"-9.8";}}'),
(374, 45, '_refunded_item_id', '40'),
(375, 46, 'rate_id', '1'),
(376, 46, 'label', '25%'),
(377, 46, 'compound', ''),
(378, 46, 'tax_amount', '-9.8'),
(379, 46, 'shipping_tax_amount', '0'),
(380, 46, 'rate_percent', '25'),
(381, 40, '_restock_refunded_items', '1'),
(382, 47, '_product_id', '68'),
(383, 47, '_variation_id', '71'),
(384, 47, '_qty', '1'),
(385, 47, '_tax_class', ''),
(386, 47, '_line_subtotal', '316'),
(387, 47, '_line_subtotal_tax', '79'),
(388, 47, '_line_total', '316'),
(389, 47, '_line_tax', '79'),
(390, 47, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:2:"79";}s:8:"subtotal";a:1:{i:1;s:2:"79";}}'),
(391, 47, 'pa_volym', '5-liter'),
(392, 48, '_product_id', '88'),
(393, 48, '_variation_id', '0'),
(394, 48, '_qty', '1'),
(395, 48, '_tax_class', ''),
(396, 48, '_line_subtotal', '15.2'),
(397, 48, '_line_subtotal_tax', '3.8'),
(398, 48, '_line_total', '15.2'),
(399, 48, '_line_tax', '3.8'),
(400, 48, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"3.8";}s:8:"subtotal";a:1:{i:1;s:3:"3.8";}}') ;
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(401, 49, '_product_id', '98'),
(402, 49, '_variation_id', '106'),
(403, 49, '_qty', '1'),
(404, 49, '_tax_class', ''),
(405, 49, '_line_subtotal', '143.2'),
(406, 49, '_line_subtotal_tax', '35.8'),
(407, 49, '_line_total', '143.2'),
(408, 49, '_line_tax', '35.8'),
(409, 49, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"35.8";}s:8:"subtotal";a:1:{i:1;s:4:"35.8";}}'),
(410, 49, 'pa_volym', '500-ml'),
(411, 49, 'pa_dofter', 'apple'),
(412, 50, 'method_id', 'free_shipping'),
(413, 50, 'instance_id', '6'),
(414, 50, 'cost', '0.00'),
(415, 50, 'total_tax', '0'),
(416, 50, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(417, 50, 'Artiklar', 'EXTRACT - ALKALISK AVFETTNING - 5 liter &times; 1, P-SKIVA / ISSKRAPA &times; 1, APC - INTERIOR CLEANER - 500 ml, Äpple &times; 1'),
(418, 51, 'rate_id', '1'),
(419, 51, 'label', '25%'),
(420, 51, 'compound', ''),
(421, 51, 'tax_amount', '118.6'),
(422, 51, 'shipping_tax_amount', '0'),
(423, 51, 'rate_percent', '25'),
(424, 47, '_reduced_stock', '0'),
(425, 49, '_reduced_stock', '1'),
(426, 52, '_product_id', '67'),
(427, 52, '_variation_id', '0'),
(428, 52, '_qty', '1'),
(429, 52, '_tax_class', ''),
(430, 52, '_line_subtotal', '119.2'),
(431, 52, '_line_subtotal_tax', '29.8'),
(432, 52, '_line_total', '119.2'),
(433, 52, '_line_tax', '29.8'),
(434, 52, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"29.8";}s:8:"subtotal";a:1:{i:1;s:4:"29.8";}}'),
(435, 53, 'method_id', 'flat_rate'),
(436, 53, 'instance_id', '2'),
(437, 53, 'cost', '49.00'),
(438, 53, 'total_tax', '12.25'),
(439, 53, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:5:"12.25";}}'),
(440, 53, 'Artiklar', 'VISION+ GLASS CLEANER 500ML &times; 1'),
(441, 54, 'rate_id', '1'),
(442, 54, 'label', '25%'),
(443, 54, 'compound', ''),
(444, 54, 'tax_amount', '29.8'),
(445, 54, 'shipping_tax_amount', '12.25'),
(446, 54, 'rate_percent', '25'),
(447, 52, '_reduced_stock', '0'),
(448, 55, '_product_id', '68'),
(449, 55, '_variation_id', '71'),
(450, 55, '_qty', '-1'),
(451, 55, '_tax_class', ''),
(452, 55, '_line_subtotal', '-316'),
(453, 55, '_line_subtotal_tax', '-79'),
(454, 55, '_line_total', '-316'),
(455, 55, '_line_tax', '-79'),
(456, 55, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"-79";}s:8:"subtotal";a:1:{i:1;s:3:"-79";}}'),
(457, 55, '_refunded_item_id', '47'),
(458, 56, 'rate_id', '1'),
(459, 56, 'label', '25%'),
(460, 56, 'compound', ''),
(461, 56, 'tax_amount', '-79'),
(462, 56, 'shipping_tax_amount', '0'),
(463, 56, 'rate_percent', '25'),
(464, 47, '_restock_refunded_items', '1'),
(465, 57, '_product_id', '67'),
(466, 57, '_variation_id', '0'),
(467, 57, '_qty', '-1'),
(468, 57, '_tax_class', ''),
(469, 57, '_line_subtotal', '-119.2'),
(470, 57, '_line_subtotal_tax', '-29.8'),
(471, 57, '_line_total', '-119.2'),
(472, 57, '_line_tax', '-29.8'),
(473, 57, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:5:"-29.8";}s:8:"subtotal";a:1:{i:1;s:5:"-29.8";}}'),
(474, 57, '_refunded_item_id', '52'),
(475, 58, 'rate_id', '1'),
(476, 58, 'label', '25%'),
(477, 58, 'compound', ''),
(478, 58, 'tax_amount', '-29.8'),
(479, 58, 'shipping_tax_amount', '0'),
(480, 58, 'rate_percent', '25'),
(481, 52, '_restock_refunded_items', '1'),
(482, 59, '_product_id', '97'),
(483, 59, '_variation_id', '0'),
(484, 59, '_qty', '1'),
(485, 59, '_tax_class', ''),
(486, 59, '_line_subtotal', '39.2'),
(487, 59, '_line_subtotal_tax', '9.8'),
(488, 59, '_line_total', '39.2'),
(489, 59, '_line_tax', '9.8'),
(490, 59, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:3:"9.8";}s:8:"subtotal";a:1:{i:1;s:3:"9.8";}}'),
(491, 60, '_product_id', '91'),
(492, 60, '_variation_id', '0'),
(493, 60, '_qty', '2'),
(494, 60, '_tax_class', ''),
(495, 60, '_line_subtotal', '318.4'),
(496, 60, '_line_subtotal_tax', '79.6'),
(497, 60, '_line_total', '318.4'),
(498, 60, '_line_tax', '79.6'),
(499, 60, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:4:"79.6";}s:8:"subtotal";a:1:{i:1;s:4:"79.6";}}'),
(500, 61, 'method_id', 'free_shipping') ;
INSERT INTO `wp_woocommerce_order_itemmeta` ( `meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(501, 61, 'instance_id', '6'),
(502, 61, 'cost', '0.00'),
(503, 61, 'total_tax', '0'),
(504, 61, 'taxes', 'a:1:{s:5:"total";a:1:{i:1;s:0:"";}}'),
(505, 61, 'Artiklar', 'APPLICATOR &times; 1, DRYING TOWEL BIG &times; 2'),
(506, 62, 'rate_id', '1'),
(507, 62, 'label', '25%'),
(508, 62, 'compound', ''),
(509, 62, 'tax_amount', '89.4'),
(510, 62, 'shipping_tax_amount', '0'),
(511, 62, 'rate_percent', '25'),
(512, 59, '_reduced_stock', '1'),
(513, 60, '_reduced_stock', '2'),
(514, 63, '_product_id', '74'),
(515, 63, '_variation_id', '76'),
(516, 63, '_qty', '1'),
(517, 63, '_tax_class', ''),
(518, 63, '_line_subtotal', '23.2'),
(519, 63, '_line_subtotal_tax', '5.8'),
(520, 63, '_line_total', '0'),
(521, 63, '_line_tax', '0'),
(522, 63, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:1:"0";}s:8:"subtotal";a:1:{i:1;s:3:"5.8";}}'),
(523, 63, 'pa_dofter', 'jordgubb'),
(524, 64, '_product_id', '59'),
(525, 64, '_variation_id', '61'),
(526, 64, '_qty', '1'),
(527, 64, '_tax_class', ''),
(528, 64, '_line_subtotal', '478.4'),
(529, 64, '_line_subtotal_tax', '119.6'),
(530, 64, '_line_total', '421.6'),
(531, 64, '_line_tax', '105.4'),
(532, 64, '_line_tax_data', 'a:2:{s:5:"total";a:1:{i:1;s:5:"105.4";}s:8:"subtotal";a:1:{i:1;s:5:"119.6";}}'),
(533, 64, 'pa_volym', '5-liter'),
(534, 65, 'method_id', 'free_shipping'),
(535, 65, 'instance_id', '6'),
(536, 65, 'cost', '0.00'),
(537, 65, 'total_tax', '0'),
(538, 65, 'taxes', 'a:1:{s:5:"total";a:0:{}}'),
(539, 65, 'Artiklar', 'AIR FRESHENER - Jordgubb &times; 1, ELEVATE - SNOW FOAM - 5 liter &times; 1'),
(540, 66, 'rate_id', '1'),
(541, 66, 'label', '25%'),
(542, 66, 'compound', ''),
(543, 66, 'tax_amount', '105.4'),
(544, 66, 'shipping_tax_amount', '0'),
(545, 66, 'rate_percent', '25'),
(546, 67, 'discount_amount', '80'),
(547, 67, 'discount_amount_tax', '20'),
(548, 67, 'coupon_data', 'a:25:{s:2:"id";i:257;s:4:"code";s:6:"100off";s:6:"amount";s:3:"100";s:6:"status";s:7:"publish";s:12:"date_created";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 10:44:42.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"date_modified";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2023-04-27 12:39:01.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:12:"date_expires";O:11:"WC_DateTime":5:{s:13:"\0*\0utc_offset";i:0;s:4:"date";s:26:"2024-09-27 00:00:00.000000";s:13:"timezone_type";i:3;s:8:"timezone";s:16:"Europe/Stockholm";s:10:"utc_offset";i:0;}s:13:"discount_type";s:10:"fixed_cart";s:11:"description";s:13:"100 kr rabatt";s:11:"usage_count";i:2;s:14:"individual_use";b:0;s:11:"product_ids";a:0:{}s:20:"excluded_product_ids";a:0:{}s:11:"usage_limit";i:0;s:20:"usage_limit_per_user";i:0;s:22:"limit_usage_to_x_items";N;s:13:"free_shipping";b:0;s:18:"product_categories";a:0:{}s:27:"excluded_product_categories";a:0:{}s:18:"exclude_sale_items";b:0;s:14:"minimum_amount";s:3:"200";s:14:"maximum_amount";s:0:"";s:18:"email_restrictions";a:0:{}s:7:"virtual";b:0;s:9:"meta_data";a:0:{}}'),
(549, 63, '_reduced_stock', '1'),
(550, 64, '_reduced_stock', '1') ;

#
# End of data contents of table `wp_woocommerce_order_itemmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_order_items`
#

DROP TABLE IF EXISTS `wp_woocommerce_order_items`;


#
# Table structure of table `wp_woocommerce_order_items`
#

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`order_item_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#
INSERT INTO `wp_woocommerce_order_items` ( `order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'DRYING TOWEL BIG', 'line_item', 261),
(2, 'LOGO HOODIE - SVART - Medium', 'line_item', 261),
(3, 'Fri frakt', 'shipping', 261),
(4, 'SE-25%-1', 'tax', 261),
(5, '100off', 'coupon', 261),
(6, 'DRYING TOWEL BIG', 'line_item', 262),
(7, 'LOGO HOODIE - SVART - Medium', 'line_item', 262),
(8, 'Fri frakt', 'shipping', 262),
(9, 'SE-25%-1', 'tax', 262),
(10, 'PURIFY S+ SCHAMPO - 5 liter', 'line_item', 291),
(11, 'P-SKIVA / ISSKRAPA', 'line_item', 291),
(12, 'T-SHIRT - YARIS GR - Medium', 'line_item', 291),
(13, 'AIR FRESHENER - Äpple', 'line_item', 291),
(14, 'Fri frakt', 'shipping', 291),
(15, 'SE-25%-1', 'tax', 291),
(16, 'APC - INTERIOR CLEANER - 500 ml, Jordgubb', 'line_item', 293),
(17, 'ELEVATE - SNOW FOAM - 5 liter', 'line_item', 293),
(18, 'PURIFY S - SCHAMPO GLOSS - 500 ml', 'line_item', 293),
(19, 'VISION+ GLASS CLEANER 500ML', 'line_item', 293),
(20, 'Fri frakt', 'shipping', 293),
(21, 'SE-25%-1', 'tax', 293),
(22, 'DRYING TOWEL BIG', 'line_item', 298),
(23, 'EXTRACT - ALKALISK AVFETTNING - 25 liter', 'line_item', 298),
(24, 'T-SHIRT - YARIS GR - Large', 'line_item', 298),
(25, 'APPLICATOR', 'line_item', 298),
(26, 'REFINED - RUBBER AND TRIM 500ML', 'line_item', 298),
(27, 'Fri frakt', 'shipping', 298),
(28, 'SE-25%-1', 'tax', 298),
(29, '100off', 'coupon', 298),
(30, 'APC - INTERIOR CLEANER - 500 ml, Viol', 'line_item', 315),
(31, 'AIR FRESHENER - Jordgubb', 'line_item', 315),
(32, 'VISION+ GLASS CLEANER 500ML', 'line_item', 315),
(33, 'LOGO HOODIE - SVART - Medium', 'line_item', 315),
(34, 'Fri frakt', 'shipping', 315),
(35, 'SE-25%-1', 'tax', 315),
(36, '100off', 'coupon', 315),
(37, 'DRYING TOWEL BIG', 'line_item', 316),
(38, 'Fast pris DHL', 'shipping', 316),
(39, 'SE-25%-1', 'tax', 316),
(40, 'APPLICATOR', 'line_item', 317),
(41, 'PURIFY S+ SCHAMPO - 500 ml', 'line_item', 317),
(42, 'WASH BUCKET', 'line_item', 317),
(43, 'Fri frakt', 'shipping', 317),
(44, 'SE-25%-1', 'tax', 317),
(45, 'APPLICATOR', 'line_item', 318),
(46, 'SE-25%-1', 'tax', 318),
(47, 'EXTRACT - ALKALISK AVFETTNING - 5 liter', 'line_item', 320),
(48, 'P-SKIVA / ISSKRAPA', 'line_item', 320),
(49, 'APC - INTERIOR CLEANER - 500 ml, Äpple', 'line_item', 320),
(50, 'Fri frakt', 'shipping', 320),
(51, 'SE-25%-1', 'tax', 320),
(52, 'VISION+ GLASS CLEANER 500ML', 'line_item', 321),
(53, 'Fast pris DHL', 'shipping', 321),
(54, 'SE-25%-1', 'tax', 321),
(55, 'EXTRACT - ALKALISK AVFETTNING - 5 liter', 'line_item', 322),
(56, 'SE-25%-1', 'tax', 322),
(57, 'VISION+ GLASS CLEANER 500ML', 'line_item', 323),
(58, 'SE-25%-1', 'tax', 323),
(59, 'APPLICATOR', 'line_item', 329),
(60, 'DRYING TOWEL BIG', 'line_item', 329),
(61, 'Fri frakt', 'shipping', 329),
(62, 'SE-25%-1', 'tax', 329),
(63, 'AIR FRESHENER - Jordgubb', 'line_item', 344),
(64, 'ELEVATE - SNOW FOAM - 5 liter', 'line_item', 344),
(65, 'Fri frakt', 'shipping', 344),
(66, 'SE-25%-1', 'tax', 344),
(67, '100off', 'coupon', 344) ;

#
# End of data contents of table `wp_woocommerce_order_items`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokenmeta`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokenmeta`;


#
# Table structure of table `wp_woocommerce_payment_tokenmeta`
#

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_token_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `payment_token_id` (`payment_token_id`),
  KEY `meta_key` (`meta_key`(32))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_payment_tokenmeta`
#

#
# End of data contents of table `wp_woocommerce_payment_tokenmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_payment_tokens`
#

DROP TABLE IF EXISTS `wp_woocommerce_payment_tokens`;


#
# Table structure of table `wp_woocommerce_payment_tokens`
#

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`token_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_payment_tokens`
#

#
# End of data contents of table `wp_woocommerce_payment_tokens`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_sessions`
#

DROP TABLE IF EXISTS `wp_woocommerce_sessions`;


#
# Table structure of table `wp_woocommerce_sessions`
#

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_key` (`session_key`)
) ENGINE=InnoDB AUTO_INCREMENT=410 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(177, 't_8931208142111ddb7326bdc4ac76ad', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:716:"a:27:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:0:"";}";}', 1683269341),
(179, 't_dcf27eae3e0aa073c03eebadf527c3', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:716:"a:27:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:0:"";}";}', 1683357857),
(295, 't_f68401138a6fa32bed69a0023c7237', 'a:1:{s:8:"customer";s:958:"a:27:{s:2:"id";s:1:"2";s:13:"date_modified";s:25:"2023-05-04T14:03:11+02:00";s:8:"postcode";s:5:"84398";s:4:"city";s:10:"Sörbygden";s:9:"address_1";s:22:"HÅRDGÅRDSBODARNA 110";s:7:"address";s:22:"HÅRDGÅRDSBODARNA 110";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:5:"84398";s:13:"shipping_city";s:10:"Sörbygden";s:18:"shipping_address_1";s:22:"HÅRDGÅRDSBODARNA 110";s:16:"shipping_address";s:22:"HÅRDGÅRDSBODARNA 110";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:8:"Carolina";s:9:"last_name";s:9:"Andersson";s:7:"company";s:0:"";s:5:"phone";s:10:"0762628953";s:5:"email";s:35:"carolinaisabellaandersson@gmail.com";s:19:"shipping_first_name";s:8:"Carolina";s:18:"shipping_last_name";s:9:"Andersson";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:10:"0762628953";}";}', 1683357970),
(352, 't_084eba51eb1a2de03d49e1d554b6df', 'a:1:{s:8:"customer";s:937:"a:27:{s:2:"id";s:1:"2";s:13:"date_modified";s:25:"2023-05-04T14:03:11+02:00";s:8:"postcode";s:5:"84398";s:4:"city";s:10:"Sörbygden";s:9:"address_1";s:22:"HÅRDGÅRDSBODARNA 110";s:7:"address";s:22:"HÅRDGÅRDSBODARNA 110";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:5:"14732";s:13:"shipping_city";s:5:"tumba";s:18:"shipping_address_1";s:14:"stallbacken 13";s:16:"shipping_address";s:14:"stallbacken 13";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:1:"1";s:10:"first_name";s:8:"Carolina";s:9:"last_name";s:9:"Andersson";s:7:"company";s:0:"";s:5:"phone";s:10:"0762628953";s:5:"email";s:35:"carolinaisabellaandersson@gmail.com";s:19:"shipping_first_name";s:8:"Carolina";s:18:"shipping_last_name";s:9:"Andersson";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:10:"0762628953";}";}', 1683375163),
(354, 't_f2b2bd9fcc21badf998b7912fa6053', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:716:"a:27:{s:2:"id";s:1:"0";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:0:"";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:0:"";}";}', 1683442050),
(355, '2', 'a:14:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:2256:"a:3:{s:32:"54229abfcfa5649e7003b83dd4755294";a:11:{s:3:"key";s:32:"54229abfcfa5649e7003b83dd4755294";s:10:"product_id";i:91;s:12:"variation_id";i:0;s:9:"variation";a:0:{}s:8:"quantity";i:1;s:9:"data_hash";s:32:"b5c1d5ca8bae6d4896cf1807cdf763f0";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:1:{i:1;d:39.7999999999999971578290569595992565155029296875;}s:5:"total";a:1:{i:1;d:39.7999999999999971578290569595992565155029296875;}}s:13:"line_subtotal";d:159.19999999999998863131622783839702606201171875;s:17:"line_subtotal_tax";d:39.7999999999999971578290569595992565155029296875;s:10:"line_total";d:159.19999999999998863131622783839702606201171875;s:8:"line_tax";d:39.7999999999999971578290569595992565155029296875;}s:32:"3544fece8863ec26c3644ef1ced0f675";a:11:{s:3:"key";s:32:"3544fece8863ec26c3644ef1ced0f675";s:10:"product_id";i:98;s:12:"variation_id";i:106;s:9:"variation";a:2:{s:18:"attribute_pa_volym";s:6:"500-ml";s:19:"attribute_pa_dofter";s:5:"apple";}s:8:"quantity";i:1;s:9:"data_hash";s:32:"3066e015e0dce0be2b76bc8c57da639f";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:1:{i:1;d:35.7999999999999971578290569595992565155029296875;}s:5:"total";a:1:{i:1;d:35.7999999999999971578290569595992565155029296875;}}s:13:"line_subtotal";d:143.19999999999998863131622783839702606201171875;s:17:"line_subtotal_tax";d:35.7999999999999971578290569595992565155029296875;s:10:"line_total";d:143.19999999999998863131622783839702606201171875;s:8:"line_tax";d:35.7999999999999971578290569595992565155029296875;}s:32:"8d952f8930ce4d451c999961fe0e08e9";a:11:{s:3:"key";s:32:"8d952f8930ce4d451c999961fe0e08e9";s:10:"product_id";i:74;s:12:"variation_id";i:75;s:9:"variation";a:1:{s:19:"attribute_pa_dofter";s:5:"apple";}s:8:"quantity";i:1;s:9:"data_hash";s:32:"bc7b2539b1ce5569e47fe2035b6ef0d2";s:13:"line_tax_data";a:2:{s:8:"subtotal";a:1:{i:1;d:5.79999999999999982236431605997495353221893310546875;}s:5:"total";a:1:{i:1;d:5.79999999999999982236431605997495353221893310546875;}}s:13:"line_subtotal";d:23.199999999999999289457264239899814128875732421875;s:17:"line_subtotal_tax";d:5.79999999999999982236431605997495353221893310546875;s:10:"line_total";d:23.199999999999999289457264239899814128875732421875;s:8:"line_tax";d:5.79999999999999982236431605997495353221893310546875;}}";s:22:"shipping_for_package_0";s:1875:"a:2:{s:12:"package_hash";s:40:"wc_ship_3671a3f2b67608e1ba7972d497cd7bba";s:5:"rates";a:3:{s:11:"flat_rate:2";O:16:"WC_Shipping_Rate":4:{s:7:"\0*\0data";a:6:{s:2:"id";s:11:"flat_rate:2";s:9:"method_id";s:9:"flat_rate";s:11:"instance_id";i:2;s:5:"label";s:13:"Fast pris DHL";s:4:"cost";s:5:"49.00";s:5:"taxes";a:1:{i:1;d:12.25;}}s:12:"\0*\0meta_data";a:1:{s:8:"Artiklar";s:49:"APC - INTERIOR CLEANER - 500 ml, Äpple &times; 1";}s:4:"data";a:6:{s:2:"id";s:11:"flat_rate:2";s:9:"method_id";s:9:"flat_rate";s:11:"instance_id";i:2;s:5:"label";s:13:"Fast pris DHL";s:4:"cost";s:5:"49.00";s:5:"taxes";a:1:{i:1;d:12.25;}}s:9:"meta_data";a:1:{s:8:"Artiklar";s:49:"APC - INTERIOR CLEANER - 500 ml, Äpple &times; 1";}}s:11:"flat_rate:3";O:16:"WC_Shipping_Rate":4:{s:7:"\0*\0data";a:6:{s:2:"id";s:11:"flat_rate:3";s:9:"method_id";s:9:"flat_rate";s:11:"instance_id";i:3;s:5:"label";s:18:"Fast pris PostNord";s:4:"cost";s:5:"59.00";s:5:"taxes";a:1:{i:1;d:14.75;}}s:12:"\0*\0meta_data";a:1:{s:8:"Artiklar";s:49:"APC - INTERIOR CLEANER - 500 ml, Äpple &times; 1";}s:4:"data";a:6:{s:2:"id";s:11:"flat_rate:3";s:9:"method_id";s:9:"flat_rate";s:11:"instance_id";i:3;s:5:"label";s:18:"Fast pris PostNord";s:4:"cost";s:5:"59.00";s:5:"taxes";a:1:{i:1;d:14.75;}}s:9:"meta_data";a:1:{s:8:"Artiklar";s:49:"APC - INTERIOR CLEANER - 500 ml, Äpple &times; 1";}}s:22:"our_own_drone_shipping";O:16:"WC_Shipping_Rate":4:{s:7:"\0*\0data";a:6:{s:2:"id";s:22:"our_own_drone_shipping";s:9:"method_id";s:22:"our_own_drone_shipping";s:11:"instance_id";i:0;s:5:"label";s:18:"Frakt med drönare";s:4:"cost";s:6:"465.00";s:5:"taxes";a:1:{i:1;d:116.25;}}s:12:"\0*\0meta_data";a:0:{}s:4:"data";a:6:{s:2:"id";s:22:"our_own_drone_shipping";s:9:"method_id";s:22:"our_own_drone_shipping";s:11:"instance_id";i:0;s:5:"label";s:18:"Frakt med drönare";s:4:"cost";s:6:"465.00";s:5:"taxes";a:1:{i:1;d:116.25;}}s:9:"meta_data";a:0:{}}}}";s:25:"previous_shipping_methods";s:96:"a:1:{i:0;a:3:{i:0;s:11:"flat_rate:2";i:1;s:11:"flat_rate:3";i:2;s:22:"our_own_drone_shipping";}}";s:23:"chosen_shipping_methods";s:29:"a:1:{i:0;s:11:"flat_rate:2";}";s:22:"shipping_method_counts";s:14:"a:1:{i:0;i:3;}";s:8:"customer";s:937:"a:27:{s:2:"id";s:1:"2";s:13:"date_modified";s:25:"2023-05-04T14:03:11+02:00";s:8:"postcode";s:5:"84398";s:4:"city";s:10:"Sörbygden";s:9:"address_1";s:22:"HÅRDGÅRDSBODARNA 110";s:7:"address";s:22:"HÅRDGÅRDSBODARNA 110";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:5:"14732";s:13:"shipping_city";s:5:"tumba";s:18:"shipping_address_1";s:14:"stallbacken 13";s:16:"shipping_address";s:14:"stallbacken 13";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:1:"1";s:10:"first_name";s:8:"Carolina";s:9:"last_name";s:9:"Andersson";s:7:"company";s:0:"";s:5:"phone";s:10:"0762628953";s:5:"email";s:35:"carolinaisabellaandersson@gmail.com";s:19:"shipping_first_name";s:8:"Carolina";s:18:"shipping_last_name";s:9:"Andersson";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:10:"0762628953";}";s:10:"wc_notices";N;s:15:"kp_session_data";s:2836:"{"klarna_session":{"client_token":"eyJhbGciOiJSUzI1NiIsImtpZCI6IjgyMzA1ZWJjLWI4MTEtMzYzNy1hYTRjLTY2ZWNhMTg3NGYzZCJ9.eyJzZXNzaW9uX2lkIjoiOTFiZmRkYTMtYjdkMy01ZTc4LWE5MzItYjJmZjZmYzk4YTU2IiwiYmFzZV91cmwiOiJodHRwczovL2pzLnBsYXlncm91bmQua2xhcm5hLmNvbS9ldS9rcCIsImRlc2lnbiI6ImtsYXJuYSIsImxhbmd1YWdlIjoic3YiLCJwdXJjaGFzZV9jb3VudHJ5IjoiU0UiLCJlbnZpcm9ubWVudCI6InBsYXlncm91bmQiLCJtZXJjaGFudF9uYW1lIjoiWW91ciBidXNpbmVzcyBuYW1lIiwic2Vzc2lvbl90eXBlIjoiUEFZTUVOVFMiLCJjbGllbnRfZXZlbnRfYmFzZV91cmwiOiJodHRwczovL2V1LnBsYXlncm91bmQua2xhcm5hZXZ0LmNvbSIsInNjaGVtZSI6dHJ1ZSwiZXhwZXJpbWVudHMiOlt7Im5hbWUiOiJrcC1jbGllbnQtdXRvcGlhLWZsb3ciLCJ2YXJpYXRlIjoidmFyaWF0ZS0xIn0seyJuYW1lIjoia3BjLTFrLXNlcnZpY2UiLCJ2YXJpYXRlIjoidmFyaWF0ZS0xIn0seyJuYW1lIjoia3BjLVBTRUwtMzA5OSIsInZhcmlhdGUiOiJ2YXJpYXRlLTEifSx7Im5hbWUiOiJrcC1jbGllbnQtdXRvcGlhLXBvcHVwLXJldHJpYWJsZSIsInZhcmlhdGUiOiJ2YXJpYXRlLTEifSx7Im5hbWUiOiJrcC1jbGllbnQtdXRvcGlhLXN0YXRpYy13aWRnZXQiLCJ2YXJpYXRlIjoiaW5kZXgiLCJwYXJhbWV0ZXJzIjp7ImR5bmFtaWMiOiJ0cnVlIn19LHsibmFtZSI6ImtwLWNsaWVudC1vbmUtcHVyY2hhc2UtZmxvdyIsInZhcmlhdGUiOiJ2YXJpYXRlLTEifSx7Im5hbWUiOiJpbi1hcHAtc2RrLW5ldy1pbnRlcm5hbC1icm93c2VyIiwicGFyYW1ldGVycyI6eyJ2YXJpYXRlX2lkIjoibmV3LWludGVybmFsLWJyb3dzZXItZW5hYmxlIn19LHsibmFtZSI6ImtwLWNsaWVudC11dG9waWEtc2RrLWZsb3ciLCJ2YXJpYXRlIjoidmFyaWF0ZS0xIn0seyJuYW1lIjoia3AtY2xpZW50LXV0b3BpYS13ZWJ2aWV3LWZsb3ciLCJ2YXJpYXRlIjoidmFyaWF0ZS0xIn0seyJuYW1lIjoiaW4tYXBwLXNkay1jYXJkLXNjYW5uaW5nIiwicGFyYW1ldGVycyI6eyJ2YXJpYXRlX2lkIjoiY2FyZC1zY2FubmluZy1lbmFibGUifX1dLCJyZWdpb24iOiJldSIsIm9yZGVyX2Ftb3VudCI6NjE0NjUwLCJvZmZlcmluZ19vcHRzIjoyLCJvbyI6IjV1In0.IhiNgwIPn13Ti6LJFciUd1Ii_IH7tAa7l3oCiLZPXZF8uRWQ05CerdJFXWylRBv5SqyyFFcUO9HyoSMmBhyufNks54WQH0ryj9snCtq2Gz_Fs1ltaObofTlRux2_rr4NDo1is3VYC-nn5Mj-QgOut1X8HbCXfzLFnwtos5QthZ5CZ4bxMG0NtxIsuWPxkzekoJfpQT0OoZvh68mCWdn9Yajw4ioT1t1ChuMOk2_odN9O_NSZBXG4hjnWkB7pJdgiizJ1XYEvXcSPx7n73TKmOIaTgYAKqcxJNfjVggJ5EiwtLvFJOmoGl2Q5bPlH3EivsD3GxQTv0IIbutBxA4PdAA","payment_method_categories":[{"asset_urls":{"descriptive":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg","standard":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg"},"identifier":"pay_later","name":"F\\u00e5 f\\u00f6rst. Betala sen."},{"asset_urls":{"descriptive":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg","standard":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg"},"identifier":"pay_now","name":"Bankkonto"},{"asset_urls":{"descriptive":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg","standard":"https:\\/\\/x.klarnacdn.net\\/payment-method\\/assets\\/badges\\/generic\\/klarna.svg"},"identifier":"pay_over_time","name":"Dela upp."}],"session_id":"91bfdda3-b7d3-5e78-a932-b2ff6fc98a56"},"session_hash":"7d62ded56350174454a7fc8071af6322","session_country":"SE"}";s:21:"chosen_payment_method";s:3:"cod";}', 1683442253) ;

#
# End of data contents of table `wp_woocommerce_sessions`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_locations`;


#
# Table structure of table `wp_woocommerce_shipping_zone_locations`
#

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_id` bigint(20) unsigned NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `location_id` (`location_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_locations`
#
INSERT INTO `wp_woocommerce_shipping_zone_locations` ( `location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'SE', 'country') ;

#
# End of data contents of table `wp_woocommerce_shipping_zone_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zone_methods`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zone_methods`;


#
# Table structure of table `wp_woocommerce_shipping_zone_methods`
#

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) unsigned NOT NULL,
  `instance_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_methods`
#
INSERT INTO `wp_woocommerce_shipping_zone_methods` ( `zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 2, 'flat_rate', 2, 1),
(1, 3, 'flat_rate', 3, 1),
(1, 4, 'flat_rate', 4, 0),
(1, 6, 'free_shipping', 1, 1) ;

#
# End of data contents of table `wp_woocommerce_shipping_zone_methods`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_shipping_zones`
#

DROP TABLE IF EXISTS `wp_woocommerce_shipping_zones`;


#
# Table structure of table `wp_woocommerce_shipping_zones`
#

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`zone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_shipping_zones`
#
INSERT INTO `wp_woocommerce_shipping_zones` ( `zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Sweden', 0) ;

#
# End of data contents of table `wp_woocommerce_shipping_zones`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rate_locations`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rate_locations`;


#
# Table structure of table `wp_woocommerce_tax_rate_locations`
#

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) unsigned NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `tax_rate_id` (`tax_rate_id`),
  KEY `location_type_code` (`location_type`(10),`location_code`(20))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_tax_rate_locations`
#

#
# End of data contents of table `wp_woocommerce_tax_rate_locations`
# --------------------------------------------------------



#
# Delete any existing table `wp_woocommerce_tax_rates`
#

DROP TABLE IF EXISTS `wp_woocommerce_tax_rates`;


#
# Table structure of table `wp_woocommerce_tax_rates`
#

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) unsigned NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) unsigned NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_rate_id`),
  KEY `tax_rate_country` (`tax_rate_country`),
  KEY `tax_rate_state` (`tax_rate_state`(2)),
  KEY `tax_rate_class` (`tax_rate_class`(10)),
  KEY `tax_rate_priority` (`tax_rate_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_tax_rates`
#
INSERT INTO `wp_woocommerce_tax_rates` ( `tax_rate_id`, `tax_rate_country`, `tax_rate_state`, `tax_rate`, `tax_rate_name`, `tax_rate_priority`, `tax_rate_compound`, `tax_rate_shipping`, `tax_rate_order`, `tax_rate_class`) VALUES
(1, 'SE', '', '25.0000', '25%', 1, 0, 1, 0, '') ;

#
# End of data contents of table `wp_woocommerce_tax_rates`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza`
#

DROP TABLE IF EXISTS `wp_wpgmza`;


#
# Table structure of table `wp_wpgmza`
#

CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pic` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(2083) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `icon` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lng` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `anim` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `infoopen` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `category` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `latlng` point DEFAULT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza`
#
INSERT INTO `wp_wpgmza` ( `id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `sticky`, `other_data`, `latlng`, `layergroup`) VALUES
(2, 1, 'arenavägen 35', '', '', '', '', '59.2948869', '18.0797567', '0', '', '0', '', 1, 0, 0, '', 0, '', '\0\0\0\0\0\0\0iھ�M@#b�j2@', 0) ;

#
# End of data contents of table `wp_wpgmza`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_admin_notices`
#

DROP TABLE IF EXISTS `wp_wpgmza_admin_notices`;


#
# Table structure of table `wp_wpgmza_admin_notices`
#

CREATE TABLE `wp_wpgmza_admin_notices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci,
  `active_date` datetime DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_520_ci,
  `dismissed` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_admin_notices`
#

#
# End of data contents of table `wp_wpgmza_admin_notices`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_circles`
#

DROP TABLE IF EXISTS `wp_wpgmza_circles`;


#
# Table structure of table `wp_wpgmza_circles`
#

CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineOpacity` float DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `hoverEnabled` tinyint(1) DEFAULT '0',
  `ohFillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohLineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohFillOpacity` float DEFAULT NULL,
  `ohLineOpacity` float DEFAULT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_circles`
#

#
# End of data contents of table `wp_wpgmza_circles`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_image_overlays`
#

DROP TABLE IF EXISTS `wp_wpgmza_image_overlays`;


#
# Table structure of table `wp_wpgmza_image_overlays`
#

CREATE TABLE `wp_wpgmza_image_overlays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `image` varchar(700) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_image_overlays`
#

#
# End of data contents of table `wp_wpgmza_image_overlays`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_maps`
#

DROP TABLE IF EXISTS `wp_wpgmza_maps`;


#
# Table structure of table `wp_wpgmza_maps`
#

CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height` varchar(6) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lat` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_lng` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_location` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_width_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `map_height_type` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `other_settings` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_maps`
#
INSERT INTO `wp_wpgmza_maps` ( `id`, `map_title`, `map_width`, `map_height`, `map_start_lat`, `map_start_lng`, `map_start_location`, `map_start_zoom`, `default_marker`, `type`, `alignment`, `directions_enabled`, `styling_enabled`, `styling_json`, `active`, `kml`, `bicycle`, `traffic`, `dbox`, `dbox_width`, `listmarkers`, `listmarkers_advanced`, `filterbycat`, `ugm_enabled`, `ugm_category_enabled`, `fusion`, `map_width_type`, `map_height_type`, `mass_marker_support`, `ugm_access`, `order_markers_by`, `order_markers_choice`, `show_user_location`, `default_to`, `other_settings`) VALUES
(1, 'Min första karta', '100', '400', '59.29249398049591', '18.08527101881872', '45.950464398418106,-109.81550500000003', 14, '', 1, 4, 0, 0, '', 0, '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '%', 'px', 0, 0, 0, 0, 0, '', 'a:78:{s:8:"map_type";i:1;s:15:"sl_stroke_color";s:0:"";s:13:"sl_fill_color";s:0:"";s:17:"sl_stroke_opacity";s:0:"";s:15:"sl_fill_opacity";s:0:"";s:15:"transport_layer";b:0;s:6:"action";s:15:"wpgmza_save_map";s:11:"redirect_to";s:39:"/webshop_grupp1/wp-admin/admin-post.php";s:6:"map_id";s:1:"1";s:12:"http_referer";s:88:"/webshop_grupp1/wp-admin/admin.php?page=wp-google-maps-menu&amp;action=edit&amp;map_id=1";s:9:"wpgmza_id";s:1:"1";s:21:"wpgmza_start_location";s:35:"59.29249398049591,18.08527101881872";s:17:"wpgmza_start_zoom";s:2:"14";s:12:"wpgmza_theme";s:1:"6";s:17:"wpgmza_theme_data";s:1519:"[{"featureType":"all","elementType":"labels.text.fill","stylers":[{"saturation":36},{"color":"#000000"},{"lightness":40}]},{"featureType":"all","elementType":"labels.text.stroke","stylers":[{"visibility":"on"},{"color":"#000000"},{"lightness":16}]},{"featureType":"all","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"administrative","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"administrative","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":17},{"weight":1.1999999999999999555910790149937383830547332763671875}]},{"featureType":"landscape","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":20}]},{"featureType":"poi","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":21}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#000000"},{"lightness":17}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"color":"#000000"},{"lightness":29},{"weight":0.200000000000000011102230246251565404236316680908203125}]},{"featureType":"road.arterial","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":18}]},{"featureType":"road.local","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":16}]},{"featureType":"transit","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":19}]},{"featureType":"water","elementType":"geometry","stylers":[{"color":"#000000"},{"lightness":17}]}]";s:21:"store_locator_enabled";b:0;s:25:"store_locator_search_area";s:6:"radial";s:33:"wpgmza_store_locator_radius_style";s:6:"legacy";s:35:"wpgmza_store_locator_default_radius";s:2:"10";s:32:"store_locator_auto_area_max_zoom";s:0:"";s:22:"store_locator_distance";b:0;s:29:"wpgmza_store_locator_position";b:0;s:27:"store_locator_show_distance";b:0;s:22:"store_locator_category";b:0;s:39:"wpgmza_store_locator_use_their_location";b:0;s:27:"wpgmza_store_locator_bounce";b:0;s:19:"wpgmza_sl_animation";N;s:39:"wpgmza_store_locator_hide_before_search";b:0;s:26:"store_locator_query_string";s:0:"";s:34:"store_locator_location_placeholder";s:0:"";s:29:"store_locator_default_address";s:0:"";s:25:"store_locator_name_search";b:0;s:25:"store_locator_name_string";s:0:"";s:31:"store_locator_not_found_message";s:0:"";s:16:"wpgmza_map_align";s:1:"1";s:40:"jump_to_nearest_marker_on_initialization";b:0;s:35:"automatically_pan_to_users_location";b:0;s:34:"override_users_location_zoom_level";b:0;s:35:"override_users_location_zoom_levels";s:0:"";s:27:"show_distance_from_location";b:0;s:12:"map_max_zoom";s:2:"21";s:12:"map_min_zoom";s:1:"0";s:15:"click_open_link";b:0;s:26:"fit_maps_bounds_to_markers";b:0;s:42:"fit_maps_bounds_to_markers_after_filtering";b:0;s:22:"hide_point_of_interest";b:0;s:27:"wpgmza_zoom_on_marker_click";b:0;s:34:"wpgmza_zoom_on_marker_click_slider";s:0:"";s:29:"close_infowindow_on_map_click";b:0;s:23:"disable_lightbox_images";b:0;s:24:"use_Raw_Jpeg_Coordinates";b:0;s:14:"polygon_labels";b:0;s:28:"disable_polygon_info_windows";b:0;s:21:"enable_marker_ratings";b:0;s:33:"only_load_markers_within_viewport";b:0;s:16:"iw_primary_color";s:7:"#000000";s:15:"iw_accent_color";s:7:"#000000";s:13:"iw_text_color";s:7:"#000000";s:21:"wpgmza_listmarkers_by";s:1:"0";s:30:"wpgmza_marker_listing_position";b:0;s:18:"wpgmza_push_in_map";b:0;s:28:"wpgmza_push_in_map_placement";N;s:24:"wpgmza_push_in_map_width";s:0:"";s:25:"wpgmza_push_in_map_height";s:0:"";s:37:"zoom_level_on_marker_listing_override";b:0;s:34:"zoom_level_on_marker_listing_click";s:0:"";s:27:"marker_listing_disable_zoom";b:0;s:27:"datatable_no_result_message";s:0:"";s:26:"remove_search_box_datables";b:0;s:26:"dataTable_pagination_style";N;s:23:"datatable_search_string";s:0:"";s:22:"datatable_result_start";s:0:"";s:19:"datatable_result_of";s:0:"";s:19:"datatable_result_to";s:0:"";s:22:"datatable_result_total";s:0:"";s:21:"datatable_result_show";s:0:"";s:24:"datatable_result_entries";s:0:"";s:14:"wpgmza_savemap";s:14:"Spara Karta »";}') ;

#
# End of data contents of table `wp_wpgmza_maps`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_point_labels`
#

DROP TABLE IF EXISTS `wp_wpgmza_point_labels`;


#
# Table structure of table `wp_wpgmza_point_labels`
#

CREATE TABLE `wp_wpgmza_point_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `center` point DEFAULT NULL,
  `fillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `fontSize` varchar(3) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_point_labels`
#

#
# End of data contents of table `wp_wpgmza_point_labels`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_polygon`
#

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;


#
# Table structure of table `wp_wpgmza_polygon`
#

CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `innerpolydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lineopacity` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohfillcolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohlinecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ohopacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_polygon`
#

#
# End of data contents of table `wp_wpgmza_polygon`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_polylines`
#

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;


#
# Table structure of table `wp_wpgmza_polylines`
#

CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linecolor` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `linethickness` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `opacity` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `polyname` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_polylines`
#

#
# End of data contents of table `wp_wpgmza_polylines`
# --------------------------------------------------------



#
# Delete any existing table `wp_wpgmza_rectangles`
#

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;


#
# Table structure of table `wp_wpgmza_rectangles`
#

CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  `lineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lineOpacity` float DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `hoverEnabled` tinyint(1) DEFAULT '0',
  `ohFillColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohLineColor` varchar(16) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ohFillOpacity` float DEFAULT NULL,
  `ohLineOpacity` float DEFAULT NULL,
  `link` varchar(700) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `layergroup` int(3) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza_rectangles`
#

#
# End of data contents of table `wp_wpgmza_rectangles`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

