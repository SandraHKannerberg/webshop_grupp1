# WordPress MySQL database migration
#
# Generated: Tuesday 25. April 2023 14:23 UTC
# Hostname: localhost
# Database: `webshop_grupp1`
# URL: //localhost/webshop_grupp1
# Path: C:\\MAMP\\htdocs\\webshop_grupp1
# Tables: wp_actionscheduler_actions, wp_actionscheduler_claims, wp_actionscheduler_groups, wp_actionscheduler_logs, wp_commentmeta, wp_comments, wp_links, wp_litespeed_url, wp_litespeed_url_file, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users, wp_wc_admin_note_actions, wp_wc_admin_notes, wp_wc_category_lookup, wp_wc_customer_lookup, wp_wc_download_log, wp_wc_order_coupon_lookup, wp_wc_order_product_lookup, wp_wc_order_stats, wp_wc_order_tax_lookup, wp_wc_product_attributes_lookup, wp_wc_product_download_directories, wp_wc_product_meta_lookup, wp_wc_rate_limits, wp_wc_reserved_stock, wp_wc_tax_rate_classes, wp_wc_webhooks, wp_woocommerce_api_keys, wp_woocommerce_attribute_taxonomies, wp_woocommerce_downloadable_product_permissions, wp_woocommerce_log, wp_woocommerce_order_itemmeta, wp_woocommerce_order_items, wp_woocommerce_payment_tokenmeta, wp_woocommerce_payment_tokens, wp_woocommerce_sessions, wp_woocommerce_shipping_zone_locations, wp_woocommerce_shipping_zone_methods, wp_woocommerce_shipping_zones, wp_woocommerce_tax_rate_locations, wp_woocommerce_tax_rates, wp_wpgmza, wp_wpgmza_admin_notices, wp_wpgmza_circles, wp_wpgmza_image_overlays, wp_wpgmza_maps, wp_wpgmza_point_labels, wp_wpgmza_polygon, wp_wpgmza_polylines, wp_wpgmza_rectangles
# Table Prefix: wp_
# Post Types: revision, attachment, page, post, product, product_variation
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
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_actions`
#
INSERT INTO `wp_actionscheduler_actions` ( `action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(46, 'action_scheduler/migration_hook', 'complete', '2023-04-25 07:57:23', '2023-04-25 09:57:23', '[]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682409443;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682409443;s:19:"scheduled_timestamp";i:1682409443;s:9:"timestamp";i:1682409443;}', 1, 1, '2023-04-25 07:57:29', '2023-04-25 09:57:29', 0, NULL),
(47, 'woocommerce_cleanup_draft_orders', 'complete', '2023-04-25 07:56:25', '2023-04-25 09:56:25', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682409385;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682409385;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682409385;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682409385;s:19:"interval_in_seconds";i:86400;}', 0, 1, '2023-04-25 07:57:29', '2023-04-25 09:57:29', 0, NULL),
(48, 'woocommerce_cleanup_draft_orders', 'pending', '2023-04-26 07:57:29', '2023-04-26 09:57:29', '[]', 'O:32:"ActionScheduler_IntervalSchedule":10:{s:22:"\0*\0scheduled_timestamp";i:1682495849;s:18:"\0*\0first_timestamp";i:1682409385;s:13:"\0*\0recurrence";i:86400;s:49:"\0ActionScheduler_IntervalSchedule\0start_timestamp";i:1682495849;s:53:"\0ActionScheduler_IntervalSchedule\0interval_in_seconds";i:86400;s:19:"scheduled_timestamp";i:1682495849;s:15:"first_timestamp";i:1682409385;s:10:"recurrence";i:86400;s:15:"start_timestamp";i:1682495849;s:19:"interval_in_seconds";i:86400;}', 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
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
(199, 'woocommerce_run_product_attribute_lookup_update_callback', 'complete', '2023-04-25 13:22:38', '2023-04-25 15:22:38', '[98,1]', 'O:30:"ActionScheduler_SimpleSchedule":4:{s:22:"\0*\0scheduled_timestamp";i:1682428958;s:41:"\0ActionScheduler_SimpleSchedule\0timestamp";i:1682428958;s:19:"scheduled_timestamp";i:1682428958;s:9:"timestamp";i:1682428958;}', 2, 1, '2023-04-25 13:23:21', '2023-04-25 15:23:21', 0, NULL) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_actionscheduler_groups`
#
INSERT INTO `wp_actionscheduler_groups` ( `group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'woocommerce-db-updates') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(460, 199, 'åtgärden slutförd via WP Cron', '2023-04-25 13:23:21', '2023-04-25 15:23:21') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'En kommentarsförfattare', 'wapuu@wordpress.example', 'https://sv.wordpress.org/', '', '2023-04-24 13:27:03', '2023-04-24 11:27:03', 'Hej, det här är en kommentar.\nFör att komma igång med granskning, redigering och borttagning av kommentarer, gå till vyn ”Kommentarer” i adminpanelen.\nKommentarsförfattares profilbilder kommer från <a href="https://sv.gravatar.com/">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=1506 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'Y-m-d H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:158:{s:24:"^wc-auth/v([1]{1})/(.*)?";s:63:"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]";s:22:"^wc-api/v([1-3]{1})/?$";s:51:"index.php?wc-api-version=$matches[1]&wc-api-route=/";s:24:"^wc-api/v([1-3]{1})(.*)?";s:61:"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]";s:7:"shop/?$";s:27:"index.php?post_type=product";s:37:"shop/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:32:"shop/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:24:"shop/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:32:"category/(.+?)/wc-api(/(.*))?/?$";s:54:"index.php?category_name=$matches[1]&wc-api=$matches[3]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:29:"tag/([^/]+)/wc-api(/(.*))?/?$";s:44:"index.php?tag=$matches[1]&wc-api=$matches[3]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:55:"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:50:"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_cat=$matches[1]&feed=$matches[2]";s:31:"product-category/(.+?)/embed/?$";s:44:"index.php?product_cat=$matches[1]&embed=true";s:43:"product-category/(.+?)/page/?([0-9]{1,})/?$";s:51:"index.php?product_cat=$matches[1]&paged=$matches[2]";s:25:"product-category/(.+?)/?$";s:33:"index.php?product_cat=$matches[1]";s:52:"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:47:"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?product_tag=$matches[1]&feed=$matches[2]";s:28:"product-tag/([^/]+)/embed/?$";s:44:"index.php?product_tag=$matches[1]&embed=true";s:40:"product-tag/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?product_tag=$matches[1]&paged=$matches[2]";s:22:"product-tag/([^/]+)/?$";s:33:"index.php?product_tag=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"product/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"product/([^/]+)/embed/?$";s:40:"index.php?product=$matches[1]&embed=true";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:33:"product/([^/]+)/wc-api(/(.*))?/?$";s:48:"index.php?product=$matches[1]&wc-api=$matches[3]";s:39:"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:50:"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:32:"product/([^/]+)(?:/([0-9]+))?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:30:"product/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:17:"wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:26:"comments/wc-api(/(.*))?/?$";s:29:"index.php?&wc-api=$matches[2]";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:29:"search/(.+)/wc-api(/(.*))?/?$";s:42:"index.php?s=$matches[1]&wc-api=$matches[3]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:32:"author/([^/]+)/wc-api(/(.*))?/?$";s:52:"index.php?author_name=$matches[1]&wc-api=$matches[3]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:54:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:82:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:41:"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$";s:66:"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:28:"([0-9]{4})/wc-api(/(.*))?/?$";s:45:"index.php?year=$matches[1]&wc-api=$matches[3]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:25:"(.?.+?)/wc-api(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&wc-api=$matches[3]";s:28:"(.?.+?)/order-pay(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&order-pay=$matches[3]";s:33:"(.?.+?)/order-received(/(.*))?/?$";s:57:"index.php?pagename=$matches[1]&order-received=$matches[3]";s:25:"(.?.+?)/orders(/(.*))?/?$";s:49:"index.php?pagename=$matches[1]&orders=$matches[3]";s:29:"(.?.+?)/view-order(/(.*))?/?$";s:53:"index.php?pagename=$matches[1]&view-order=$matches[3]";s:28:"(.?.+?)/downloads(/(.*))?/?$";s:52:"index.php?pagename=$matches[1]&downloads=$matches[3]";s:31:"(.?.+?)/edit-account(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-account=$matches[3]";s:31:"(.?.+?)/edit-address(/(.*))?/?$";s:55:"index.php?pagename=$matches[1]&edit-address=$matches[3]";s:34:"(.?.+?)/payment-methods(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&payment-methods=$matches[3]";s:32:"(.?.+?)/lost-password(/(.*))?/?$";s:56:"index.php?pagename=$matches[1]&lost-password=$matches[3]";s:34:"(.?.+?)/customer-logout(/(.*))?/?$";s:58:"index.php?pagename=$matches[1]&customer-logout=$matches[3]";s:37:"(.?.+?)/add-payment-method(/(.*))?/?$";s:61:"index.php?pagename=$matches[1]&add-payment-method=$matches[3]";s:40:"(.?.+?)/delete-payment-method(/(.*))?/?$";s:64:"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]";s:45:"(.?.+?)/set-default-payment-method(/(.*))?/?$";s:69:"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]";s:31:".?.+?/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:25:"([^/]+)/wc-api(/(.*))?/?$";s:45:"index.php?name=$matches[1]&wc-api=$matches[3]";s:31:"[^/]+/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:42:"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$";s:51:"index.php?attachment=$matches[1]&wc-api=$matches[3]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:35:"litespeed-cache/litespeed-cache.php";i:1;s:23:"ml-slider/ml-slider.php";i:2;s:27:"woocommerce/woocommerce.php";i:3;s:31:"wp-google-maps/wpGoogleMaps.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:35:"litespeed-cache/litespeed-cache.php";s:47:"LiteSpeed\\Activation::uninstall_litespeed_cache";}', 'no'),
(80, 'timezone_string', 'Europe/Stockholm', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
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
(103, 'user_count', '4', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:159:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Senaste inläggen</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:231:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Senaste kommentarer</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:143:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Arkiv</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Kategorier</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:8:"header-1";a:0:{}s:8:"footer-1";a:0:{}s:8:"footer-2";a:0:{}s:8:"footer-3";a:0:{}s:8:"footer-4";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(106, 'cron', 'a:19:{i:1682432600;a:1:{s:26:"action_scheduler_run_queue";a:1:{s:32:"0d04ed39571b55704c122d726248bbac";a:3:{s:8:"schedule";s:12:"every_minute";s:4:"args";a:1:{i:0;s:7:"WP Cron";}s:8:"interval";i:60;}}}i:1682432623;a:2:{s:27:"litespeed_task_imgoptm_pull";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:16:"litespeed_filter";s:4:"args";a:0:{}s:8:"interval";i:60;}}s:19:"litespeed_task_lqip";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:16:"litespeed_filter";s:4:"args";a:0:{}s:8:"interval";i:60;}}}i:1682432823;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1682434582;a:1:{s:33:"wc_admin_process_orders_milestone";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1682434589;a:1:{s:29:"wc_admin_unsnooze_admin_notes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1682434841;a:1:{s:32:"woocommerce_cancel_unpaid_orders";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1682460000;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682465223;a:4:{s:18:"wp_https_detection";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1682465241;a:1:{s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1682474182;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1682495782;a:1:{s:14:"wc_admin_daily";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682495792;a:2:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682506582;a:2:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:31:"woocommerce_cleanup_rate_limits";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682508423;a:1:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682508441;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1682508442;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1683026823;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1683705442;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:11:"fifteendays";s:4:"args";a:0:{}s:8:"interval";i:1296000;}}}s:7:"version";i:2;}', 'yes'),
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
(212, 'woocommerce_price_num_decimals', '0', 'yes'),
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
(264, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes') ;
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
(282, 'woocommerce_terms_page_id', '', 'no'),
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
(310, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"product";s:13:"category_base";s:16:"product-category";s:8:"tag_base";s:11:"product-tag";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(311, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(312, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(315, 'default_product_cat', '15', 'yes'),
(317, 'woocommerce_refund_returns_page_id', '50', 'yes'),
(320, 'woocommerce_paypal_settings', 'a:23:{s:7:"enabled";s:2:"no";s:5:"title";s:6:"PayPal";s:11:"description";s:85:"Pay via PayPal; you can pay with your credit card if you don\'t have a PayPal account.";s:5:"email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:8:"advanced";s:0:"";s:8:"testmode";s:2:"no";s:5:"debug";s:2:"no";s:16:"ipn_notification";s:3:"yes";s:14:"receiver_email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:14:"identity_token";s:0:"";s:14:"invoice_prefix";s:3:"WC-";s:13:"send_shipping";s:3:"yes";s:16:"address_override";s:2:"no";s:13:"paymentaction";s:4:"sale";s:9:"image_url";s:0:"";s:11:"api_details";s:0:"";s:12:"api_username";s:0:"";s:12:"api_password";s:0:"";s:13:"api_signature";s:0:"";s:20:"sandbox_api_username";s:0:"";s:20:"sandbox_api_password";s:0:"";s:21:"sandbox_api_signature";s:0:"";s:12:"_should_load";s:2:"no";}', 'yes'),
(321, 'woocommerce_version', '7.6.0', 'yes'),
(322, 'woocommerce_db_version', '7.6.0', 'yes'),
(323, 'woocommerce_admin_install_timestamp', '1682409382', 'yes'),
(324, 'woocommerce_inbox_variant_assignment', '12', 'yes'),
(328, 'recently_activated', 'a:0:{}', 'yes'),
(330, 'action_scheduler_lock_async-request-runner', '1682432577', 'yes'),
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
(377, 'woocommerce_task_list_tracked_completed_tasks', 'a:6:{i:0;s:8:"purchase";i:1;s:13:"store_details";i:2;s:8:"shipping";i:3;s:3:"tax";i:4;s:15:"review-shipping";i:5;s:8:"products";}', 'yes'),
(385, 'action_scheduler_migration_status', 'complete', 'yes'),
(387, 'woocommerce_onboarding_profile', 'a:13:{s:18:"is_agree_marketing";b:0;s:11:"store_email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:20:"is_store_country_set";b:1;s:8:"industry";a:1:{i:0;a:2:{s:4:"slug";s:5:"other";s:6:"detail";s:18:"Bilvårdsprodukter";}}s:13:"product_types";a:1:{i:0;s:8:"physical";}s:13:"product_count";s:6:"11-100";s:14:"selling_venues";s:12:"brick-mortar";s:16:"number_employees";s:3:"<10";s:7:"revenue";s:16:"more-than-250000";s:12:"setup_client";b:0;s:19:"business_extensions";a:0:{}s:5:"theme";s:10:"storefront";s:9:"completed";b:1;}', 'yes'),
(388, 'woocommerce_task_list_dismissed_tasks', 'a:0:{}', 'yes'),
(396, 'current_theme', 'Storefront', 'yes'),
(397, 'theme_switched', '', 'yes'),
(398, 'theme_mods_storefront', 'a:2:{s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(399, 'woocommerce_catalog_rows', '4', 'yes'),
(400, 'woocommerce_catalog_columns', '3', 'yes'),
(401, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(403, 'storefront_nux_fresh_site', '0', 'yes'),
(419, 'woocommerce_admin_created_default_shipping_zones', 'yes', 'yes'),
(428, 'woocommerce_task_list_prompt_shown', '1', 'yes'),
(521, 'woocommerce_admin_reviewed_default_shipping_zones', 'yes', 'yes'),
(527, 'woocommerce_free_shipping_1_settings', 'a:4:{s:5:"title";s:9:"Fri frakt";s:8:"requires";s:10:"min_amount";s:10:"min_amount";s:3:"299";s:16:"ignore_discounts";s:2:"no";}', 'yes'),
(528, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:"title";s:9:"Fast pris";s:10:"tax_status";s:7:"taxable";s:4:"cost";s:2:"49";}', 'yes'),
(558, 'product_cat_children', 'a:2:{i:19;a:2:{i:0;i:20;i:1;i:21;}i:17;a:2:{i:0;i:33;i:1;i:34;}}', 'yes'),
(585, 'woocommerce_ces_product_feedback_shown', '1', 'yes'),
(1203, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(1235, 'category_children', 'a:1:{i:39;a:1:{i:0;i:41;}}', 'yes'),
(1263, 'wpgmza_db_version', '9.0.18', 'yes'),
(1264, 'wpgmza_global_settings', '{"engine":"google-maps","internal_engine":"legacy","google_maps_api_key":false,"default_marker_icon":"http:\\/\\/localhost\\/webshop_grupp1\\/wp-content\\/plugins\\/wp-google-maps\\/images\\/spotlight-poi3.png","developer_mode":false,"user_interface_style":"default","wpgmza_gdpr_enabled":1,"wpgmza_gdpr_default_notice":"<p>\\r\\n\\tI agree for my personal data to be processed by <span name=\\"wpgmza_gdpr_company_name\\"><\\/span>, for the purpose(s) of <span name=\\"wpgmza_gdpr_retention_purpose\\"><\\/span>.\\r\\n<\\/p>\\r\\n\\r\\n<p>\\t\\r\\n\\tI agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and\\tgenerating directions.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tSome visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the \\"state\\" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tPlease <a href=\\"https:\\/\\/developers.google.com\\/maps\\/terms\\">see here<\\/a> and <a href=\\"https:\\/\\/maps.google.com\\/help\\/terms_maps.html\\">here<\\/a> for Google\'s terms. Please also see <a href=\\"https:\\/\\/policies.google.com\\/privacy?hl=en-GB&amp;gl=uk\\">Google\'s Privacy Policy<\\/a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\\r\\n<\\/p>\\r\\n<p>\\r\\n\\tWhere this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\\r\\n<\\/p>","wpgmza_gdpr_company_name":"webshop_grupp1","wpgmza_gdpr_retention_purpose":"displaying map tiles, geocoding addresses and calculating and display directions.","wpgmza_gdpr_button_label":"I agree","wpgmza_marker_xml_location":"C:\\\\MAMP\\\\htdocs\\\\webshop_grupp1\\\\wp-content\\\\uploads\\\\wp-google-maps\\\\","wpgmza_marker_xml_url":"http:\\/\\/localhost\\/webshop_grupp1\\/wp-content\\/uploads\\/wp-google-maps\\/"}', 'yes'),
(1265, 'WPGMZA_OTHER_SETTINGS', 'a:13:{s:6:"engine";s:11:"google-maps";s:15:"internal_engine";s:6:"legacy";s:19:"google_maps_api_key";b:0;s:19:"default_marker_icon";s:91:"http://localhost/webshop_grupp1/wp-content/plugins/wp-google-maps/images/spotlight-poi3.png";s:14:"developer_mode";b:0;s:20:"user_interface_style";s:7:"default";s:19:"wpgmza_gdpr_enabled";i:1;s:26:"wpgmza_gdpr_default_notice";s:1960:"<p>\r\n	I agree for my personal data to be processed by <span name="wpgmza_gdpr_company_name"></span>, for the purpose(s) of <span name="wpgmza_gdpr_retention_purpose"></span>.\r\n</p>\r\n\r\n<p>	\r\n	I agree for my personal data, provided via map API calls, to be processed by the API provider, for the purposes of geocoding (converting addresses to coordinates), reverse geocoding and	generating directions.\r\n</p>\r\n<p>\r\n	Some visual components of WP Go Maps use 3rd party libraries which are loaded over the network. At present the libraries are Google Maps, Open Street Map, jQuery DataTables and FontAwesome. When loading resources over a network, the 3rd party server will receive your IP address and User Agent string amongst other details. Please refer to the Privacy Policy of the respective libraries for details on how they use data and the process to exercise your rights under the GDPR regulations.\r\n</p>\r\n<p>\r\n	WP Go Maps uses jQuery DataTables to display sortable, searchable tables, such as that seen in the Advanced Marker Listing and on the Map Edit Page. jQuery DataTables in certain circumstances uses a cookie to save and later recall the "state" of a given table - that is, the search term, sort column and order and current page. This data is held in local storage and retained until this is cleared manually. No libraries used by WP Go Maps transmit this information.\r\n</p>\r\n<p>\r\n	Please <a href="https://developers.google.com/maps/terms">see here</a> and <a href="https://maps.google.com/help/terms_maps.html">here</a> for Google\'s terms. Please also see <a href="https://policies.google.com/privacy?hl=en-GB&amp;gl=uk">Google\'s Privacy Policy</a>. We do not send the API provider any personally identifying information, or information that could uniquely identify your device.\r\n</p>\r\n<p>\r\n	Where this notice is displayed in place of a map, agreeing to this notice will store a cookie recording your agreement so you are not prompted again.\r\n</p>";s:24:"wpgmza_gdpr_company_name";s:14:"webshop_grupp1";s:29:"wpgmza_gdpr_retention_purpose";s:81:"displaying map tiles, geocoding addresses and calculating and display directions.";s:24:"wpgmza_gdpr_button_label";s:7:"I agree";s:26:"wpgmza_marker_xml_location";s:64:"C:\\MAMP\\htdocs\\webshop_grupp1\\wp-content\\uploads\\wp-google-maps\\";s:21:"wpgmza_marker_xml_url";s:66:"http://localhost/webshop_grupp1/wp-content/uploads/wp-google-maps/";}', 'yes'),
(1266, 'wpgmza_xml_location', 'C:\\MAMP\\htdocs\\webshop_grupp1\\wp-content\\uploads\\wp-google-maps\\', 'yes'),
(1267, 'wpgmza_xml_url', 'http://localhost/webshop_grupp1/wp-content/uploads/wp-google-maps/', 'yes'),
(1268, 'wpgmza_temp_api', 'AIzaSyDo_fG7DXBOVvdhlrLa-PHREuFDpTklWhY', 'yes'),
(1269, 'wpgmza-first-run', '2023-04-25T14:13:52+0000', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1270, 'wpgmza_welcome_screen_done', '1', 'yes'),
(1271, 'widget_wpgmza_map_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1275, 'litespeed.conf.__activation', '-1', 'yes'),
(1276, 'litespeed.purge.queue', '-1', 'yes'),
(1277, 'litespeed.purge.queue2', '-1', 'yes'),
(1278, 'litespeed.cloud._summary', '{"curr_request.ver":0,"last_request.ver":1682432082,"news.utime":1682432084,"curr_request.news":0,"last_request.news":1682432084}', 'yes'),
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
(1372, 'litespeed.conf.optm-ccss_sep_posttype', '["page"]', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1373, 'litespeed.conf.optm-ccss_sep_uri', '[]', 'yes'),
(1374, 'litespeed.conf.optm-css_async_inline', '1', 'yes'),
(1375, 'litespeed.conf.optm-css_font_display', '', 'yes'),
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
(1473, 'litespeed.gui._summary', '{"new_version":1683036884,"score":1683641684}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1474, 'litespeed.data.upgrading', '-1', 'yes'),
(1475, 'litespeed.admin_display.messages', '-1', 'yes'),
(1480, 'ms_was_installed_on', '1682432185', 'yes'),
(1481, 'widget_metaslider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(1499, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1682432593;}', 'no') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=1300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(77, 42, '_wp_attached_file', '2023/04/spray-pump-petroleum2.webp'),
(78, 42, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:34:"2023/04/spray-pump-petroleum2.webp";s:8:"filesize";i:127518;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:34:"spray-pump-petroleum2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:19526;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:34:"spray-pump-petroleum2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3284;}s:18:"woocommerce_single";a:5:{s:4:"file";s:34:"spray-pump-petroleum2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:28752;}s:6:"medium";a:5:{s:4:"file";s:34:"spray-pump-petroleum2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:17206;}s:9:"thumbnail";a:5:{s:4:"file";s:34:"spray-pump-petroleum2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6086;}s:12:"medium_large";a:5:{s:4:"file";s:34:"spray-pump-petroleum2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:76360;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(79, 43, '_wp_attached_file', '2023/04/sticker.webp'),
(80, 43, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:20:"2023/04/sticker.webp";s:8:"filesize";i:15660;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:20:"sticker-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3078;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:20:"sticker-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1032;}s:18:"woocommerce_single";a:5:{s:4:"file";s:20:"sticker-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3700;}s:6:"medium";a:5:{s:4:"file";s:20:"sticker-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2860;}s:9:"thumbnail";a:5:{s:4:"file";s:20:"sticker-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1528;}s:12:"medium_large";a:5:{s:4:"file";s:20:"sticker-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:6886;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(81, 44, '_wp_attached_file', '2023/04/sticker2.webp'),
(82, 44, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:21:"2023/04/sticker2.webp";s:8:"filesize";i:82750;s:5:"sizes";a:6:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"sticker2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8566;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"sticker2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2012;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"sticker2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:11970;}s:6:"medium";a:5:{s:4:"file";s:21:"sticker2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8042;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"sticker2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3340;}s:12:"medium_large";a:5:{s:4:"file";s:21:"sticker2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27872;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(83, 45, '_wp_attached_file', 'woocommerce-placeholder.png'),
(84, 45, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:8:"filesize";i:102644;s:5:"sizes";a:7:{s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:35:"woocommerce-placeholder-324x324.png";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:28117;s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:2314;}s:18:"woocommerce_single";a:5:{s:4:"file";s:35:"woocommerce-placeholder-416x416.png";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:46064;}s:6:"medium";a:5:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:12560;}s:5:"large";a:5:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:92182;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:4228;}s:12:"medium_large";a:5:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";s:8:"filesize";i:58715;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(85, 51, '_edit_lock', '1682416475:1'),
(86, 51, '_edit_last', '1'),
(87, 51, 'total_sales', '0'),
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
(100, 51, '_wc_review_count', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(101, 51, '_product_attributes', 'a:1:{s:8:"pa_volym";a:6:{s:4:"name";s:8:"pa_volym";s:5:"value";s:0:"";s:8:"position";i:0;s:10:"is_visible";i:1;s:12:"is_variation";i:1;s:11:"is_taxonomy";i:1;}}'),
(102, 51, '_product_version', '7.6.0'),
(103, 52, '_wp_attached_file', '2023/04/purifys-2.webp'),
(104, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:22:"2023/04/purifys-2.webp";s:8:"filesize";i:18242;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:22:"purifys-2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2816;}s:9:"thumbnail";a:5:{s:4:"file";s:22:"purifys-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1238;}s:12:"medium_large";a:5:{s:4:"file";s:22:"purifys-2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9292;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:22:"purifys-2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3054;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:22:"purifys-2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:4328;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:22:"purifys-2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:802;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
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
(117, 53, '_stock', '10'),
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
(134, 54, '_stock', '10'),
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
(152, 51, '_price', '249'),
(153, 51, '_price', '1298'),
(154, 51, '_thumbnail_id', '52'),
(155, 51, '_weight', '0.7'),
(156, 56, '_edit_lock', '1682417180:1'),
(157, 56, '_edit_last', '1'),
(158, 56, 'total_sales', '0'),
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
(201, 58, '_download_expiry', '-1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(202, 58, '_stock', '10'),
(203, 58, '_stock_status', 'instock'),
(204, 58, '_wc_average_rating', '0'),
(205, 58, '_wc_review_count', '0'),
(206, 58, 'attribute_pa_volym', '500-ml'),
(207, 58, '_product_version', '7.6.0'),
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
(223, 56, '_price', '298'),
(224, 56, '_price', '1498'),
(225, 56, '_thumbnail_id', '10'),
(226, 59, '_edit_lock', '1682417570:1'),
(227, 59, '_edit_last', '1'),
(228, 7, '_wp_attachment_image_alt', 'Förpackning med akalisk avfettning'),
(229, 59, 'total_sales', '0'),
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
(273, 61, '_stock', '10'),
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
(345, 64, '_edit_lock', '1682417437:1'),
(346, 65, '_edit_lock', '1682417456:1'),
(347, 5, '_wp_attachment_image_alt', 'Förpackning med förtvättmedel'),
(350, 6, '_wp_attachment_image_alt', 'Förpackning med förtvättmedel'),
(351, 59, '_price', '189'),
(352, 59, '_price', '598'),
(353, 67, '_edit_lock', '1682419670:1'),
(354, 67, '_edit_last', '1'),
(355, 16, '_wp_attachment_image_alt', 'Sprayflaska med glasputs'),
(356, 67, '_thumbnail_id', '16'),
(357, 67, '_regular_price', '179') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(358, 67, 'total_sales', '0'),
(359, 67, '_tax_status', 'taxable'),
(360, 67, '_tax_class', ''),
(361, 67, '_manage_stock', 'yes'),
(362, 67, '_backorders', 'no'),
(363, 67, '_sold_individually', 'no'),
(364, 67, '_virtual', 'no'),
(365, 67, '_downloadable', 'no'),
(366, 67, '_download_limit', '-1'),
(367, 67, '_download_expiry', '-1'),
(368, 67, '_stock', '10'),
(369, 67, '_stock_status', 'instock'),
(370, 67, '_wc_average_rating', '0'),
(371, 67, '_wc_review_count', '0'),
(372, 67, '_product_version', '7.6.0'),
(373, 67, '_price', '179'),
(374, 68, '_edit_lock', '1682419573:1'),
(375, 68, '_edit_last', '1'),
(376, 68, 'total_sales', '0'),
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
(420, 70, '_stock', '10'),
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
(457, 71, '_price', '395') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(461, 68, '_default_attributes', 'a:1:{s:8:"pa_volym";s:7:"1-liter";}'),
(462, 68, '_price', '129'),
(463, 68, '_price', '395'),
(464, 68, '_price', '1695'),
(465, 68, '_thumbnail_id', '7'),
(466, 67, '_sku', 'visionglas'),
(467, 73, '_edit_lock', '1682423352:1'),
(468, 73, '_edit_last', '1'),
(469, 14, '_wp_attachment_image_alt', 'Förpackning med oljebaserat däckmedel'),
(470, 73, '_thumbnail_id', '14'),
(471, 73, '_sku', 'refined'),
(472, 73, '_regular_price', '198'),
(473, 73, 'total_sales', '0'),
(474, 73, '_tax_status', 'taxable'),
(475, 73, '_tax_class', ''),
(476, 73, '_manage_stock', 'yes'),
(477, 73, '_backorders', 'no'),
(478, 73, '_sold_individually', 'no'),
(479, 73, '_virtual', 'no'),
(480, 73, '_downloadable', 'no'),
(481, 73, '_download_limit', '-1'),
(482, 73, '_download_expiry', '-1'),
(483, 73, '_stock', '10'),
(484, 73, '_stock_status', 'instock'),
(485, 73, '_wc_average_rating', '0'),
(486, 73, '_wc_review_count', '0'),
(487, 73, '_product_version', '7.6.0'),
(488, 73, '_price', '198'),
(489, 74, '_edit_lock', '1682423309:1'),
(490, 74, '_edit_last', '1'),
(491, 19, '_wp_attachment_image_alt', 'Air freshener samlingsbild'),
(492, 74, 'total_sales', '0'),
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
(519, 75, '_stock', '10'),
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
(536, 76, '_stock', '10'),
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
(560, 18, '_wp_attachment_image_alt', 'Air fresh, jordgubb') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(573, 77, '_regular_price', '29'),
(574, 77, '_weight', '0.2'),
(575, 77, '_thumbnail_id', '20'),
(576, 77, '_price', '29'),
(577, 74, '_price', '29'),
(578, 74, '_thumbnail_id', '19'),
(579, 79, '_edit_lock', '1682424971:1'),
(580, 79, '_edit_last', '1'),
(581, 79, 'total_sales', '0'),
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
(625, 81, '_stock', '10'),
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
(650, 80, '_weight', '0.5'),
(651, 80, '_thumbnail_id', '0'),
(652, 80, '_price', '498'),
(653, 81, '_sku', 'hoodie-medium'),
(654, 81, '_regular_price', '498'),
(655, 81, '_weight', '0.5'),
(656, 81, '_thumbnail_id', '0'),
(657, 81, '_price', '498'),
(658, 82, '_sku', 'hoodie-small'),
(659, 82, '_regular_price', '498'),
(660, 82, '_weight', '0.5') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(661, 82, '_thumbnail_id', '0'),
(662, 82, '_price', '498'),
(663, 79, '_price', '498'),
(664, 32, '_wp_attachment_image_alt', 'Svart hoodie'),
(665, 79, '_product_image_gallery', '32'),
(666, 83, '_edit_lock', '1682425390:1'),
(667, 83, '_edit_last', '1'),
(668, 83, 'total_sales', '0'),
(669, 83, '_tax_status', 'taxable'),
(670, 83, '_tax_class', ''),
(671, 83, '_manage_stock', 'no'),
(672, 83, '_backorders', 'no'),
(673, 83, '_sold_individually', 'no'),
(674, 83, '_virtual', 'no'),
(675, 83, '_downloadable', 'no'),
(676, 83, '_download_limit', '-1'),
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
(695, 84, '_stock', '8'),
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
(712, 85, '_stock', '9'),
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
(737, 84, '_weight', '0.3'),
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
(749, 86, '_weight', '0.3'),
(750, 86, '_thumbnail_id', '0'),
(751, 86, '_price', '259'),
(752, 83, '_price', '259'),
(753, 83, '_price', '349'),
(754, 29, '_wp_attachment_image_alt', 't-shirt'),
(755, 30, '_wp_attachment_image_alt', 't-shirt'),
(756, 31, '_wp_attachment_image_alt', 't-shirt'),
(757, 83, '_thumbnail_id', '29'),
(758, 83, '_product_image_gallery', '29,30,31'),
(759, 87, '_edit_lock', '1682426511:1'),
(760, 87, '_edit_last', '1') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(761, 35, '_wp_attachment_image_alt', 'hink'),
(762, 87, '_sku', 'washbucket'),
(763, 87, '_regular_price', '349'),
(764, 87, 'total_sales', '0'),
(765, 87, '_tax_status', 'taxable'),
(766, 87, '_tax_class', ''),
(767, 87, '_manage_stock', 'yes'),
(768, 87, '_backorders', 'no'),
(769, 87, '_sold_individually', 'no'),
(770, 87, '_virtual', 'no'),
(771, 87, '_downloadable', 'no'),
(772, 87, '_download_limit', '-1'),
(773, 87, '_download_expiry', '-1'),
(774, 87, '_stock', '10'),
(775, 87, '_stock_status', 'instock'),
(776, 87, '_wc_average_rating', '0'),
(777, 87, '_wc_review_count', '0'),
(778, 87, '_product_version', '7.6.0'),
(779, 87, '_price', '349'),
(780, 87, '_product_image_gallery', '35'),
(781, 88, '_edit_lock', '1682426930:1'),
(782, 88, '_edit_last', '1'),
(783, 37, '_wp_attachment_image_alt', 'Kombinerad p-skiva och isskrapa'),
(784, 88, '_regular_price', '29'),
(785, 88, 'total_sales', '0'),
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
(800, 88, '_price', '29'),
(801, 88, '_product_image_gallery', '37'),
(804, 90, '_edit_lock', '1682427204:1'),
(805, 90, '_edit_last', '1'),
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
(825, 91, '_edit_lock', '1682427856:1'),
(826, 91, '_edit_last', '1'),
(827, 91, '_regular_price', '249'),
(828, 91, 'total_sales', '0'),
(829, 91, '_tax_status', 'taxable'),
(830, 91, '_tax_class', ''),
(831, 91, '_manage_stock', 'yes'),
(832, 91, '_backorders', 'no'),
(833, 91, '_sold_individually', 'no'),
(834, 91, '_virtual', 'no'),
(835, 91, '_downloadable', 'no'),
(836, 91, '_download_limit', '-1'),
(837, 91, '_download_expiry', '-1'),
(838, 91, '_stock', '10'),
(839, 91, '_stock_status', 'instock'),
(840, 91, '_wc_average_rating', '0'),
(841, 91, '_wc_review_count', '0'),
(842, 91, '_product_version', '7.6.0'),
(843, 91, '_price', '249'),
(844, 92, '_wp_attached_file', '2023/04/drying-towel-big.webp'),
(845, 92, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:29:"2023/04/drying-towel-big.webp";s:8:"filesize";i:142326;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:29:"drying-towel-big-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12558;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"drying-towel-big-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3824;}s:12:"medium_large";a:5:{s:4:"file";s:29:"drying-towel-big-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:81914;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:29:"drying-towel-big-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14508;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:29:"drying-towel-big-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:23910;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:29:"drying-towel-big-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:2092;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(846, 93, '_wp_attached_file', '2023/04/drying-towel-big2.webp'),
(847, 93, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:30:"2023/04/drying-towel-big2.webp";s:8:"filesize";i:146704;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:30:"drying-towel-big2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:22028;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"drying-towel-big2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:7538;}s:12:"medium_large";a:5:{s:4:"file";s:30:"drying-towel-big2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:95072;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"drying-towel-big2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:24994;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"drying-towel-big2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:36872;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"drying-towel-big2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3932;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(848, 92, '_wp_attachment_image_alt', 'torkduk'),
(849, 93, '_wp_attachment_image_alt', 'torkduk'),
(850, 91, '_thumbnail_id', '92'),
(851, 91, '_product_image_gallery', '93,92'),
(852, 94, '_edit_lock', '1682427818:1'),
(853, 94, '_edit_last', '1'),
(854, 41, '_wp_attachment_image_alt', 'tryckspruta'),
(855, 94, '_thumbnail_id', '41'),
(856, 94, '_regular_price', '295'),
(857, 94, 'total_sales', '0'),
(858, 94, '_tax_status', 'taxable'),
(859, 94, '_tax_class', ''),
(860, 94, '_manage_stock', 'yes'),
(861, 94, '_backorders', 'no'),
(862, 94, '_sold_individually', 'no') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(875, 96, '_edit_lock', '1682427980:1'),
(876, 96, '_edit_last', '1'),
(877, 39, '_wp_attachment_image_alt', 'spray'),
(878, 40, '_wp_attachment_image_alt', 'spray'),
(879, 96, '_thumbnail_id', '39'),
(880, 96, '_sku', 'spraypump-akalisk'),
(881, 96, '_regular_price', '249'),
(882, 96, 'total_sales', '0'),
(883, 96, '_tax_status', 'taxable'),
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
(898, 96, '_product_image_gallery', '39,40'),
(899, 97, '_edit_lock', '1682428107:1'),
(900, 97, '_edit_last', '1'),
(901, 33, '_wp_attachment_image_alt', 'applicator'),
(902, 97, '_thumbnail_id', '33'),
(903, 97, '_sku', 'applicator'),
(904, 97, '_regular_price', '49'),
(905, 97, 'total_sales', '0'),
(906, 97, '_tax_status', 'taxable'),
(907, 97, '_tax_class', ''),
(908, 97, '_manage_stock', 'yes'),
(909, 97, '_backorders', 'no'),
(910, 97, '_sold_individually', 'no'),
(911, 97, '_virtual', 'no'),
(912, 97, '_downloadable', 'no'),
(913, 97, '_download_limit', '-1'),
(914, 97, '_download_expiry', '-1'),
(915, 97, '_stock', '10'),
(916, 97, '_stock_status', 'instock'),
(917, 97, '_wc_average_rating', '0'),
(918, 97, '_wc_review_count', '0'),
(919, 97, '_product_version', '7.6.0'),
(920, 97, '_price', '49'),
(921, 98, '_edit_lock', '1682428876:1'),
(922, 98, '_edit_last', '1'),
(923, 98, 'total_sales', '0'),
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
(1016, 103, '_backorders', 'no') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(1069, 106, '_manage_stock', 'no'),
(1070, 106, '_backorders', 'no'),
(1071, 106, '_sold_individually', 'no'),
(1072, 106, '_virtual', 'no'),
(1073, 106, '_downloadable', 'no'),
(1074, 106, '_download_limit', '-1'),
(1075, 106, '_download_expiry', '-1'),
(1076, 106, '_stock', NULL),
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
(1087, 107, '_manage_stock', 'no'),
(1088, 107, '_backorders', 'no'),
(1089, 107, '_sold_individually', 'no'),
(1090, 107, '_virtual', 'no'),
(1091, 107, '_downloadable', 'no'),
(1092, 107, '_download_limit', '-1'),
(1093, 107, '_download_expiry', '-1'),
(1094, 107, '_stock', NULL),
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
(1105, 108, '_manage_stock', 'no'),
(1106, 108, '_backorders', 'no'),
(1107, 108, '_sold_individually', 'no'),
(1108, 108, '_virtual', 'no'),
(1109, 108, '_downloadable', 'no'),
(1110, 108, '_download_limit', '-1'),
(1111, 108, '_download_expiry', '-1'),
(1112, 108, '_stock', NULL),
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
(1123, 109, '_manage_stock', 'no'),
(1124, 109, '_backorders', 'no'),
(1125, 109, '_sold_individually', 'no'),
(1126, 109, '_virtual', 'no'),
(1127, 109, '_downloadable', 'no'),
(1128, 109, '_download_limit', '-1'),
(1129, 109, '_download_expiry', '-1'),
(1130, 109, '_stock', NULL),
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
(1141, 110, '_manage_stock', 'no'),
(1142, 110, '_backorders', 'no'),
(1143, 110, '_sold_individually', 'no'),
(1144, 110, '_virtual', 'no'),
(1145, 110, '_downloadable', 'no'),
(1146, 110, '_download_limit', '-1'),
(1147, 110, '_download_expiry', '-1'),
(1148, 110, '_stock', NULL),
(1149, 110, '_stock_status', 'instock'),
(1150, 110, '_wc_average_rating', '0'),
(1151, 110, '_wc_review_count', '0'),
(1152, 110, 'attribute_pa_dofter', 'melon') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
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
(1184, 112, '_stock', '10'),
(1185, 112, '_stock_status', 'instock'),
(1186, 112, '_wc_average_rating', '0'),
(1187, 112, '_wc_review_count', '0'),
(1188, 112, 'attribute_pa_dofter', 'viol'),
(1189, 112, 'attribute_pa_volym', '500-ml'),
(1190, 112, '_product_version', '7.6.0'),
(1191, 21, '_wp_attachment_image_alt', 'APC sprayflaska'),
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
(1204, 99, '_sku', 'apc-äpple-5L'),
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
(1233, 98, '_price', '179'),
(1234, 98, '_price', '898'),
(1235, 114, '_edit_lock', '1682429355:1'),
(1236, 115, '_wp_attached_file', '2023/04/inlagg2-butik.jpg'),
(1237, 115, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:25:"2023/04/inlagg2-butik.jpg";s:8:"filesize";i:205323;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:25:"inlagg2-butik-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18641;}s:5:"large";a:5:{s:4:"file";s:27:"inlagg2-butik-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:140676;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"inlagg2-butik-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6980;}s:12:"medium_large";a:5:{s:4:"file";s:25:"inlagg2-butik-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:83024;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"inlagg2-butik-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21003;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"inlagg2-butik-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29970;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"inlagg2-butik-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4088;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1238, 116, '_wp_attached_file', '2023/04/inlagg2-gloss.jpg'),
(1239, 116, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:25:"2023/04/inlagg2-gloss.jpg";s:8:"filesize";i:259296;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:25:"inlagg2-gloss-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21415;}s:5:"large";a:5:{s:4:"file";s:27:"inlagg2-gloss-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:172950;}s:9:"thumbnail";a:5:{s:4:"file";s:25:"inlagg2-gloss-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6946;}s:12:"medium_large";a:5:{s:4:"file";s:25:"inlagg2-gloss-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103273;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:25:"inlagg2-gloss-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:24417;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:25:"inlagg2-gloss-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:36163;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:25:"inlagg2-gloss-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4022;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1240, 117, '_wp_attached_file', '2023/04/inlagg2-printerian.jpg'),
(1241, 117, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:30:"2023/04/inlagg2-printerian.jpg";s:8:"filesize";i:195351;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:30:"inlagg2-printerian-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:18493;}s:5:"large";a:5:{s:4:"file";s:32:"inlagg2-printerian-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:137367;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"inlagg2-printerian-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6603;}s:12:"medium_large";a:5:{s:4:"file";s:30:"inlagg2-printerian-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:83770;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:30:"inlagg2-printerian-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21216;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:30:"inlagg2-printerian-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:30513;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:30:"inlagg2-printerian-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3797;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1242, 118, '_wp_attached_file', '2023/04/inlagg2-produkter.jpg'),
(1243, 118, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:29:"2023/04/inlagg2-produkter.jpg";s:8:"filesize";i:338300;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:29:"inlagg2-produkter-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29055;}s:5:"large";a:5:{s:4:"file";s:31:"inlagg2-produkter-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:226953;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"inlagg2-produkter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8863;}s:12:"medium_large";a:5:{s:4:"file";s:29:"inlagg2-produkter-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:138056;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:29:"inlagg2-produkter-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33091;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:29:"inlagg2-produkter-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:49775;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:29:"inlagg2-produkter-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4697;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1244, 119, '_wp_attached_file', '2023/04/inlagg3-apc.jpg'),
(1245, 119, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:23:"2023/04/inlagg3-apc.jpg";s:8:"filesize";i:270384;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:23:"inlagg3-apc-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:26145;}s:5:"large";a:5:{s:4:"file";s:25:"inlagg3-apc-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:196656;}s:9:"thumbnail";a:5:{s:4:"file";s:23:"inlagg3-apc-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8630;}s:12:"medium_large";a:5:{s:4:"file";s:23:"inlagg3-apc-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:121852;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:23:"inlagg3-apc-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:29793;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:23:"inlagg3-apc-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44111;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:23:"inlagg3-apc-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4707;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1246, 120, '_wp_attached_file', '2023/04/inlagg3-apc2.jpg'),
(1247, 120, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:976;s:6:"height";i:976;s:4:"file";s:24:"2023/04/inlagg3-apc2.jpg";s:8:"filesize";i:66085;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:24:"inlagg3-apc2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14350;}s:9:"thumbnail";a:5:{s:4:"file";s:24:"inlagg3-apc2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5410;}s:12:"medium_large";a:5:{s:4:"file";s:24:"inlagg3-apc2-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:55643;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:24:"inlagg3-apc2-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15862;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:24:"inlagg3-apc2-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:22734;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:24:"inlagg3-apc2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3243;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1248, 121, '_wp_attached_file', '2023/04/inlagg5.jpg'),
(1249, 121, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:960;s:6:"height";i:961;s:4:"file";s:19:"2023/04/inlagg5.jpg";s:8:"filesize";i:125464;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:19:"inlagg5-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28322;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"inlagg5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9769;}s:12:"medium_large";a:5:{s:4:"file";s:19:"inlagg5-768x769.jpg";s:5:"width";i:768;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:113271;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:19:"inlagg5-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:32065;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:19:"inlagg5-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46174;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:19:"inlagg5-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5239;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1250, 122, '_wp_attached_file', '2023/04/inlagg5-2.jpg'),
(1251, 122, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:960;s:6:"height";i:961;s:4:"file";s:21:"2023/04/inlagg5-2.jpg";s:8:"filesize";i:191171;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:21:"inlagg5-2-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:39312;}s:9:"thumbnail";a:5:{s:4:"file";s:21:"inlagg5-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12279;}s:12:"medium_large";a:5:{s:4:"file";s:21:"inlagg5-2-768x769.jpg";s:5:"width";i:768;s:6:"height";i:769;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:166942;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:21:"inlagg5-2-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:44503;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:21:"inlagg5-2-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:65536;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:21:"inlagg5-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6323;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1252, 123, '_wp_attached_file', '2023/04/inlagg5-amplify.jpg'),
(1253, 123, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1440;s:4:"file";s:27:"2023/04/inlagg5-amplify.jpg";s:8:"filesize";i:92429;s:5:"sizes";a:7:{s:6:"medium";a:5:{s:4:"file";s:27:"inlagg5-amplify-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:15050;}s:5:"large";a:5:{s:4:"file";s:29:"inlagg5-amplify-1024x1024.jpg";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:79784;}s:9:"thumbnail";a:5:{s:4:"file";s:27:"inlagg5-amplify-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5591;}s:12:"medium_large";a:5:{s:4:"file";s:27:"inlagg5-amplify-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53543;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:27:"inlagg5-amplify-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:16607;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:27:"inlagg5-amplify-416x416.jpg";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:23059;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:27:"inlagg5-amplify-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3353;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1254, 124, '_wp_attached_file', '2023/04/revive.webp'),
(1255, 124, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:19:"2023/04/revive.webp";s:8:"filesize";i:38110;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:19:"revive-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:8154;}s:9:"thumbnail";a:5:{s:4:"file";s:19:"revive-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3088;}s:12:"medium_large";a:5:{s:4:"file";s:19:"revive-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:27768;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:19:"revive-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:9276;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:19:"revive-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:12652;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:19:"revive-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:1774;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1256, 125, '_wp_attached_file', '2023/04/university-hoodie.jpg'),
(1257, 125, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:1798;s:4:"file";s:29:"2023/04/university-hoodie.jpg";s:8:"filesize";i:324819;s:5:"sizes";a:8:{s:6:"medium";a:5:{s:4:"file";s:29:"university-hoodie-240x300.jpg";s:5:"width";i:240;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:17725;}s:5:"large";a:5:{s:4:"file";s:30:"university-hoodie-820x1024.jpg";s:5:"width";i:820;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:160437;}s:9:"thumbnail";a:5:{s:4:"file";s:29:"university-hoodie-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7392;}s:12:"medium_large";a:5:{s:4:"file";s:29:"university-hoodie-768x959.jpg";s:5:"width";i:768;s:6:"height";i:959;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:141794;}s:9:"1536x1536";a:5:{s:4:"file";s:31:"university-hoodie-1230x1536.jpg";s:5:"width";i:1230;s:6:"height";i:1536;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:315705;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:29:"university-hoodie-324x324.jpg";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:25424;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:29:"university-hoodie-416x519.jpg";s:5:"width";i:416;s:6:"height";i:519;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:45730;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:29:"university-hoodie-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4218;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1258, 126, '_wp_attached_file', '2023/04/university-hoodie-2.webp'),
(1259, 126, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:32:"2023/04/university-hoodie-2.webp";s:8:"filesize";i:96594;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:32:"university-hoodie-2-300x300.webp";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:14710;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"university-hoodie-2-150x150.webp";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:5632;}s:12:"medium_large";a:5:{s:4:"file";s:32:"university-hoodie-2-768x768.webp";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:57054;}s:21:"woocommerce_thumbnail";a:6:{s:4:"file";s:32:"university-hoodie-2-324x324.webp";s:5:"width";i:324;s:6:"height";i:324;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:16596;s:9:"uncropped";b:0;}s:18:"woocommerce_single";a:5:{s:4:"file";s:32:"university-hoodie-2-416x416.webp";s:5:"width";i:416;s:6:"height";i:416;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:23710;}s:29:"woocommerce_gallery_thumbnail";a:5:{s:4:"file";s:32:"university-hoodie-2-100x100.webp";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/webp";s:8:"filesize";i:3140;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(1260, 127, '_edit_lock', '1682431205:1'),
(1261, 124, '_wp_attachment_image_alt', 'energidryck'),
(1262, 127, '_thumbnail_id', '124'),
(1264, 131, '_edit_lock', '1682430558:1'),
(1265, 133, '_edit_lock', '1682431184:1'),
(1266, 129, '_edit_lock', '1682430558:1'),
(1267, 132, '_edit_lock', '1682430558:1'),
(1268, 130, '_edit_lock', '1682430558:1'),
(1269, 115, '_wp_attachment_image_alt', 'butik'),
(1270, 133, '_thumbnail_id', '115'),
(1272, 135, '_edit_lock', '1682431943:1'),
(1273, 120, '_wp_attachment_image_alt', 'sparyflaska'),
(1274, 135, '_thumbnail_id', '120'),
(1276, 138, '_edit_lock', '1682431947:1'),
(1277, 139, '_edit_lock', '1682430986:1'),
(1279, 139, '_wp_old_date', '2023-04-25'),
(1280, 126, '_wp_attachment_image_alt', 'hoodie'),
(1282, 139, '_thumbnail_id', '126'),
(1283, 1, '_wp_trash_meta_status', 'publish'),
(1284, 1, '_wp_trash_meta_time', '1682431104'),
(1285, 1, '_wp_desired_post_slug', 'hej-varlden'),
(1286, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(1288, 142, '_edit_lock', '1682431255:1'),
(1289, 123, '_wp_attachment_image_alt', 'flaska'),
(1291, 142, '_wp_old_date', '2023-04-25'),
(1292, 142, '_thumbnail_id', '123'),
(1295, 133, '_wp_old_date', '2023-04-25'),
(1297, 127, '_wp_old_date', '2023-04-25') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1298, 3, '_edit_lock', '1682431613:1'),
(1299, 50, '_edit_lock', '1682431939:1') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:paragraph -->\n<p>Välkommen till WordPress. Detta är ditt första inlägg. Du kan redigera det eller ta bort det. Sedan är det bara att börja skriva!</p>\n<!-- /wp:paragraph -->', 'Hej världen!', '', 'trash', 'open', 'open', '', 'hej-varlden__trashed', '', '', '2023-04-25 15:58:24', '2023-04-25 13:58:24', '', 0, 'http://localhost/webshop_grupp1/?p=1', 0, 'post', '', 1),
(2, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:paragraph -->\n<p>Detta är en exempelsida. Den skiljer sig från ett blogginlägg genom att den finns kvar på samma plats och kommer att visas i din webbplatsnavigering (i de flesta teman). De flesta börjar med en Om-sida som presenterar dem för potentiella besökare. Den skulle t.ex kunna ha följande innehåll:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hej där! Jag är cykelbud på dagen, blivande skådespelare på natten och detta är min blogg. Jag bor i Örebro, har en katt som heter Lurv och jag gillar Pina Coladas. (och att simma i Göta kanal).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... eller något liknande detta:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Företaget AB grundades 1971 och har sedan dess varit den största leverantören av grunk-manicker på den svenska marknaden. FAB finns i utkanten av Grönköping, har drygt 20&nbsp;000 anställda och läser veckobladet varje år.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Som ny WordPress-användare bör du gå till <a href="http://localhost/webshop_grupp1/wp-admin/">din adminpanel</a> för att ta bort denna sida och skapa nya sidor för ditt innehåll. Lycka till!</p>\n<!-- /wp:paragraph -->', 'Exempelsida', '', 'publish', 'closed', 'open', '', 'exempelsida', '', '', '2023-04-24 13:27:03', '2023-04-24 11:27:03', '', 0, 'http://localhost/webshop_grupp1/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-04-24 13:27:03', '2023-04-24 11:27:03', '<!-- wp:heading --><h2>Vilka vi är</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Vår webbplatsadress är: http://localhost/webshop_grupp1.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Kommentarer</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>När besökare lämnar kommentarer på webbplatsen samlar vi in de uppgifter som visas i kommentarsformuläret samt besökarens IP-adress och webbläsarens användaragent-sträng som hjälp för detektering av skräppost.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En anonymiserad sträng som skapats utifrån din e-postadress (även kallat hash-värde) kan komma att sändas till tjänsten Gravatar för att avgöra om du finns registrerad där. Integritetspolicyn för tjänsten Gravatar finns på https://automattic.com/privacy/. När din kommentar har godkänts visas din profilbild offentligt tillsammans med din kommentar.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Om du laddar upp bilder till webbplatsen bör du undvika att ladda upp bilder där EXIF-data inkluderar data från GPS-lokalisering. Besökare till webbplatsen kan ladda ned och ta fram alla positioneringsuppgifter från bilder på webbplatsen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookie-filer</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Om du lämnar en kommentar på vår webbplats kan du välja att spara ditt namn, din e-postadress och webbplatsadress i cookie-filer. Detta är för din bekvämlighet för att du inte ska behöva fylla i dessa uppgifter igen nästa gång du skriver en kommentar. Dessa cookie-filer gäller i ett år.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Om du besöker vår inloggningssida kommer vi att sätta en tillfällig cookie för att undersöka om din webbläsare accepterar dem. Denna cookie innehåller inga personuppgifter och den försvinner när du stänger din webbläsare.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>När du loggar in kommer vi dessutom att skapa flera cookie-filer för att spara information om din inloggning och dina val för utformning av skärmlayouten. Cookie-filer för inloggning gäller i två dagar och cookie-filer för layoutval gäller i ett år. Om du kryssar i ”Kom ihåg mig” kommer din cookie att finnas kvar i två veckor. Om du loggar ut från ditt konto kommer cookie-filerna för inloggning att tas bort.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Om du redigerar eller publicerar en artikel kommer en extra cookie-fil att sparas i din webbläsare. Denna cookie-fil innehåller inga personuppgifter utan anger endast inläggs-ID för den artikel du just redigerade och löper ut efter ett dygn.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Inbäddad innehåll från andra webbplatser</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Artiklar på denna webbplats kan innehålla inbäddat innehåll (exempelvis videoklipp, bilder, artiklar o.s.v.). Inbäddat innehåll från andra webbplatser beter sig precis på samma sätt som om besökaren har besökt den andra webbplatsen.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dessa webbplatser kan samla in uppgifter om dig, använda cookie-filer, bädda in ytterligare spårning från tredje part och övervaka din interaktion med sagda inbäddade innehåll, inklusive spårning av din interaktion med detta inbäddade innehåll om du har ett konto och är inloggad på webbplatsen i fråga.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Vilka vi delar dina data med</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Om du begär återställning av lösenordet kommer din IP-adress att ingå i e-postmeddelandet om återställning.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hur länge vi behåller era uppgifter</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Om du skriver en kommentar kommer kommentaren och dess metadata att sparas utan tidsgräns. Anledningen till detta är att vi behöver kunna hitta och godkänna uppföljningskommentarer automatiskt och inte lägga dem i kö för granskning.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>För användare som registrerar sig på er webbplats (om sådana finns) sparar vi även de personuppgifter de anger i sin användarprofil. Alla användare kan se, redigera eller radera sina personuppgifter när som helst (med undantaget att de inte kan ändra sitt användarnamn). Även webbplatsens administratörer kan se och redigera denna information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Vilka rättigheter du har över dina data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Om du har ett konto eller har skrivit några kommentarer på denna webbplats kan du begära en exportfil med de personuppgifter vi har om dig, inklusive alla uppgifter du har gett oss. Du kan också begära att vi tar bort alla personuppgifter vi har om dig. Detta omfattar inte eventuella uppgifter som vi är tvungna att spara av administrativa, legala eller säkerhetsändamål.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Vart dina uppgifter skickas</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class="privacy-policy-tutorial">Föreslagen text: </strong>Kommentarer från besökare kanske kontrolleras via en automatiserad tjänst för detektering av skräppost.</p><!-- /wp:paragraph -->', 'Integritetspolicy', '', 'draft', 'closed', 'open', '', 'integritetspolicy', '', '', '2023-04-24 13:27:03', '2023-04-24 11:27:03', '', 0, 'http://localhost/webshop_grupp1/?page_id=3', 0, 'page', '', 0),
(4, 1, '2023-04-24 13:27:22', '0000-00-00 00:00:00', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-24 13:27:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/webshop_grupp1/?p=4', 0, 'post', '', 0),
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
(15, 1, '2023-04-25 08:50:36', '2023-04-25 06:50:36', '', 'refined2', '', 'inherit', 'open', 'closed', '', 'refined2', '', '', '2023-04-25 08:50:36', '2023-04-25 06:50:36', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/refined2.webp', 0, 'attachment', 'image/webp', 0),
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
(34, 1, '2023-04-25 08:53:25', '2023-04-25 06:53:25', '', 'applicator2', '', 'inherit', 'open', 'closed', '', 'applicator2', '', '', '2023-04-25 08:53:25', '2023-04-25 06:53:25', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/applicator2.webp', 0, 'attachment', 'image/webp', 0),
(35, 1, '2023-04-25 08:53:26', '2023-04-25 06:53:26', '', 'hink', 'hink', 'inherit', 'open', 'closed', '', 'hink', '', '', '2023-04-25 14:35:49', '2023-04-25 12:35:49', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/hink.webp', 0, 'attachment', 'image/webp', 0),
(36, 1, '2023-04-25 08:53:26', '2023-04-25 06:53:26', '', 'hink2', '', 'inherit', 'open', 'closed', '', 'hink2', '', '', '2023-04-25 08:53:26', '2023-04-25 06:53:26', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/hink2.webp', 0, 'attachment', 'image/webp', 0),
(37, 1, '2023-04-25 08:53:27', '2023-04-25 06:53:27', '', 'p-skiva', 'Kombinerad p-skiva och isskrapa', 'inherit', 'open', 'closed', '', 'p-skiva', '', '', '2023-04-25 14:45:40', '2023-04-25 12:45:40', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/p-skiva.webp', 0, 'attachment', 'image/webp', 0),
(38, 1, '2023-04-25 08:53:27', '2023-04-25 06:53:27', '', 'p-skiva2', '', 'inherit', 'open', 'closed', '', 'p-skiva2', '', '', '2023-04-25 08:53:27', '2023-04-25 06:53:27', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/p-skiva2.webp', 0, 'attachment', 'image/webp', 0),
(39, 1, '2023-04-25 08:53:28', '2023-04-25 06:53:28', 'spray', 'spray-pump-alkaline', '', 'inherit', 'open', 'closed', '', 'spray-pump-alkaline', '', '', '2023-04-25 15:08:06', '2023-04-25 13:08:06', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-alkaline.webp', 0, 'attachment', 'image/webp', 0),
(40, 1, '2023-04-25 08:53:28', '2023-04-25 06:53:28', '', 'spray-pump-alkaline2', 'spray', 'inherit', 'open', 'closed', '', 'spray-pump-alkaline2', '', '', '2023-04-25 15:08:23', '2023-04-25 13:08:23', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-alkaline2.webp', 0, 'attachment', 'image/webp', 0),
(41, 1, '2023-04-25 08:53:29', '2023-04-25 06:53:29', '', 'spray-pump-petroleum', 'tryckspruta', 'inherit', 'open', 'closed', '', 'spray-pump-petroleum', '', '', '2023-04-25 15:05:03', '2023-04-25 13:05:03', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-petroleum.webp', 0, 'attachment', 'image/webp', 0),
(42, 1, '2023-04-25 08:53:29', '2023-04-25 06:53:29', '', 'spray-pump-petroleum2', '', 'inherit', 'open', 'closed', '', 'spray-pump-petroleum2', '', '', '2023-04-25 08:53:29', '2023-04-25 06:53:29', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/spray-pump-petroleum2.webp', 0, 'attachment', 'image/webp', 0),
(43, 1, '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 'sticker', 'sticker', 'inherit', 'open', 'closed', '', 'sticker', '', '', '2023-04-25 14:55:27', '2023-04-25 12:55:27', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/sticker.webp', 0, 'attachment', 'image/webp', 0),
(44, 1, '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 'sticker2', '', 'inherit', 'open', 'closed', '', 'sticker2', '', '', '2023-04-25 08:53:30', '2023-04-25 06:53:30', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/sticker2.webp', 0, 'attachment', 'image/webp', 0),
(45, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/shop/', 0, 'page', '', 0),
(47, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/cart/', 0, 'page', '', 0),
(48, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/checkout/', 0, 'page', '', 0),
(49, 1, '2023-04-25 09:56:22', '2023-04-25 07:56:22', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2023-04-25 09:56:22', '2023-04-25 07:56:22', '', 0, 'http://localhost/webshop_grupp1/my-account/', 0, 'page', '', 0),
(50, 1, '2023-04-25 16:10:02', '2023-04-25 14:10:02', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna, Swish, Kort.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas jag ni blir nöjda med mina produkter men skulle det vara några problem som uppstår så kontakta gärna mig på en gång så löser vi det.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar jag den nya frakten från mig till dig. Byten går bra men meddela mig gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp!&nbsp;För försändelse som ej lösts ut och ej avbeställts utan gått i retur till&nbsp;tershine debiteras en avgift om f.n. 300 kr inkl. moms för att täcka frakt, returfrakt samt administration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via Shopify (webshops-lösningen) och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'publish', 'closed', 'closed', '', 'refund_returns', '', '', '2023-04-25 16:10:02', '2023-04-25 14:10:02', '', 0, 'http://localhost/webshop_grupp1/?page_id=50', 0, 'page', '', 0),
(51, 1, '2023-04-25 10:41:57', '2023-04-25 08:41:57', 'Purify S+ är ett så kallat keramiskt schampo med doft av grönt äpple som utöver att rengöra ger massvis av härlig glossy gloss och lämnar en skyddande hinna, som blir mycket vattenavstötande! Perfekt för dig som enkelt vill lackskydda fordonet utan massa krusiduller eller för att boosta befintliga skydd.\r\n\r\nTänk er Purify S och Refract i samma flaska (ish)! Givetvis helt fri från högfluorerade ämnen (PFAS) och shady lösningsmedel mm. Blandningsförhållande på 1:250-1:500 samt fungerar helt fantastiskt i foam gun. Med andra ord episk för er med stora fordon så som lastbil, grävmaskiner eller ja såklart till ALLA fordon!\r\n\r\nSkummet är faktiskt helt ok men tyvärr är det ju ”kemikaliernas” lag, avrinning minskar skum! Men det går fint fluffa upp i hinken då och då.\r\n\r\nDet här är en grym produkt dom gånger man inte orkar köra med Refract och alla steg, eller om man bara vill underhålla sitt befintliga skydd, typ Magnify eller Refract. Den ger riktigt bra avrinning även på helt döda lacker samt har man redan ett skydd under så boostar den på det massvis. Det här är en perfekt produkt, dels för nybörjare men även till oss hardcore -tvättare som ibland inte riktigt känner man hinner en mystvätt med alla stegen. Det blir en liten kompromiss att ha allt i samma flaska, men det här är verkligen min egna nya favorit då den är så förbannat enkelt att använda och ger ett superfint resultat. Går galant att använda på wrap/ppf samt även matta lacker. Kanon även på båten, husbilen/vagnen, vattenskotern, ja den funkar på mer eller mindre allt.\r\n\r\nEn stor sak är att man absolut inte behöver få "panik" om produkten inte spolas av omgående. Med andra ord, ni kan tvätta hela fordonet i lugn och ro innan ni spolar av, precis som våra övriga schampon. Såklart börjar ni med alla stegen innan så som avfettning, fälgrengöring osv. Med andra ord en helt vanlig tvätt.\r\n<ol>\r\n 	<li>Häll en skvätt i hinken, laborera gärna hur mycket ni behöver ha i. Det är lite från bil till bil och produkten har lägre blandningsförhållanden än våra övriga schampon. Den blir nästan bättre ju mer ni tar. Kan också appliceras rent direkt i handske/duk och på så sätt "masseras" in och sedan sköljas av.</li>\r\n 	<li>Fluffa upp skummet med högtrycken (upprepa vid behov).</li>\r\n 	<li>Dra tvätthandsken/mikrofiberduken med raka drag över fordonets lack.</li>\r\n 	<li> Spola av och torka torrt med en högkvalitativ duk.</li>\r\n 	<li>Njut av den episka glansen och avrinningen!</li>\r\n</ol>\r\nKan med fördel användas i foam gun, där är det som vanligt så många olika faktorer som spelar in så laborera er gärna fram till rätt blandningsförhållande. Se till att rengöra ordentligt innan med avfettningarna, sen är det bara duscha ut och låt dra en liten stund innan ni spolar av.\r\n\r\nSom sista grej kan man faktiskt späda den med vatten och använda som en form av wet coat, blanda då ut den i en tomflaska och duscha på ren yta och spola av likt Refract.\r\n\r\nVill man använda torkstöd så som Apex+ eller Refract går det fint, men tänk på att ni kan torka "bort" lite av det göttiga, så prova gärna utan första gången och testa er fram vad ni gillar bäst! Skölj gärna ur torkdukarna efter ni använt dom, den är inte alls lika "elak" mot dukarna som Refract men alltid bra få den ren innan det torkar.\r\n\r\nOm inte önskad effekt uppnås är det bara prova att köra lite mer produkt, låter ju flummigt men som jag beskrivit ovan så förespråkar vi att man provar sig fram till det förhållandet som passar bäst för just er. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS). Undvik direkt solljus samt förvara produkten mörkt och frostfritt.\r\n\r\n<strong>Doft:</strong> Grönt äpple\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: 5-15%: amfoteriska tensider. 5-15%: anjoniska och nonjoniska tensider, 5-15% katanjonisk tensid, aminofunctional siloxane. Konserveringsmedel: sodium hydroxymethylglycinate.</strong>\r\n<strong>Doft: Parfym, HexylCinnamal. 1-propanaminium, 2-hydroxy-n(2-hydroxpropyl)-n, n-dimethyl-, esters med fatty acids, C18 omättad, mesulfates; 1-propanaminium, 3-amino-n-(carboxymethyl)-n, N-dimethyl, N-coco acyl derivs, hydroxides, inne salts; amides, C8-18, C18-omättad. </strong>\r\n<strong>FARA: Irriterar huden. Kan orsaka allergisk hudreaktion. Orsakar allvarliga ögonskador. Skadliga långtidseffekter för vattenlevande organismer. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID HUDKONTAKT: Tvätta med mycket vatten. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN. Innehållet och behållaren lämnas till auktoriserad avfallsanläggning. UFI: DK50-20N8-300E-U6KP</strong>', 'PURIFY S+ SCHAMPO', 'Purify S+ är ett så kallat keramiskt schampo med doft av grönt äpple som utöver att rengöra ger massvis av härlig glossy gloss och lämnar en skyddande hinna, som blir mycket vattenavstötande! Perfekt för dig som enkelt vill lackskydda fordonet utan massa krusiduller eller för att boosta befintliga skydd.', 'publish', 'open', 'closed', '', 'purify-s-shampoo', '', '', '2023-04-25 11:40:52', '2023-04-25 09:40:52', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=51', 0, 'product', '', 0),
(52, 1, '2023-04-25 11:05:13', '2023-04-25 09:05:13', '', 'purifys+', 'keramiskt schampo med doft', 'inherit', 'open', 'closed', '', 'purifys-3', '', '', '2023-04-25 11:06:26', '2023-04-25 09:06:26', '', 51, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/purifys-2.webp', 0, 'attachment', 'image/webp', 0),
(53, 1, '2023-04-25 11:31:57', '2023-04-25 09:31:57', '', 'PURIFY S+ SCHAMPO - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'purify-s-shampoo-5-liter', '', '', '2023-04-25 11:39:00', '2023-04-25 09:39:00', '', 51, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=53', 1, 'product_variation', '', 0),
(54, 1, '2023-04-25 11:31:57', '2023-04-25 09:31:57', '', 'PURIFY S+ SCHAMPO - 500 ml', 'Volym: 500 ml', 'publish', 'closed', 'closed', '', 'purify-s-shampoo-500-ml', '', '', '2023-04-25 11:39:00', '2023-04-25 09:39:00', '', 51, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=54', 2, 'product_variation', '', 0),
(56, 1, '2023-04-25 11:46:56', '2023-04-25 09:46:56', 'Testvinnande (Teknikens Värld) Purify S är ett högeffektivt så kallat "keramiskt" schampo som ger en helt vansinnig glans. Tack vare sitt innehåll gör den inte bara rent utan hjälper till att boosta redan befintligt skydd (förslagsvis Magnify eller Refract) till nya höjder!\r\n\r\nJa som ni förstår är det ju en variant på Purify schampo men med extra ”keramiska” godsaker för den där helt galna glansen. Vad som särskiljer mitt schampo på marknaden och vad jag tycker gör produkten väldigt spännande är de rengörande egenskaperna tillsammans med den helt sjuka glansen den ger.\r\n\r\nProdukten presterar snarlikt rengöringsmässigt som mitt vanliga Purify (lite klenare) men ger en glansnivå som verkligen är helt otrolig. Det hjälper till boosta ytan under och är gjort att kunna binda på alla typer av lackskydd och vaxer, då jag har valt de rengörande egenskaperna och glansen så har det således inga "inbyggda" avrinnande egenskaper (nästan omöjligt tillverka en produkt som presterar maximalt på alla håll utan man får ”välja” vilka egenskaper man vill premiera).\r\n\r\nSen är det ju självklart glansen som är hela grejen med schampot, den ger verkligen så förbannat bra glans. Det tar någon timme innan maxglans har uppnåtts då den behöver lite härdtid. Jag är grymt nöjd över hur tjockt och fint skummet är, hur bra glid det ger mot handsken samt att det är väldigt drygt. Det är ca 2-3 kapsyler i en vanliga hink som gäller (men prova gärna vad du gillar), det är ungefär hälften så drygt som vanliga Purify, men en flaska på 500 ml räcker fortfarande till massvis av tvättar. Jag tycker dock att det verkligen lever ut när man skvätter i lite extra, det blir inte bättre rengörande egenskaper men glansen poppar verkligen till en annan nivå. Blandningsförhållande ca 1:1000 (sjukt svårt mäta sånt), vilket gör det enormt drygt! Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Fungerar lika bra på matta lacker och folierade fordon. Räcker till ca 40-50 tvättar.\r\n\r\nKom ihåg att mängden skum också är avhängt på hårt/mjukt vatten, så labba gärna runt vilken mängd ni gillar bäst!\r\n<ol>\r\n 	<li><strong> Dra i en skvätt i ljummet vatten.</strong></li>\r\n 	<li><strong> Spola med högtrycksmunstycke i hinken för att aktivera skummet.</strong></li>\r\n 	<li><strong> Dra tvätthandsken med raka drag över fordonets lack och glöm inte att tvätta handsken i din andra hink med rent vatten då och då.</strong></li>\r\n 	<li><strong> Spola av och torka med torkduk av hög kvalitet.</strong></li>\r\n 	<li><strong> Efter avtork kommer glansen att öka successivt de första 12-24h.</strong></li>\r\n 	<li><strong> Jag vet, glansen är ju helt magisk</strong>\r\n<strong>Ps. använd med fördel min keramiska quick coat Refract eller mitt glansmonster Apex+ som torkstöd så tar du allt till nästa nivå.</strong></li>\r\n</ol>\r\nFungerar självklart kanon i foam gun!\r\n\r\n<strong>Doft:</strong> Äpple (ish)\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera</strong>\r\n\r\n<strong>FARA: Irriterar huden. Orsakar allvarliga ögonskador. Skadliga lång-</strong>\r\n<strong>tidseffekter för vattenlevande organismer. Tvätta händerna grundligt</strong>\r\n<strong>efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd.</strong>\r\n<strong>VID HUDKONTAKT: Tvätta med mycket vatten. VID KONTAKT MED ÖGONEN: Skölj försiktigt</strong>\r\n<strong>med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt att</strong>\r\n<strong>skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN/läkare. Innehållet/behållaren</strong>\r\n<strong>lämnas till anläggning för hantering av farligt avfall.</strong>\r\n\r\n<strong>Innehåller: &lt; 5%: amfotera tensider. 5-15%: anjoniska tensider, nonjoniska tensider. Konserveringsmedel: Sodium - Hydroxymethylglycinate. Doft: Parfym, Citronellol, Geraniol, Butylphenyl Methylpropional, Linalool, alpha isomethyl ionon, Benzyl salicylate, Citral, HexylCinnamal, Limonene.  Tridecylalcohol, ethoxylated ; Sodium C14-16 olefin sulfonate; Alcohols, C12-14, ethoxylated, sulfates, sodium salts; N- (Cocoalkyl)-dimethylamine oxide. UFI: 8P50-K0AN-D00W-GJ5R</strong>', 'PURIFY S - SCHAMPO GLOSS', 'Testvinnande (Teknikens Värld) Purify S är ett högeffektivt så kallat "keramiskt" schampo som ger en helt vansinnig glans. Tack vare sitt innehåll gör den inte bara rent utan hjälper till att boosta redan befintligt skydd (förslagsvis Magnify eller Refract) till nya höjder!', 'publish', 'open', 'closed', '', 'purify-s-schampo-gloss', '', '', '2023-04-25 12:08:35', '2023-04-25 10:08:35', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=56', 0, 'product', '', 0),
(57, 1, '2023-04-25 11:50:47', '2023-04-25 09:50:47', '', 'PURIFY S - SCHAMPO GLOSS - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'purify-s-schampo-gloss-5-liter', '', '', '2023-04-25 11:55:27', '2023-04-25 09:55:27', '', 56, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=57', 1, 'product_variation', '', 0),
(58, 1, '2023-04-25 11:50:47', '2023-04-25 09:50:47', '', 'PURIFY S - SCHAMPO GLOSS - 500 ml', 'Volym: 500 ml', 'publish', 'closed', 'closed', '', 'purify-s-schampo-gloss-500-ml', '', '', '2023-04-25 11:55:09', '2023-04-25 09:55:09', '', 56, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=58', 2, 'product_variation', '', 0),
(59, 1, '2023-04-25 11:56:59', '2023-04-25 09:56:59', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!\r\n\r\nElevate är 100% biologiskt nedbrytbar och helt utan faromärkningar (ja, du läste rätt). Superenkel att använda och mycket skonsam för både dig och miljön.\r\n<ol>\r\n 	<li><strong>Blanda i foam gun efter tycke och smak, 1:5-1:20 ish</strong></li>\r\n 	<li><strong>Duscha ut och låt verka i några minuter</strong></li>\r\n 	<li><strong>Spola av</strong></li>\r\n 	<li><strong>Fortsätt med nästa steg i din tvättprocess</strong></li>\r\n</ol>\r\n<strong>Ps. </strong>Kika gärna vår video om hur man blandar i foam gun, det finns många parametrar som påverkar resultatet. Oavsett vad, framtidens bilvård är nu här!\r\n\r\n<strong>Doft: </strong>Somriga Frukter\r\n\r\n<em>Förvaras frostfritt. Ej märkningspliktig.</em>\r\n\r\n<strong>Innehåller: 5-15% anjoniska tensider, nonjoniska tensider. Konserveringsmedel: Hydroxymethylglycinate. </strong>\r\n<strong>Doft: Parfym, Limonene, Linalool.</strong>\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>', 'ELEVATE - SNOW FOAM', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!', 'publish', 'open', 'closed', '', 'elevate-snow-foam', '', '', '2023-04-25 12:14:54', '2023-04-25 10:14:54', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=59', 0, 'product', '', 0),
(61, 1, '2023-04-25 12:00:18', '2023-04-25 10:00:18', '', 'ELEVATE - SNOW FOAM - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'elevate-snow-foam-1-l-5-liter', '', '', '2023-04-25 12:13:38', '2023-04-25 10:13:38', '', 59, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=61', 3, 'product_variation', '', 0),
(63, 1, '2023-04-25 12:05:56', '2023-04-25 10:05:56', '', 'ELEVATE - SNOW FOAM - 1 liter', 'Volym: 1 liter', 'publish', 'closed', 'closed', '', 'elevate-snow-foam-1-l', '', '', '2023-04-25 12:13:38', '2023-04-25 10:13:38', '', 59, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=63', 0, 'product_variation', '', 0),
(64, 1, '2023-04-25 12:08:43', '2023-04-25 10:08:43', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-04-25 12:08:43', '2023-04-25 10:08:43', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&p=64', 0, 'product', '', 0),
(65, 1, '2023-04-25 12:10:39', '2023-04-25 10:10:39', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-04-25 12:10:39', '2023-04-25 10:10:39', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&p=65', 0, 'product', '', 0),
(66, 1, '2023-04-25 12:15:00', '2023-04-25 10:15:00', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!\r\n\r\nElevate är 100% biologiskt nedbrytbar och helt utan faromärkningar (ja, du läste rätt). Superenkel att använda och mycket skonsam för både dig och miljön.\r\n<ol>\r\n 	<li><strong>Blanda i foam gun efter tycke och smak, 1:5-1:20 ish</strong></li>\r\n 	<li><strong>Duscha ut och låt verka i några minuter</strong></li>\r\n 	<li><strong>Spola av</strong></li>\r\n 	<li><strong>Fortsätt med nästa steg i din tvättprocess</strong></li>\r\n</ol>\r\n<strong>Ps. </strong>Kika gärna vår video om hur man blandar i foam gun, det finns många parametrar som påverkar resultatet. Oavsett vad, framtidens bilvård är nu här!\r\n\r\n<strong>Doft: </strong>Somriga Frukter\r\n\r\n<em>Förvaras frostfritt. Ej märkningspliktig.</em>\r\n\r\n<strong>Innehåller: 5-15% anjoniska tensider, nonjoniska tensider. Konserveringsmedel: Hydroxymethylglycinate. </strong>\r\n<strong>Doft: Parfym, Limonene, Linalool.</strong>\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>', 'ELEVATE - SNOW FOAM', 'Elevate är ett förtvättsmedel gjort för att lyfta alla former av organiskt smuts, den ger ett härligt tjockt skum och har fantastiska rengöringsförmågor. Med andra ord ett så kallat Snow Foam!', 'inherit', 'closed', 'closed', '', '59-autosave-v1', '', '', '2023-04-25 12:15:00', '2023-04-25 10:15:00', '', 59, 'http://localhost/webshop_grupp1/?p=66', 0, 'revision', '', 0),
(67, 1, '2023-04-25 12:15:16', '2023-04-25 10:15:16', '<strong>Ny formula för vintern 2021!</strong>\r\n\r\nVision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).\r\n\r\nVision+ lämnar en effektiv avrinning på rutan som hjälper till att hålla dom rena längre samt du sparar på torkarna och sikten blir bättre.\r\n\r\nSuperenkel att använda, bara duscha i duken, applicera och torka av. Se till att vänd på duken och buffa upp ytan (för att torka ordentligt rent). Eftersom Vision+ lämnar en coating efter sig kan det i vissa lägen vara enklare att ha en ren duk vid sidan om och torka av med. Då den verkligen är superdryg så är ledordet less is more här också!\r\n\r\nKöp gärna till en glasduk eller allround-duk som gör en enorm skillnad på hur enkelt det är putsa glas rent och fint! Kom ihåg att dubbla dukar är att föredra, oavsett vilken produkt du använder.\r\n<ol>\r\n 	<li><strong> Duscha i din glasduk eller direkt på ytan.</strong></li>\r\n 	<li><strong> Torka ut och vänd på duken och buffa upp!</strong></li>\r\n 	<li><strong> Njut av glansen och avrinningen :)</strong></li>\r\n</ol>\r\nJag rekommenderar alltid att skaka produkten innan användning. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Skogsbär\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: &lt;5 % anjoniska tensider. &lt;5% nonjoniska tensider. Konserveringsmedel: Sodium-Hydroxymethylclycinate. Doft: 3,7 -dimethyl6-octen1-ol (dl-citronellol), ethyl acetate, 1,8-cineole, limonene, linalool, anthranilic acid: methyl ester, 4-tert-butylcyclohexyl acetate. Propan-2-ol;.2-Butoxyethanol. VARNING: Orsakar allvarlig ögonirritation. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Tvätta händer grundligt efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Vid bestående ögonirritation sök läkarhjälp. Innehållet i behållaren lämnas till anläggning för hantering av varligt avfall.</strong>', 'VISION+ GLASS CLEANER 500ML', 'Vision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).', 'publish', 'open', 'closed', '', 'vision-glass-cleaner-500ml', '', '', '2023-04-25 12:50:10', '2023-04-25 10:50:10', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=67', 0, 'product', '', 0),
(68, 1, '2023-04-25 12:42:25', '2023-04-25 10:42:25', 'Extract är en högeffektiv och superkoncentrerad alkalisk avfettning lämplig för alla typer av fordon, golv, fasader etc. Lyfter organisk smuts och doftar härligt av persika. Blandas 5-15% i vatten och 1 liter ger således 20 liter färdig produkt att använda. Fungerar även utmärkt för grövre smuts på golvmattor etc.\r\n\r\nMagisk som flyg/insektslösare i fronten, blanda då produkten betydligt starkare hela vägen upp till rent!\r\n<ol>\r\n 	<li><strong> Blanda 5-15% med vatten (beroende på användningsområde)</strong>\r\n<strong>2. Duscha över vald yta och låt verka under någon minut. </strong>\r\n<strong>3. Spola av med högtryck</strong>\r\n<strong>4. Påbörja nästa steg i tvättprocessen</strong></li>\r\n</ol>\r\nGår utmärkt att använda i skumkanon, dosera mängd med munstycket. Betänk också att all typ av kem men framförallt avfettning (kall/alkalisk) behöver längre tid på sig att bearbeta ytan när det är kallt, ja jag lovar det är enorm skillnad. Så prova er fram vilken tid ni föredrar, allt mellan 5-15 min, men låt det inte torka in. Snäll mot aluminium och andra metaller!\r\n\r\nAnvänd gärna vårt doserings mått och vår pump spray.\r\n\r\nDenna löser alltså inte tjära/asfaltsfläckar, då behöver ni min kallavfettning Dissolve! Finns även som Ready To Use spädd till 10%!\r\n\r\n<strong>Då frågan kommer väldigt ofta så förklarar jag det enkelt här under:</strong>\r\n\r\n<strong><em>För 5% blandning tar ni volymen, exempelvis 500ml x 0,05 = 25ml, för 10% tar ni 500 ml x 0,1 osv!</em></strong>\r\n\r\n<strong>Doft: </strong>Persika\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>FARA: Orsakar allvarliga frätskador på hud och ögon. Använd skyddshandskar och skyddskläder samt ögonskydd eller ansiktsskydd. VID FÖRTÄRING: Skölj munnen. Framkalla INTE kräkning. VID HUDKONTAKT (även håret): Ta omedelbart av alla nedstänkta kläder. Skölj huden med vatten eller duscha. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt att skölja. Kontakta genast GIFTINFORMATIONSCENTRALEN. Innehåller: Kaliumhydroxid. Nonjoniska tensider 5-15% Amfotera tensider 5-15%.</strong>', 'EXTRACT - ALKALISK AVFETTNING', 'Extract är en högeffektiv och superkoncentrerad alkalisk avfettning lämplig för alla typer av fordon, golv, fasader etc. Lyfter organisk smuts och doftar härligt av persika. Blandas 5-15% i vatten och 1 liter ger således 20 liter färdig produkt att använda. Fungerar även utmärkt för grövre smuts på golvmattor etc.', 'publish', 'open', 'closed', '', 'extract-alkalisk-avfettning', '', '', '2023-04-25 12:48:33', '2023-04-25 10:48:33', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=68', 0, 'product', '', 0),
(69, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 1 liter', 'Volym: 1 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-1-liter', '', '', '2023-04-25 12:48:24', '2023-04-25 10:48:24', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=69', 1, 'product_variation', '', 0),
(70, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 25 liter', 'Volym: 25 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-25-liter', '', '', '2023-04-25 12:47:59', '2023-04-25 10:47:59', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=70', 2, 'product_variation', '', 0),
(71, 1, '2023-04-25 12:44:54', '2023-04-25 10:44:54', '', 'EXTRACT - ALKALISK AVFETTNING - 5 liter', 'Volym: 5 liter', 'publish', 'closed', 'closed', '', 'extract-alkalisk-avfettning-5-liter', '', '', '2023-04-25 12:47:59', '2023-04-25 10:47:59', '', 68, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=71', 3, 'product_variation', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2023-04-25 12:49:50', '2023-04-25 10:49:50', '<strong>Ny formula för vintern 2021!</strong>\r\n\r\nVision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).\r\n\r\nVision+ lämnar en effektiv avrinning på rutan som hjälper till att hålla dom rena längre samt du sparar på torkarna och sikten blir bättre.\r\n\r\nSuperenkel att använda, bara duscha i duken, applicera och torka av. Se till att vänd på duken och buffa upp ytan (för att torka ordentligt rent). Eftersom Vision+ lämnar en coating efter sig kan det i vissa lägen vara enklare att ha en ren duk vid sidan om och torka av med. Då den verkligen är superdryg så är ledordet less is more här också!\r\n\r\nKöp gärna till en glasduk eller allround-duk som gör en enorm skillnad på hur enkelt det är putsa glas rent och fint! Kom ihåg att dubbla dukar är att föredra, oavsett vilken produkt du använder.\r\n<ol>\r\n 	<li><strong> Duscha i din glasduk eller direkt på ytan.</strong></li>\r\n 	<li><strong> Torka ut och vänd på duken och buffa upp!</strong></li>\r\n 	<li><strong> Njut av glansen och avrinningen :)</strong></li>\r\n</ol>\r\nJag rekommenderar alltid att skaka produkten innan användning. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Skogsbär\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: &lt;5 % anjoniska tensider. &lt;5% nonjoniska tensider. Konserveringsmedel: Sodium-Hydroxymethylclycinate. Doft: 3,7 -dimethyl6-octen1-ol (dl-citronellol), ethyl acetate, 1,8-cineole, limonene, linalool, anthranilic acid: methyl ester, 4-tert-butylcyclohexyl acetate. Propan-2-ol;.2-Butoxyethanol. VARNING: Orsakar allvarlig ögonirritation. Förvaras oåtkomligt för barn. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Tvätta händer grundligt efter användning. Använd skyddshandskar/skyddskläder/ögonskydd/ansiktsskydd. VID KONTAKT MED ÖGONEN: Skölj försiktigt med vatten i flera minuter. Ta ur eventuella kontaktlinser om det går lätt. Fortsätt skölja. Vid bestående ögonirritation sök läkarhjälp. Innehållet i behållaren lämnas till anläggning för hantering av varligt avfall.</strong>', 'VISION+ GLASS CLEANER 500ML', 'Vision+ är en glasputs med härlig doft av vilda bär och frukt. Används på alla glasytor, lämnar en kladdfri och glänsande yta med en vattenavvisande hinna. Kan med fördel användas på både in och utsida samt lämpar sig mycket väl för hemmet (duschväggar, speglar, fönster osv).', 'inherit', 'closed', 'closed', '', '67-autosave-v1', '', '', '2023-04-25 12:49:50', '2023-04-25 10:49:50', '', 67, 'http://localhost/webshop_grupp1/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-04-25 12:50:14', '2023-04-25 10:50:14', 'Refined är en oljebaserad (petroleum) produkt som återställer dina däck och plastdetaljer i ett drag. Väldigt lättanvänd samt lämnar en slitstark skyddande hinna efter sig. Ger en satin finish som gör det snyggt och fräscht utan några krusiduller!\r\n\r\nProdukten är primärt framtagen för att återställa däcksidor men fungerar faktiskt lika bra på plastdetaljer, motorrum, gummilister mm. Jag har valt ha den i lättare gelform ish för att den enkelt ska kunna komma in i alla skarvar och kanter på däcken samt vara lätt -applicerad.\r\n\r\nDå den är petroleumbaserad (olja) så blandar den sig inte direkt fantastiskt med vatten, så försök ha ytan ni ska applicera på så torr som möjligt, funkar ju såklart på lite fukt/blöt också.\r\n<ol>\r\n 	<li><strong> Rengör ytan (med exempelvis APC eller Extract)</strong></li>\r\n 	<li><strong>Applicera med valfri skum-pad</strong></li>\r\n 	<li><strong>Låt torka</strong></li>\r\n 	<li><strong>Torka av eventuellt överflöd med en ren MF-duk</strong></li>\r\n 	<li><strong>Visst är den bra? :)</strong></li>\r\n</ol>\r\nOm du vill ha mer wet look kan fler lager appliceras! Innehåller inga högfluorerande ämnen!\r\n\r\nPrestandan ur en däckglans (oavsett märke) hänger oftast på underarbetet. Se till att rengöra däcket ordentligt med både Relive och Extract (även Dissolve om så krävs), dundra på med borste eller pensel. Spola ordentligt och torka rent, ni kommer bli lyckligare av att göra så. Biologiskt nedbrytbar och innehåller inga högfluorerande ämnen (PFAS)!\r\n\r\n<strong>Doft:</strong> Ingen\r\n\r\nFörvaras frostfritt.\r\n\r\n<strong>Säkerhetsdatablad finns att rekvirera.</strong>\r\n\r\n<strong>Innehåller: Hydrocarbons, n-alkanes, cycloalkanes, &lt; 2% aromatics. </strong><strong>Low boiling point hydrogen treated naphtha - naphtha (petroleum), hydrotreathed hevy.</strong>\r\n<strong>FARA: Kan vara dödligt vid förtäring om det kommer ned i luftvägarna. Ha förpackningen eller etiketten till hands om du måste söka läkarvård. Förvaras oåtkomligt för barn. VID FÖRTÄRING: Kontakta genast GIFTINFORMATIONSCENTRALEN/läkare. Framkalla INTE kräkning. Förvaras inlåst. Innehållet/behållaren lämnas till anläggning för hantering av farligt gods.</strong>', 'REFINED - RUBBER AND TRIM 500ML', 'Refined är en oljebaserad (petroleum) produkt som återställer dina däck och plastdetaljer i ett drag. Väldigt lättanvänd samt lämnar en slitstark skyddande hinna efter sig. Ger en satin finish som gör det snyggt och fräscht utan några krusiduller!', 'publish', 'open', 'closed', '', 'refined-rubber-and-trim-500ml', '', '', '2023-04-25 13:43:13', '2023-04-25 11:43:13', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=73', 0, 'product', '', 0),
(74, 1, '2023-04-25 13:43:18', '2023-04-25 11:43:18', '<strong>UPPDATERAT UTSEENDE OCH NY FORMULA!</strong>\r\n\r\nÄnnu mer doft och smuttare förpackning!\r\n\r\nKlassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj\r\n\r\n<strong>Ej märkningspliktig.</strong>\r\n\r\n<strong>Innehåll:\r\nGrönt äpple: 2,4-dimetylcyklohex-3-en-1-karbaldehyd. Vanilj: Allyl 3-cyklohexylpropionat, kumarin, isoeugenol. Jordgubbe: 1-(2,6,6-trimetylcyklohex-1-en-1-yl)but-2-en-1-on, linalylacetat. Kan ge en allergisk reaktion.</strong>', 'AIR FRESHENER', 'Klassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj', 'publish', 'open', 'closed', '', 'air-freshener', '', '', '2023-04-25 13:50:01', '2023-04-25 11:50:01', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=74', 0, 'product', '', 0),
(75, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Äpple', 'Dofter: Äpple', 'publish', 'closed', 'closed', '', 'air-freshener-apple', '', '', '2023-04-25 13:49:26', '2023-04-25 11:49:26', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=75', 1, 'product_variation', '', 0),
(76, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Jordgubb', 'Dofter: Jordgubb', 'publish', 'closed', 'closed', '', 'air-freshener-jordgubb', '', '', '2023-04-25 13:49:26', '2023-04-25 11:49:26', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=76', 2, 'product_variation', '', 0),
(77, 1, '2023-04-25 13:45:57', '2023-04-25 11:45:57', '', 'AIR FRESHENER - Vanilj', 'Dofter: Vanilj', 'publish', 'closed', 'closed', '', 'air-freshener-vanilj', '', '', '2023-04-25 13:49:26', '2023-04-25 11:49:26', '', 74, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=77', 3, 'product_variation', '', 0),
(78, 1, '2023-04-25 13:50:05', '2023-04-25 11:50:05', '<strong>UPPDATERAT UTSEENDE OCH NY FORMULA!</strong>\r\n\r\nÄnnu mer doft och smuttare förpackning!\r\n\r\nKlassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj\r\n\r\n<strong>Ej märkningspliktig.</strong>\r\n\r\n<strong>Innehåll:\r\nGrönt äpple: 2,4-dimetylcyklohex-3-en-1-karbaldehyd. Vanilj: Allyl 3-cyklohexylpropionat, kumarin, isoeugenol. Jordgubbe: 1-(2,6,6-trimetylcyklohex-1-en-1-yl)but-2-en-1-on, linalylacetat. Kan ge en allergisk reaktion.</strong>', 'AIR FRESHENER', 'Klassisk ”doftgran” i dofterna Grönt Äpple, Jordgubbe och Vanilj', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2023-04-25 13:50:05', '2023-04-25 11:50:05', '', 74, 'http://localhost/webshop_grupp1/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-04-25 13:51:36', '2023-04-25 11:51:36', 'Supernice hoodie i riktigt bra kvalitet, helt i linje med märkessaker!\r\n\r\nStorlekarna är "normala" lite lite slimfit så känns riktigt modern och bra.', 'LOGO HOODIE - SVART', 'Supernice hoodie i riktigt bra kvalitet', 'publish', 'open', 'closed', '', 'logo-hoodie-svart', '', '', '2023-04-25 14:18:15', '2023-04-25 12:18:15', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=79', 0, 'product', '', 0),
(80, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Large', 'Storlek: Large', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-large', '', '', '2023-04-25 14:17:37', '2023-04-25 12:17:37', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=80', 1, 'product_variation', '', 0),
(81, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Medium', 'Storlek: Medium', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-medium', '', '', '2023-04-25 14:17:37', '2023-04-25 12:17:37', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=81', 2, 'product_variation', '', 0),
(82, 1, '2023-04-25 14:15:47', '2023-04-25 12:15:47', '', 'LOGO HOODIE - SVART - Small', 'Storlek: Small', 'publish', 'closed', 'closed', '', 'logo-hoodie-svart-small', '', '', '2023-04-25 14:17:37', '2023-04-25 12:17:37', '', 79, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=82', 3, 'product_variation', '', 0),
(83, 1, '2023-04-25 14:18:35', '2023-04-25 12:18:35', 'T-shirt i ruskigt bra kvalitet (220gsm). Riktigt välarbetad med liten tershine logga över bröstet, och stort ryggtryck med med vår Yaris GR.\r\n\r\nNormala storlekar, vill du ha lite mer oversize fit så går du upp en storlek.\r\n\r\nUNISEX\r\n\r\nTillgänglig i storlekarna S-L', 'T-SHIRT - YARIS GR', 'T-shirt i ruskigt bra kvalitet', 'publish', 'open', 'closed', '', 't-shirt-yaris-gr', '', '', '2023-04-25 14:24:14', '2023-04-25 12:24:14', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Large', 'Storlek: Large', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-large', '', '', '2023-04-25 14:21:35', '2023-04-25 12:21:35', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=84', 1, 'product_variation', '', 0),
(85, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Medium', 'Storlek: Medium', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-medium', '', '', '2023-04-25 14:21:35', '2023-04-25 12:21:35', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=85', 2, 'product_variation', '', 0),
(86, 1, '2023-04-25 14:19:56', '2023-04-25 12:19:56', '', 'T-SHIRT - YARIS GR - Small', 'Storlek: Small', 'publish', 'closed', 'closed', '', 't-shirt-yaris-gr-small', '', '', '2023-04-25 14:21:35', '2023-04-25 12:21:35', '', 83, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=86', 3, 'product_variation', '', 0),
(87, 1, '2023-04-25 14:25:34', '2023-04-25 12:25:34', 'Grymt smutt och robust hink som rymmer drygt 18 liter. Riktigt läckert röktonad så man enkelt ser hur mycket vatten som finns kvar. Grit-guard och vattentätt lock samt tryckt logga och litermått på sidan. Ett måste i tvätthallen eller på uppfarten.\r\n\r\nHöjd inklusive lock 40 cm\r\nBredd inklusive lock 30 cm', 'WASH BUCKET', 'Grymt smutt och robust hink som rymmer drygt 18 liter.', 'publish', 'open', 'closed', '', 'wash-bucket', '', '', '2023-04-25 14:35:55', '2023-04-25 12:35:55', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=87', 0, 'product', '', 0),
(88, 1, '2023-04-25 14:44:15', '2023-04-25 12:44:15', 'Ni undrar kanske som mig vart den där fula och fuktiga p-skivan i papp är varje gång man behöver den! Därför tycker jag detta är en smutt pryl om man som mig sällan behöver skrapa rutorna, så kan ni istället ha den som en snygg P-skiva. Så en riktigt nice P-skiva / Isskrapa i bra kvalitet helt enkelt. Även smidigt litet hack för att dra bort is på vindrutetorkarna samt däckdjupsmätare.\r\n\r\nKan vara lite lite ”kinkiga” första snurren (plast mot plast). Prova håll den i ena handen och skruva med två fingrar OM det skulle hända första gångerna.', 'P-SKIVA / ISSKRAPA', 'En riktigt nice P-skiva / Isskrapa i bra kvalitet', 'publish', 'open', 'closed', '', 'p-skiva-isskrapa', '', '', '2023-04-25 14:48:49', '2023-04-25 12:48:49', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=88', 0, 'product', '', 0),
(90, 1, '2023-04-25 14:53:45', '2023-04-25 12:53:45', 'Utskuren dekal med texten PLEASE DO NOT PET  (för er som är trötta på alla polare som måste ”känna” på glansen).\r\n\r\n<strong>Färg:</strong> Vit', 'UTSKUREN DEKAL - 8 CM', 'Utskuren dekal med texten PLEASE DO NOT PET', 'publish', 'open', 'closed', '', 'utskuren-dekal-8-cm', '', '', '2023-04-25 14:55:38', '2023-04-25 12:55:38', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=90', 0, 'product', '', 0),
(91, 1, '2023-04-25 14:56:16', '2023-04-25 12:56:16', 'Samma grund-modell som mina vanliga torkdukar men med dubbla sidor istället samt 75x90 i storlek. Enorm uppsugningsförmåga och är mycket skonsam mot alla typer av ytor.\r\n\r\n<strong>GSM:</strong> 1060\r\nStorlek: 75x90\r\nMaterial: 80% Polyester, 20% Polyamid\r\n\r\nTillverkad i Korea\r\n\r\n<strong>Skötselråd:</strong> Tvättas i 40- 60 grader utan mjukmedel. Skippa vanligt tvättmedel då det oftast har en förmåga att "stänga" fibrerna och gör att dukarna fungerar sämre. Kör med Refresh - Fiber Wash alternativt APC/Alkaliskt (någon kork i maskinen) så brukar det fungera fin fint', 'DRYING TOWEL BIG', 'Torkduk med dubbla sidor', 'publish', 'open', 'closed', '', 'drying-towel-big', '', '', '2023-04-25 15:06:35', '2023-04-25 13:06:35', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=91', 0, 'product', '', 0),
(92, 1, '2023-04-25 15:02:11', '2023-04-25 13:02:11', '', 'drying-towel-big', 'torkduk', 'inherit', 'open', 'closed', '', 'drying-towel-big', '', '', '2023-04-25 15:02:25', '2023-04-25 13:02:25', '', 91, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/drying-towel-big.webp', 0, 'attachment', 'image/webp', 0),
(93, 1, '2023-04-25 15:02:12', '2023-04-25 13:02:12', '', 'drying-towel-big2', 'torkduk', 'inherit', 'open', 'closed', '', 'drying-towel-big2', '', '', '2023-04-25 15:02:37', '2023-04-25 13:02:37', '', 91, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/drying-towel-big2.webp', 0, 'attachment', 'image/webp', 0),
(94, 1, '2023-04-25 15:03:42', '2023-04-25 13:03:42', 'Riktigt trevlig och högkvalitativ tryckspruta tillverkade av Kwazar som underlättar tvätten enormt. 1,5 l -behållare för kallavfettning (Dissolve) samt en avlastningsventil för att enkelt kunna släppa på trycket när man är färdig. tershine -loggan, det står även stort på flaskan vad dom är tänkta till för typ av kem. Två modeller, så se till att välja den modellen som passar er (eller ta båda):\r\n\r\nPetroliumbaserade avfettningar med pH -värden mellan 1-7', 'SPRAY PUMP - PETROLEUM', 'Riktigt trevlig och högkvalitativ tryckspruta', 'publish', 'open', 'closed', '', 'spray-pump-petroleum', '', '', '2023-04-25 15:05:59', '2023-04-25 13:05:59', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=94', 0, 'product', '', 0),
(95, 1, '2023-04-25 15:06:02', '2023-04-25 13:06:02', '', 'AUTO-DRAFT', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2023-04-25 15:06:02', '2023-04-25 13:06:02', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&p=95', 0, 'product', '', 0),
(96, 1, '2023-04-25 15:06:40', '2023-04-25 13:06:40', 'Riktigt trevlig och högkvalitativ tryckspruta tillverkade av Kwazar som underlättar tvätten enormt. 1,5 l -behållare för alkalisk avfettning (Extract) samt en avlastningsventil för att enkelt kunna släppa på trycket när man är färdig. tershine -loggan, det står även stort på flaskan vad dom är tänkta till för typ av kem. Två modeller, så se till att välja den modellen som passar er (eller ta båda):\r\n\r\nAlkalisk för pH-värden mellan 7-14', 'SPRAY PUMP - ALKALISK', 'Riktigt trevlig och högkvalitativ tryckspruta', 'publish', 'open', 'closed', '', 'spray-pump-alkalisk', '', '', '2023-04-25 15:08:30', '2023-04-25 13:08:30', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=96', 0, 'product', '', 0),
(97, 1, '2023-04-25 15:08:44', '2023-04-25 13:08:44', 'Riktigt smutt däck och plast-applikator av bra kvalitet. Lite tjockare så man slipper gegga ned händerna samt att den täcker bra även på större fordon så som lastbilar, hjullastare mm. Ett måste tillsammans med Refined - Rubber &amp; Trim. Går galant att klippa med en sax om man vill ha den mindre.', 'APPLICATOR', 'Riktigt smutt däck och plast-applikator av bra kvalitet.', 'publish', 'open', 'closed', '', 'applicator', '', '', '2023-04-25 15:09:54', '2023-04-25 13:09:54', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=97', 0, 'product', '', 0),
(98, 1, '2023-04-25 15:10:51', '2023-04-25 13:10:51', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.\r\n\r\nNu i uppdaterad formula som innehåller en helt fantastisk odör-eliminerande funktion, blockerar och "dödar" dålig doft men behåller den fräscha (ja det låter flummigt, men du kommer inte bli missnöjd). Finns med Lime, Grönt Äpple, Viol eller Melon som doft, det är inte vattenmelon utan en lite söt fräsch doft bara så det blir inte too much.\r\n\r\nGår galant att späda ut om ni känner för det, ni får prova er fram vad ni gillar bäst men tänk på att ju mer ni späder den ju sämre blir odörblockeringsfunktionen! Men allt mellan 1:1 -1:25 beroende på smutsighetsgrad. Finns i 500ml, 5l och 25l -förpackningar.\r\n<ol>\r\n 	<li><strong> Duscha på valfri yta (eller i duk)</strong>\r\n<strong>2. Använd borste för att rugga upp ytan om det är mycket skitigt.</strong>\r\n<strong>3. Torka av med valfri mikrofiberduk</strong>\r\n<strong>4. Ja jag vet, superenkel att använda!</strong><strong>Om ni vill boosta på odörblockerings-funktionen lite extra så prova att duscha lite på mattorna i bilen och använd fläktens återcirkulerande funktion (så det får dra runt i kanaler, filter osv). Sen är det bara torka av dom och njuta av den fräscha doften.</strong></li>\r\n</ol>\r\nTänk på att inte använda för mycket tryck med duken om ni rengör en sliten insida, bättre vara lite försiktig och använd penslar etc för att få upp smutsen! Samt såklart inte i direkt solljus osv.\r\n\r\nFungerar självklart kanon i hemmet också. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Kan bli lite grumlig när den står, bara skaka den innan användning. Så med andra ord inget fel.\r\n\r\nFörvaras frostfritt.\r\n\r\nFlera dofter:\r\nÄpple\r\nJordgubbe\r\nCederträ\r\nMelon\r\nLime\r\nViol\r\n\r\n<strong>Safety data sheets are available on request.</strong>\r\n\r\n<strong>Contains: MGDA, &lt; 5%: non-ionic surfactants. </strong><strong>5-15%: anionic surfactants. Preservative: Sodium - Hydroxymethylglycinate. Fragrance: Perfume, HexylCinnamal. - Ethersulfate; N-(Cocoalkyl)-dimethylamine oxide. DANGER: Irritating to skin, Causes serious eye damage. Keep out of reach of children. Keep package or label handy in case you need to seek medical attention. Wash hands thoroughly after use. Wear protective gloves/protective clothing/eye/face protection. IF IN CONTACT WITH SKIN: Wash with plenty of water. IF IN EYES: Rinse gently with water for several minutes. Remove contact lenses if possible. Continue rinsing. Immediately contact the poison information centre/doctor. Take contents of container to hazardous waste facility.</strong>', 'APC - INTERIOR CLEANER', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.', 'publish', 'open', 'closed', '', 'apc-interior-cleaner', '', '', '2023-04-25 15:23:19', '2023-04-25 13:23:19', '', 0, 'http://localhost/webshop_grupp1/?post_type=product&#038;p=98', 0, 'product', '', 0),
(99, 1, '2023-04-25 15:12:41', '2023-04-25 13:12:41', '', 'APC - INTERIOR CLEANER - 5 liter, Äpple', 'Volym: 5 liter, Dofter: Äpple', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-apple-5-liter', '', '', '2023-04-25 15:23:12', '2023-04-25 13:23:12', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=99', 1, 'product_variation', '', 0),
(103, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 5 liter, Melon', 'Volym: 5 liter, Dofter: Melon', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-melon-5-liter', '', '', '2023-04-25 15:21:31', '2023-04-25 13:21:31', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=103', 2, 'product_variation', '', 0),
(106, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Äpple', 'Volym: 500 ml, Dofter: Äpple', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-apple-500-ml', '', '', '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=106', 3, 'product_variation', '', 0),
(107, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Cederträ', 'Volym: 500 ml, Dofter: Cederträ', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-cedertra-500-ml', '', '', '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=107', 4, 'product_variation', '', 0),
(108, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Jordgubb', 'Volym: 500 ml, Dofter: Jordgubb', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-jordgubb-500-ml', '', '', '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=108', 5, 'product_variation', '', 0),
(109, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Lime', 'Volym: 500 ml, Dofter: Lime', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-lime-500-ml', '', '', '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=109', 6, 'product_variation', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(110, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Melon', 'Volym: 500 ml, Dofter: Melon', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-melon-500-ml', '', '', '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&p=110', 7, 'product_variation', '', 0),
(112, 1, '2023-04-25 15:12:42', '2023-04-25 13:12:42', '', 'APC - INTERIOR CLEANER - 500 ml, Viol', 'Volym: 500 ml, Dofter: Viol', 'publish', 'closed', 'closed', '', 'apc-interior-cleaner-viol-500-ml', '', '', '2023-04-25 15:19:41', '2023-04-25 13:19:41', '', 98, 'http://localhost/webshop_grupp1/?post_type=product_variation&#038;p=112', 8, 'product_variation', '', 0),
(113, 1, '2023-04-25 15:23:22', '2023-04-25 13:23:22', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.\r\n\r\nNu i uppdaterad formula som innehåller en helt fantastisk odör-eliminerande funktion, blockerar och "dödar" dålig doft men behåller den fräscha (ja det låter flummigt, men du kommer inte bli missnöjd). Finns med Lime, Grönt Äpple, Viol eller Melon som doft, det är inte vattenmelon utan en lite söt fräsch doft bara så det blir inte too much.\r\n\r\nGår galant att späda ut om ni känner för det, ni får prova er fram vad ni gillar bäst men tänk på att ju mer ni späder den ju sämre blir odörblockeringsfunktionen! Men allt mellan 1:1 -1:25 beroende på smutsighetsgrad. Finns i 500ml, 5l och 25l -förpackningar.\r\n<ol>\r\n 	<li><strong> Duscha på valfri yta (eller i duk)</strong>\r\n<strong>2. Använd borste för att rugga upp ytan om det är mycket skitigt.</strong>\r\n<strong>3. Torka av med valfri mikrofiberduk</strong>\r\n<strong>4. Ja jag vet, superenkel att använda!</strong><strong>Om ni vill boosta på odörblockerings-funktionen lite extra så prova att duscha lite på mattorna i bilen och använd fläktens återcirkulerande funktion (så det får dra runt i kanaler, filter osv). Sen är det bara torka av dom och njuta av den fräscha doften.</strong></li>\r\n</ol>\r\nTänk på att inte använda för mycket tryck med duken om ni rengör en sliten insida, bättre vara lite försiktig och använd penslar etc för att få upp smutsen! Samt såklart inte i direkt solljus osv.\r\n\r\nFungerar självklart kanon i hemmet också. Biologiskt nedbrytbar och innehåller inga högfluorerade ämnen (PFAS)! Kan bli lite grumlig när den står, bara skaka den innan användning. Så med andra ord inget fel.\r\n\r\nFörvaras frostfritt.\r\n\r\nFlera dofter:\r\nÄpple\r\nJordgubbe\r\nCederträ\r\nMelon\r\nLime\r\nViol\r\n\r\n<strong>Safety data sheets are available on request.</strong>\r\n\r\n<strong>Contains: MGDA, &lt; 5%: non-ionic surfactants. </strong><strong>5-15%: anionic surfactants. Preservative: Sodium - Hydroxymethylglycinate. Fragrance: Perfume, HexylCinnamal. - Ethersulfate; N-(Cocoalkyl)-dimethylamine oxide. DANGER: Irritating to skin, Causes serious eye damage. Keep out of reach of children. Keep package or label handy in case you need to seek medical attention. Wash hands thoroughly after use. Wear protective gloves/protective clothing/eye/face protection. IF IN CONTACT WITH SKIN: Wash with plenty of water. IF IN EYES: Rinse gently with water for several minutes. Remove contact lenses if possible. Continue rinsing. Immediately contact the poison information centre/doctor. Take contents of container to hazardous waste facility.</strong>', 'APC - INTERIOR CLEANER', 'APC - Interior Cleaner är ett högeffektivt allrengöringsmedel som primärt är tänkt att användas på insidan av fordonet. Lämpar sig mycket väl för exempelvis textil, skinn, Alcantara, plast, gummi med mera. Rengör i ett drag och lämnar ingen jobbig hinna efter sig.', 'inherit', 'closed', 'closed', '', '98-autosave-v1', '', '', '2023-04-25 15:23:22', '2023-04-25 13:23:22', '', 98, 'http://localhost/webshop_grupp1/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-04-25 15:27:13', '2023-04-25 13:27:13', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:27:13', '2023-04-25 13:27:13', '', 0, 'http://localhost/webshop_grupp1/?p=114', 0, 'post', '', 0),
(115, 1, '2023-04-25 15:29:52', '2023-04-25 13:29:52', '', 'inlagg2-butik', 'butik', 'inherit', 'open', 'closed', '', 'inlagg2-butik', '', '', '2023-04-25 15:51:58', '2023-04-25 13:51:58', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2-butik.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2023-04-25 15:29:53', '2023-04-25 13:29:53', '', 'inlagg2-gloss', '', 'inherit', 'open', 'closed', '', 'inlagg2-gloss', '', '', '2023-04-25 15:29:53', '2023-04-25 13:29:53', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2-gloss.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2023-04-25 15:29:54', '2023-04-25 13:29:54', '', 'inlagg2-printerian', '', 'inherit', 'open', 'closed', '', 'inlagg2-printerian', '', '', '2023-04-25 15:29:54', '2023-04-25 13:29:54', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2-printerian.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2023-04-25 15:29:55', '2023-04-25 13:29:55', '', 'inlagg2-produkter', '', 'inherit', 'open', 'closed', '', 'inlagg2-produkter', '', '', '2023-04-25 15:29:55', '2023-04-25 13:29:55', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg2-produkter.jpg', 0, 'attachment', 'image/jpeg', 0),
(119, 1, '2023-04-25 15:29:56', '2023-04-25 13:29:56', '', 'inlagg3-apc', '', 'inherit', 'open', 'closed', '', 'inlagg3-apc', '', '', '2023-04-25 15:29:56', '2023-04-25 13:29:56', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg3-apc.jpg', 0, 'attachment', 'image/jpeg', 0),
(120, 1, '2023-04-25 15:29:57', '2023-04-25 13:29:57', '', 'inlagg3-apc2', 'sparyflaska', 'inherit', 'open', 'closed', '', 'inlagg3-apc2', '', '', '2023-04-25 15:54:37', '2023-04-25 13:54:37', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg3-apc2.jpg', 0, 'attachment', 'image/jpeg', 0),
(121, 1, '2023-04-25 15:29:58', '2023-04-25 13:29:58', '', 'inlagg5', '', 'inherit', 'open', 'closed', '', 'inlagg5', '', '', '2023-04-25 15:29:58', '2023-04-25 13:29:58', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg5.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2023-04-25 15:29:58', '2023-04-25 13:29:58', '', 'inlagg5-2', '', 'inherit', 'open', 'closed', '', 'inlagg5-2', '', '', '2023-04-25 15:29:58', '2023-04-25 13:29:58', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg5-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2023-04-25 15:29:59', '2023-04-25 13:29:59', '', 'inlagg5-amplify', 'flaska', 'inherit', 'open', 'closed', '', 'inlagg5-amplify', '', '', '2023-04-25 16:00:26', '2023-04-25 14:00:26', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/inlagg5-amplify.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2023-04-25 15:30:00', '2023-04-25 13:30:00', '', 'revive', 'energidryck', 'inherit', 'open', 'closed', '', 'revive', '', '', '2023-04-25 15:40:51', '2023-04-25 13:40:51', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/revive.webp', 0, 'attachment', 'image/webp', 0),
(125, 1, '2023-04-25 15:30:01', '2023-04-25 13:30:01', '', 'university-hoodie', '', 'inherit', 'open', 'closed', '', 'university-hoodie', '', '', '2023-04-25 15:30:01', '2023-04-25 13:30:01', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/university-hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2023-04-25 15:30:02', '2023-04-25 13:30:02', '', 'university-hoodie-2', 'hoodie', 'inherit', 'open', 'closed', '', 'university-hoodie-2', '', '', '2023-04-25 15:57:47', '2023-04-25 13:57:47', '', 0, 'http://localhost/webshop_grupp1/wp-content/uploads/2023/04/university-hoodie-2.webp', 0, 'attachment', 'image/webp', 0),
(127, 1, '2023-04-24 15:33:54', '2023-04-24 13:33:54', '<!-- wp:paragraph -->\n<p><strong>REVIVE - LEMONADE ENERGY DRINK&nbsp;</strong>&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'publish', 'open', 'open', '', 'nyhet-pa-gang', '', '', '2023-04-25 16:02:27', '2023-04-25 14:02:27', '', 0, 'http://localhost/webshop_grupp1/?p=127', 0, 'post', '', 0),
(128, 1, '2023-04-25 15:43:22', '2023-04-25 13:43:22', '<!-- wp:paragraph -->\n<p><strong>REVIVE - LEMONADE ENERGY DRINK&nbsp;</strong>&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>KOMMER VÅREN 2023!&nbsp;</strong>&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->', 'Nyhet på gång', '', 'inherit', 'closed', 'closed', '', '127-revision-v1', '', '', '2023-04-25 15:43:22', '2023-04-25 13:43:22', '', 127, 'http://localhost/webshop_grupp1/?p=128', 0, 'revision', '', 0),
(129, 1, '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 0, 'http://localhost/webshop_grupp1/?p=129', 0, 'post', '', 0),
(130, 1, '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 0, 'http://localhost/webshop_grupp1/?p=130', 0, 'post', '', 0),
(131, 1, '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 0, 'http://localhost/webshop_grupp1/?p=131', 0, 'post', '', 0),
(132, 1, '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:49:15', '2023-04-25 13:49:15', '', 0, 'http://localhost/webshop_grupp1/?p=132', 0, 'post', '', 0),
(133, 1, '2023-04-23 15:49:15', '2023-04-23 13:49:15', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen <img src="blob:http://localhost/2abbd175-51b1-4b23-911f-23cc3a7b24ab" alt="😁"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan <img src="blob:http://localhost/8ad6a7a3-dd0d-4bf9-b80d-63bd9274b7b8" alt="🤔"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna <img src="blob:http://localhost/f73616ca-fc12-49c6-b111-323ad9f67492" alt="✋🏻"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss <img alt="💦" src="blob:http://localhost/b26c4520-65b4-4380-95b0-8c78981de199">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går <img src="blob:http://localhost/e09eb51c-7ccd-4e5e-957b-4ab7c13c9202" alt="🙌🏻">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® <img src="blob:http://localhost/5e268d4b-e6e0-40ba-ad55-6abcb2dbd8ec" alt="🔥"><img src="blob:http://localhost/6a06f073-acfe-4a80-901d-86852ebc0232" alt="🇸🇪"><img src="blob:http://localhost/f8c7b9b8-ffa4-4676-bdc6-c7144af2a67b" alt="🔥"></p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'publish', 'open', 'open', '', 'tershine', '', '', '2023-04-25 16:02:07', '2023-04-25 14:02:07', '', 0, 'http://localhost/webshop_grupp1/?p=133', 0, 'post', '', 0),
(134, 1, '2023-04-25 15:52:37', '2023-04-25 13:52:37', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen <img src="blob:http://localhost/2abbd175-51b1-4b23-911f-23cc3a7b24ab" alt="😁"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan <img src="blob:http://localhost/8ad6a7a3-dd0d-4bf9-b80d-63bd9274b7b8" alt="🤔"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna <img src="blob:http://localhost/f73616ca-fc12-49c6-b111-323ad9f67492" alt="✋🏻"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss <img alt="💦" src="blob:http://localhost/b26c4520-65b4-4380-95b0-8c78981de199">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går <img src="blob:http://localhost/e09eb51c-7ccd-4e5e-957b-4ab7c13c9202" alt="🙌🏻"> </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® <img src="blob:http://localhost/5e268d4b-e6e0-40ba-ad55-6abcb2dbd8ec" alt="🔥"><img src="blob:http://localhost/6a06f073-acfe-4a80-901d-86852ebc0232" alt="🇸🇪"><img src="blob:http://localhost/f8c7b9b8-ffa4-4676-bdc6-c7144af2a67b" alt="🔥"></p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 15:52:37', '2023-04-25 13:52:37', '', 133, 'http://localhost/webshop_grupp1/?p=134', 0, 'revision', '', 0),
(135, 1, '2023-04-25 15:53:13', '2023-04-25 13:53:13', '<!-- wp:paragraph -->\n<p>På fredag firar 5 år av migthy gloss!&nbsp;<br>APC - Viol <img src="blob:http://localhost/ab48fc83-3c85-41e5-b798-585e47c51e57" alt="😁">Släpps kl 12:00 fredag <img src="blob:http://localhost/3e2f5872-59ce-40f4-97be-c4ee6c72afa5" alt="👌🏻"><img src="blob:http://localhost/f95c713b-1a9d-4de4-befa-96b355a0320e" alt="💜"><img src="blob:http://localhost/30f0dab2-7584-496b-b623-ffe0d879319a" alt="🇸🇪"><img src="blob:http://localhost/9a90cfd2-bc27-4a6c-9e4e-d3a897ef34d6" alt="💜"></p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'publish', 'open', 'open', '', 'nyhet-slapps-pa-fredag', '', '', '2023-04-25 16:01:39', '2023-04-25 14:01:39', '', 0, 'http://localhost/webshop_grupp1/?p=135', 0, 'post', '', 0),
(136, 1, '2023-04-25 15:54:48', '2023-04-25 13:54:48', '<!-- wp:paragraph -->\n<p>På fredag firar 5 år av migthy gloss! <br>APC - Viol <img src="blob:http://localhost/ab48fc83-3c85-41e5-b798-585e47c51e57" alt="😁">Släpps kl 12:00 fredag <img src="blob:http://localhost/3e2f5872-59ce-40f4-97be-c4ee6c72afa5" alt="👌🏻"><img src="blob:http://localhost/f95c713b-1a9d-4de4-befa-96b355a0320e" alt="💜"><img src="blob:http://localhost/30f0dab2-7584-496b-b623-ffe0d879319a" alt="🇸🇪"><img src="blob:http://localhost/9a90cfd2-bc27-4a6c-9e4e-d3a897ef34d6" alt="💜"></p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-25 15:54:48', '2023-04-25 13:54:48', '', 135, 'http://localhost/webshop_grupp1/?p=136', 0, 'revision', '', 0),
(137, 1, '2023-04-25 15:55:38', '2023-04-25 13:55:38', '<!-- wp:paragraph -->\n<p>På fredag firar 5 år av migthy gloss!&nbsp;<br>APC - Viol <img src="blob:http://localhost/ab48fc83-3c85-41e5-b798-585e47c51e57" alt="😁">Släpps kl 12:00 fredag <img src="blob:http://localhost/3e2f5872-59ce-40f4-97be-c4ee6c72afa5" alt="👌🏻"><img src="blob:http://localhost/f95c713b-1a9d-4de4-befa-96b355a0320e" alt="💜"><img src="blob:http://localhost/30f0dab2-7584-496b-b623-ffe0d879319a" alt="🇸🇪"><img src="blob:http://localhost/9a90cfd2-bc27-4a6c-9e4e-d3a897ef34d6" alt="💜"></p>\n<!-- /wp:paragraph -->', 'Nyhet släpps på fredag', '', 'inherit', 'closed', 'closed', '', '135-revision-v1', '', '', '2023-04-25 15:55:38', '2023-04-25 13:55:38', '', 135, 'http://localhost/webshop_grupp1/?p=137', 0, 'revision', '', 0),
(138, 1, '2023-04-25 15:55:47', '2023-04-25 13:55:47', '', 'Automatiskt utkast', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-25 15:55:47', '2023-04-25 13:55:47', '', 0, 'http://localhost/webshop_grupp1/?p=138', 0, 'post', '', 0),
(139, 1, '2023-04-19 15:56:11', '2023-04-19 13:56:11', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår supersnygga University Hoodie med riktigt välarbetad tershine-brodyr.<img src="blob:http://localhost/4ab67f2d-41cd-4385-95ff-71ad80266afa" alt="💦"><img src="blob:http://localhost/0472048c-5538-49a0-a497-f305c6454e3e" alt="🇸🇪"><img src="blob:http://localhost/2a059f29-0feb-4705-8ac4-8cf83db94427" alt="💦"></p>\n<!-- /wp:paragraph -->', 'Ny hoodie på G', '', 'publish', 'open', 'open', '', 'ny-hoodie-pa-g', '', '', '2023-04-25 15:58:48', '2023-04-25 13:58:48', '', 0, 'http://localhost/webshop_grupp1/?p=139', 0, 'post', '', 0),
(140, 1, '2023-04-25 15:57:18', '2023-04-25 13:57:18', '<!-- wp:paragraph -->\n<p>Halloj! </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Idag kl 10:00 kommer ett nytt drop på vår supersnygga University Hoodie med riktigt välarbetad tershine-brodyr.<img src="blob:http://localhost/4ab67f2d-41cd-4385-95ff-71ad80266afa" alt="💦"><img src="blob:http://localhost/0472048c-5538-49a0-a497-f305c6454e3e" alt="🇸🇪"><img src="blob:http://localhost/2a059f29-0feb-4705-8ac4-8cf83db94427" alt="💦"></p>\n<!-- /wp:paragraph -->', 'Ny hoodie på G', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2023-04-25 15:57:18', '2023-04-25 13:57:18', '', 139, 'http://localhost/webshop_grupp1/?p=140', 0, 'revision', '', 0),
(141, 1, '2023-04-25 15:58:24', '2023-04-25 13:58:24', '<!-- wp:paragraph -->\n<p>Välkommen till WordPress. Detta är ditt första inlägg. Du kan redigera det eller ta bort det. Sedan är det bara att börja skriva!</p>\n<!-- /wp:paragraph -->', 'Hej världen!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-04-25 15:58:24', '2023-04-25 13:58:24', '', 1, 'http://localhost/webshop_grupp1/?p=141', 0, 'revision', '', 0),
(142, 1, '2023-03-21 15:58:00', '2023-03-21 14:58:00', '<!-- wp:paragraph -->\n<p>Vilken helg <img alt="😅" src="blob:http://localhost/240595b7-561b-408c-b0f8-7286ae141461">Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var <img alt="😂" src="blob:http://localhost/38f0b038-e982-4ae6-b08a-e282414331bb">Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) <img alt="☺️" src="blob:http://localhost/edd1fe09-54bd-458a-87a4-afcce6ed43d3">Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar <img alt="😎" src="blob:http://localhost/c0613161-1131-4cee-ba2f-b78a5fa19ae7">Hoppas alla kommer gilla nya Purify S + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu <img src="blob:http://localhost/31fa59de-5708-44c8-bb2e-41790a2f5d20" alt="🍀">Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia <img src="blob:http://localhost/aa97c424-2c70-406c-a347-9bfcf7ab160c" alt="👍🏻">Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov <img src="blob:http://localhost/7d35b861-824c-47f0-a241-38fb7852f7c4" alt="👌🏻">Godnatt och tack åter igen för all kärlek ni ger oss <img src="blob:http://localhost/0f59ca3c-1dd1-430c-8b42-7f301bb5d1ba" alt="💚"><img src="blob:http://localhost/1f3d7db4-3d65-4d87-8da3-a807113cdfd1" alt="🇸🇪"><img src="blob:http://localhost/6eaf5662-fabf-4cc7-ba9f-aa538ccd48d3" alt="💚"></p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Purify S+', '', 'publish', 'open', 'open', '', 'kolla-in-var-nya-purify-s', '', '', '2023-04-25 16:00:41', '2023-04-25 14:00:41', '', 0, 'http://localhost/webshop_grupp1/?p=142', 0, 'post', '', 0),
(143, 1, '2023-04-25 16:00:41', '2023-04-25 14:00:41', '<!-- wp:paragraph -->\n<p>Vilken helg <img alt="😅" src="blob:http://localhost/240595b7-561b-408c-b0f8-7286ae141461">Ett stort stort tack till alla som besökte oss under helgen på Elmia, vilket sjukt drag det var <img alt="😂" src="blob:http://localhost/38f0b038-e982-4ae6-b08a-e282414331bb">Jag och grabbarna har nog aldrig varit såhär slutkörda (Black Friday all over) <img alt="☺️" src="blob:http://localhost/edd1fe09-54bd-458a-87a4-afcce6ed43d3">Jag hade tänkt att skriva något längre men just nu blir det försöka sova några timmar och imorgon sätter vi igång med att börja packa alla helgens ordrar <img alt="😎" src="blob:http://localhost/c0613161-1131-4cee-ba2f-b78a5fa19ae7">Hoppas alla kommer gilla nya Purify S + och vi varnar för längre leveranstider då vi ju som ni sett varit borta under fyra hela dagar!&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Det blev ju minst sagt bra drag efter världens första 100% biologiskt nedbrytbara och märkningsfria Wet Coat, så vi har galet många paket att ta tag i nu <img src="blob:http://localhost/31fa59de-5708-44c8-bb2e-41790a2f5d20" alt="🍀">Besök gärna er lokala gloss cave under morgondagen och plocka en flaska om ni inte redan beställt eller fick tag i den på Elmia <img src="blob:http://localhost/aa97c424-2c70-406c-a347-9bfcf7ab160c" alt="👍🏻">Kom också ihåg att less is more med Amplify, räcker till många många appliceringar och kan spädas efter behov <img src="blob:http://localhost/7d35b861-824c-47f0-a241-38fb7852f7c4" alt="👌🏻">Godnatt och tack åter igen för all kärlek ni ger oss <img src="blob:http://localhost/0f59ca3c-1dd1-430c-8b42-7f301bb5d1ba" alt="💚"><img src="blob:http://localhost/1f3d7db4-3d65-4d87-8da3-a807113cdfd1" alt="🇸🇪"><img src="blob:http://localhost/6eaf5662-fabf-4cc7-ba9f-aa538ccd48d3" alt="💚"></p>\n<!-- /wp:paragraph -->', 'Kolla in vår nya Purify S+', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2023-04-25 16:00:41', '2023-04-25 14:00:41', '', 142, 'http://localhost/webshop_grupp1/?p=143', 0, 'revision', '', 0),
(144, 1, '2023-04-25 16:02:07', '2023-04-25 14:02:07', '<!-- wp:paragraph -->\n<p>Tjingelongan, söndag igen <img src="blob:http://localhost/2abbd175-51b1-4b23-911f-23cc3a7b24ab" alt="😁"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Jag har egentligen inte massvis att dela med mig då mycket från förra söndagens inlägg inte riktigt blev av i veckan <img src="blob:http://localhost/8ad6a7a3-dd0d-4bf9-b80d-63bd9274b7b8" alt="🤔"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Men de produkter som är slut kommer fyllas på nu successivt framöver, så klicka gärna på fliken ”Bevaka” om något är slut så får ni en notis direkt när det finns åter.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kommande vecka har vi massa saker inplanerat, bland annat försöka färdigställa vår lilla butik så ni äntligen kan komma och shoppa på plats hos oss (för dom som önskar det).&nbsp;&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vi kommer också närvara på två event nästa helg, OKQ8 i Töre samt Mekonomen Karlstad (Wåxnäs). Så sladda gärna förbi på någon av dom om ni bor i krokarna <img src="blob:http://localhost/f73616ca-fc12-49c6-b111-323ad9f67492" alt="✋🏻"></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Annars är säsongen här och vi krigar på för fullt i Caven för att hinna få ut all glossy gloss <img alt="💦" src="blob:http://localhost/b26c4520-65b4-4380-95b0-8c78981de199">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Som vanligt, är det minsta fråga eller fundering så är det bara höra av sig så svarar vi så fort det bara går <img src="blob:http://localhost/e09eb51c-7ccd-4e5e-957b-4ab7c13c9202" alt="🙌🏻">&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>May the gloss be with you ® <img src="blob:http://localhost/5e268d4b-e6e0-40ba-ad55-6abcb2dbd8ec" alt="🔥"><img src="blob:http://localhost/6a06f073-acfe-4a80-901d-86852ebc0232" alt="🇸🇪"><img src="blob:http://localhost/f8c7b9b8-ffa4-4676-bdc6-c7144af2a67b" alt="🔥"></p>\n<!-- /wp:paragraph -->', 'Tershine ', '', 'inherit', 'closed', 'closed', '', '133-revision-v1', '', '', '2023-04-25 16:02:07', '2023-04-25 14:02:07', '', 133, 'http://localhost/webshop_grupp1/?p=144', 0, 'revision', '', 0),
(145, 1, '2023-04-25 16:09:59', '2023-04-25 14:09:59', '<!-- wp:paragraph -->\n<p><strong>Priser och betalning</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Varje vara anges med pris inklusive moms. I kundvagnen kan man se det totala priset inklusive alla avgifter, moms, frakt och betalning. Betalningsmetoder är Klarna, Swish, Kort.<br>Betalningsvillkor finns angiven i kundvagnen beroende av valt betalningssätt.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Ångerrätt</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Din ångerrätt (ångerfristen) gäller under 14 dagar. Självklart hoppas jag ni blir nöjda med mina produkter men skulle det vara några problem som uppstår så kontakta gärna mig på en gång så löser vi det.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Leveranser</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Normal leveranstid är 1-2 dagar. Leverans sker med Postnord eller DHL. Välj själv det dom passar just dig bäst!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><strong>Bytesrätt/Returer</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Returer sker på din egen bekostnad utom om varan är defekt eller om vi har packat fel. Returer ska skickas som brev eller paket, inte mot postförskott. Vid byten betalar jag den nya frakten från mig till dig. Byten går bra men meddela mig gärna först varför ni vill byta, så kan vi komma fram till en bra lösning. 14 dagars öppet köp!&nbsp;För försändelse som ej lösts ut och ej avbeställts utan gått i retur till&nbsp;tershine debiteras en avgift om f.n. 300 kr inkl. moms för att täcka frakt, returfrakt samt administration.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Se även konsumentverket och distansavtalslagen, samt EU:s gemensamma tvistlösningssida&nbsp;<a href="http://ec.europa.eu/odr" target="_blank" rel="noreferrer noopener">http://ec.europa.eu/odr</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Den 25 maj 2018 börjar den nya dataskyddsförordningen GDPR att gälla. Den ersätter den svenska personuppgiftslagen och gäller som lag i alla EU-länder. Alla företag, organisationer och myndigheter måste följa de nya reglerna. Det främsta syftet med dataskyddsförordningen är att förbättra skyddet för dig som kund hos oss när dina personuppgifter behandlas. Det innebär bland annat att du har rätt att få reda på hur vi använder den information som vi har om dig och i vilket syfte. Vi använder endast dina personuppgifter för att kunna skapa kvitton och skicka ut ordrar. Allting lagras via Shopify (webshops-lösningen) och du kan som kund när som helst begära ut alla uppgifter ur systemet. Uppgifter som lagras är följande:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Namn, adress, telefonnummer och eventuell mail-adress.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Köpvillkor', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-04-25 16:09:59', '2023-04-25 14:09:59', '', 50, 'http://localhost/webshop_grupp1/?p=145', 0, 'revision', '', 0) ;

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
(56, 4, 0),
(56, 16, 0),
(56, 35, 0),
(56, 37, 0),
(59, 4, 0),
(59, 16, 0),
(59, 36, 0),
(59, 37, 0),
(59, 38, 0),
(67, 2, 0),
(67, 16, 0),
(68, 4, 0),
(68, 16, 0),
(68, 36, 0),
(68, 37, 0),
(68, 38, 0),
(73, 2, 0),
(73, 16, 0),
(74, 4, 0),
(74, 17, 0),
(74, 26, 0),
(74, 27, 0),
(74, 32, 0),
(74, 33, 0),
(79, 4, 0),
(79, 19, 0),
(79, 20, 0),
(79, 23, 0),
(79, 24, 0),
(79, 25, 0),
(83, 4, 0),
(83, 19, 0),
(83, 21, 0),
(83, 23, 0),
(83, 24, 0),
(83, 25, 0),
(87, 2, 0),
(87, 18, 0),
(88, 2, 0),
(88, 18, 0),
(90, 2, 0),
(90, 18, 0),
(91, 2, 0),
(91, 18, 0),
(94, 2, 0),
(94, 18, 0),
(96, 2, 0),
(96, 18, 0),
(97, 2, 0),
(97, 18, 0),
(98, 4, 0),
(98, 18, 0),
(98, 26, 0),
(98, 27, 0),
(98, 28, 0),
(98, 29, 0),
(98, 30, 0),
(98, 31, 0),
(98, 32, 0),
(98, 35, 0),
(98, 37, 0),
(127, 39, 0),
(133, 40, 0),
(135, 39, 0),
(139, 39, 0),
(139, 41, 0),
(142, 39, 0),
(142, 40, 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'product_type', '', 0, 9),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 8),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 0),
(16, 16, 'product_cat', '', 0, 6),
(17, 17, 'product_cat', '', 0, 1),
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
(34, 34, 'product_cat', '', 17, 0),
(35, 35, 'pa_volym', '', 0, 3),
(36, 36, 'pa_volym', '', 0, 2),
(37, 37, 'pa_volym', '', 0, 5),
(38, 38, 'pa_volym', '', 0, 2),
(39, 39, 'category', '', 0, 4),
(40, 40, 'category', '', 0, 2),
(41, 41, 'category', '', 39, 1) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(41, 17, 'product_count_product_cat', '1'),
(42, 33, 'product_count_product_cat', '1'),
(43, 19, 'product_count_product_cat', '2'),
(44, 20, 'product_count_product_cat', '1'),
(45, 21, 'product_count_product_cat', '1'),
(46, 18, 'product_count_product_cat', '8') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


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
(41, 'Kläder', 'klader', 0) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sandra'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
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
(16, 1, 'session_tokens', 'a:2:{s:64:"0b46e3125f0ec304c147e5832493debb2f77db68ba05f90ee99673b9d91c11d2";a:4:{s:10:"expiration";i:1682508441;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1682335641;}s:64:"6a0591b4e37386fa30c29452299db512af78d2b7613f31bc9ee35abe5435f027";a:4:{s:10:"expiration";i:1682577898;s:2:"ip";s:3:"::1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/112.0.0.0 Safari/537.36";s:5:"login";i:1682405098;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 2, 'nickname', 'carro'),
(19, 2, 'first_name', ''),
(20, 2, 'last_name', ''),
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
(31, 2, 'dismissed_wp_pointers', ''),
(32, 3, 'nickname', 'elin'),
(33, 3, 'first_name', ''),
(34, 3, 'last_name', ''),
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
(47, 4, 'first_name', ''),
(48, 4, 'last_name', ''),
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
(59, 4, 'dismissed_wp_pointers', ''),
(60, 1, '_woocommerce_tracks_anon_id', 'woo:0+bG9ghKa7iLibRTzGGNq3xa'),
(61, 1, 'last_update', '1682409829'),
(62, 1, 'woocommerce_admin_task_list_tracked_started_tasks', '{"tax":1}'),
(63, 1, 'wc_last_active', '1682380800'),
(64, 1, 'meta-box-order_product', 'a:3:{s:4:"side";s:84:"submitdiv,postimagediv,woocommerce-product-images,product_catdiv,tagsdiv-product_tag";s:6:"normal";s:55:"woocommerce-product-data,postcustom,slugdiv,postexcerpt";s:8:"advanced";s:0:"";}'),
(65, 1, 'wp_user-settings', 'libraryContent=browse'),
(66, 1, 'wp_user-settings-time', '1682413968') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sandra', '$P$B1zhIl7wltREcbN1U1Z0hiU0MYnZ8m1', 'sandra', 'sandra.hostkannerberg@medieinstitutet.se', 'http://localhost/webshop_grupp1', '2023-04-24 11:27:03', '', 0, 'sandra'),
(2, 'carro', '$P$ByNNK/PmVC.FaQ1ZxZZlD2LnzPicyp/', 'carro', 'andersson.carolina@medieinstitutet.se', '', '2023-04-25 07:07:31', '1682406452:$P$BZSyuqUniRX7idwVZeBJASJRXqwtwJ.', 0, 'carro'),
(3, 'elin', '$P$BpG3jIh38WT8glMorUVhtjCUGuGdGA1', 'elin', 'elin.robertsson@medieinstitutet.se', '', '2023-04-25 07:09:12', '1682406552:$P$BsAU/XSz6DYOEAy.OgDQ09rE/r6ezS0', 0, 'elin'),
(4, 'linus', '$P$B/63NHuWICKQFygyf8TRQx.p53x3Nz0', 'linus', 'linus.lundell@medieinstitutet.se', '', '2023-04-25 07:18:55', '1682407135:$P$BSiKI/jRzopdOVjiv4At5say0PDbph0', 0, 'linus') ;

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
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_admin_note_actions`
#
INSERT INTO `wp_wc_admin_note_actions` ( `action_id`, `note_id`, `name`, `label`, `query`, `status`, `actioned_text`, `nonce_action`, `nonce_name`) VALUES
(60, 50, 'notify-refund-returns-page', 'Edit page', 'http://localhost/webshop_grupp1/wp-admin/post.php?post=50&action=edit', 'actioned', '', NULL, NULL),
(120, 51, 'connect', 'Connect', '?page=wc-addons&section=helper', 'unactioned', '', NULL, NULL),
(180, 52, 'customize-store-with-storefront', 'Let\'s go!', 'http://localhost/webshop_grupp1/wp-admin/themes.php?page=storefront-welcome', 'actioned', '', NULL, NULL),
(358, 1, 'browse_extensions', 'Browse extensions', 'http://localhost/webshop_grupp1/wp-admin/admin.php?page=wc-addons', 'unactioned', '', NULL, NULL),
(359, 2, 'wayflyer_bnpl_q4_2021', 'Level up with funding', 'https://woocommerce.com/products/wayflyer/?utm_source=inbox_note&utm_medium=product&utm_campaign=wayflyer_bnpl_q4_2021', 'actioned', '', NULL, NULL),
(360, 3, 'wc_shipping_mobile_app_usps_q4_2021', 'Get WooCommerce Shipping', 'https://woocommerce.com/woocommerce-shipping/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc_shipping_mobile_app_usps_q4_2021', 'actioned', '', NULL, NULL),
(361, 4, 'learn-more', 'Learn more', 'https://docs.woocommerce.com/document/woocommerce-shipping-and-tax/?utm_source=inbox', 'unactioned', '', NULL, NULL),
(362, 5, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/ecommerce-shipping-solutions-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'actioned', '', NULL, NULL),
(363, 6, 'optimizing-the-checkout-flow', 'Learn more', 'https://woocommerce.com/posts/optimizing-woocommerce-checkout?utm_source=inbox_note&utm_medium=product&utm_campaign=optimizing-the-checkout-flow', 'actioned', '', NULL, NULL),
(364, 7, 'qualitative-feedback-from-new-users', 'Share feedback', 'https://automattic.survey.fm/wc-pay-new', 'actioned', '', NULL, NULL),
(365, 8, 'share-feedback', 'Share feedback', 'http://automattic.survey.fm/paypal-feedback', 'unactioned', '', NULL, NULL),
(366, 9, 'get-started', 'Get started', 'https://woocommerce.com/products/google-listings-and-ads?utm_source=inbox_note&utm_medium=product&utm_campaign=get-started', 'actioned', '', NULL, NULL),
(367, 10, 'update-wc-subscriptions-3-0-15', 'View latest version', 'http://localhost/webshop_grupp1/wp-admin/&page=wc-addons&section=helper', 'actioned', '', NULL, NULL),
(368, 11, 'update-wc-core-5-4-0', 'How to update WooCommerce', 'https://docs.woocommerce.com/document/how-to-update-woocommerce/', 'actioned', '', NULL, NULL),
(369, 14, 'ppxo-pps-install-paypal-payments-1', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(370, 15, 'ppxo-pps-install-paypal-payments-2', 'View upgrade guide', 'https://docs.woocommerce.com/document/woocommerce-paypal-payments/paypal-payments-upgrade-guide/', 'actioned', '', NULL, NULL),
(371, 16, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(372, 16, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(373, 17, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(374, 17, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(375, 18, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(376, 18, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(377, 19, 'learn-more', 'Learn more', 'https://woocommerce.com/posts/critical-vulnerability-detected-july-2021/?utm_source=inbox_note&utm_medium=product&utm_campaign=learn-more', 'unactioned', '', NULL, NULL),
(378, 19, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(379, 20, 'share-feedback', 'Share feedback', 'https://automattic.survey.fm/store-management', 'unactioned', '', NULL, NULL),
(380, 21, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(381, 21, 'woocommerce-core-paypal-march-2022-dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(382, 22, 'learn-more', 'Learn more', 'https://developer.woocommerce.com/2022/03/10/woocommerce-3-5-10-6-3-1-security-releases/', 'unactioned', '', NULL, NULL),
(383, 22, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(384, 23, 'pinterest_03_2022_update', 'Update Instructions', 'https://woocommerce.com/document/pinterest-for-woocommerce/?utm_source=inbox_note&utm_medium=product&utm_campaign=pinterest_03_2022_update#section-3', 'actioned', '', NULL, NULL),
(385, 24, 'store_setup_survey_survey_q2_2022_share_your_thoughts', 'Tell us how it’s going', 'https://automattic.survey.fm/store-setup-survey-2022', 'actioned', '', NULL, NULL),
(386, 25, 'wc-admin-wisepad3', 'Grow my business offline', 'https://woocommerce.com/products/wisepad3-card-reader/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wisepad3', 'actioned', '', NULL, NULL),
(387, 26, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(388, 26, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(389, 27, 'learn-more', 'Find out more', 'https://developer.woocommerce.com/2022/08/09/woocommerce-payments-3-9-4-4-5-1-security-releases/', 'unactioned', '', NULL, NULL),
(390, 27, 'dismiss', 'Dismiss', '', 'actioned', '', NULL, NULL),
(391, 28, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'Learn more', 'https://woocommerce.com/document/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_custom_attribute_mapping_q4_2022#attribute-mapping', 'actioned', '', NULL, NULL),
(392, 29, 'needs-update-eway-payment-gateway-rin-action-button-2022-12-20', 'See available updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(393, 29, 'needs-update-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(394, 30, 'updated-eway-payment-gateway-rin-action-button-2022-12-20', 'See all updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(395, 30, 'updated-eway-payment-gateway-rin-dismiss-button-2022-12-20', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(396, 31, 'share-navigation-survey-feedback', 'Share feedback', 'https://automattic.survey.fm/new-ecommerce-plan-navigation', 'actioned', '', NULL, NULL),
(397, 32, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'Boost my business with Google', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_no_gla', 'actioned', '', NULL, NULL),
(398, 33, 'google_listings_ads_pmax_i1_q1_2023_with_gla', 'Create a new ad', 'https://woocommerce.com/products/google-listings-and-ads/?utm_source=inbox_note&utm_medium=product&utm_campaign=google_listings_ads_pmax_i1_q1_2023_with_gla', 'actioned', '', NULL, NULL),
(399, 34, 'woocommerce-wcpay-march-2023-update-needed-button', 'See Blog Post', 'https://developer.woocommerce.com/2023/03/23/critical-vulnerability-detected-in-woocommerce-payments-what-you-need-to-know', 'unactioned', '', NULL, NULL),
(400, 34, 'woocommerce-wcpay-march-2023-update-needed-dismiss-button', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(401, 35, 'tap_to_pay_iphone_q2_2023_no_wcpay', 'Simplify my payments', 'https://woocommerce.com/products/woocommerce-payments/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_no_wcpay', 'actioned', '', NULL, NULL),
(402, 36, 'tap_to_pay_iphone_q2_2023_with_wcpay', 'Set up Tap to Pay on iPhone', 'https://woocommerce.com/document/woocommerce-payments/in-person-payments/woocommerce-in-person-payments-tap-to-pay-on-iphone-quick-start-guide/?utm_source=inbox_note&utm_medium=product&utm_campaign=tap_to_pay_iphone_q2_2023_with_wcpay', 'actioned', '', NULL, NULL),
(403, 37, 'extension-settings', 'See available updates', 'http://localhost/webshop_grupp1/wp-admin/update-core.php', 'unactioned', '', NULL, NULL),
(404, 37, 'dismiss', 'Dismiss', '#', 'actioned', '', NULL, NULL),
(405, 38, 'wc-admin-wcpay-denmark-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/denmark/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-denmark-Q2-2023', 'actioned', '', NULL, NULL),
(406, 39, 'wc-admin-wcpay-greece-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/greece/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-greece-Q2-2023', 'actioned', '', NULL, NULL),
(407, 40, 'wc-admin-wcpay-norway-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/norway/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-norway-Q2-2023', 'actioned', '', NULL, NULL),
(408, 41, 'wc-admin-wcpay-slovakia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovakia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovakia-Q2-2023', 'actioned', '', NULL, NULL),
(409, 42, 'wc-admin-wcpay-finland-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/finland/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-finland-Q2-2023', 'actioned', '', NULL, NULL),
(410, 43, 'wc-admin-wcpay-estonia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/estonia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-estonia-Q2-2023', 'actioned', '', NULL, NULL),
(411, 44, 'wc-admin-wcpay-lithuania-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/lithuania/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-lithuania-Q2-2023', 'actioned', '', NULL, NULL),
(412, 45, 'wc-admin-wcpay-slovenia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/slovenia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-slovenia-Q2-2023', 'actioned', '', NULL, NULL),
(413, 46, 'wc-admin-wcpay-latvia-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/latvia/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-latvia-Q2-2023', 'actioned', '', NULL, NULL),
(414, 47, 'wc-admin-wcpay-cyprus-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/cyprus/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-cyprus-Q2-2023', 'actioned', '', NULL, NULL),
(415, 48, 'wc-admin-wcpay-malta-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/malta/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-malta-Q2-2023', 'actioned', '', NULL, NULL),
(416, 49, 'wc-admin-wcpay-luxembourg-Q2-2023', 'Simplify my payments', 'https://woocommerce.com/payments/luxembourg/?utm_source=inbox_note&utm_medium=product&utm_campaign=wc-admin-wcpay-luxembourg-Q2-2023', 'actioned', '', NULL, NULL) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_admin_notes`
#
INSERT INTO `wp_wc_admin_notes` ( `note_id`, `name`, `type`, `locale`, `title`, `content`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`, `layout`, `image`, `is_deleted`, `is_read`, `icon`) VALUES
(1, 'new_in_app_marketplace_2021', 'info', 'en_US', 'Customize your store with extensions', 'Check out our NEW Extensions tab to see our favorite extensions for customizing your store, and discover the most popular extensions in the WooCommerce Marketplace.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(2, 'wayflyer_bnpl_q4_2021', 'marketing', 'en_US', 'Grow your business with funding through Wayflyer', 'Fast, flexible financing to boost cash flow and help your business grow – one fee, no interest rates, penalties, equity, or personal guarantees. Based on your store’s performance, Wayflyer provides funding and analytical insights to invest in your business.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(3, 'wc_shipping_mobile_app_usps_q4_2021', 'marketing', 'en_US', 'Print and manage your shipping labels with WooCommerce Shipping and the WooCommerce Mobile App', 'Save time by printing, purchasing, refunding, and tracking shipping labels generated by <a href="https://woocommerce.com/woocommerce-shipping/">WooCommerce Shipping</a> – all directly from your mobile device!', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(4, 'woocommerce-services', 'info', 'en_US', 'WooCommerce Shipping & Tax', 'WooCommerce Shipping &amp; Tax helps get your store "ready to sell" as quickly as possible. You create your products. We take care of tax calculation, payment processing, and shipping label printing! Learn more about the extension that you just installed.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(5, 'your-first-product', 'info', 'en_US', 'Your first product', 'That’s huge! You’re well on your way to building a successful online store — now it’s time to think about how you’ll fulfill your orders.<br /><br />Read our shipping guide to learn best practices and options for putting together your shipping strategy. And for WooCommerce stores in the United States, you can print discounted shipping labels via USPS with <a href="https://href.li/?https://woocommerce.com/shipping" target="_blank">WooCommerce Shipping</a>.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 14:13:53', NULL, 0, 'plain', '', 0, 0, 'info'),
(6, 'wc-admin-optimizing-the-checkout-flow', 'info', 'en_US', 'Optimizing the checkout flow', 'It’s crucial to get your store’s checkout as smooth as possible to avoid losing sales. Let’s take a look at how you can optimize the checkout experience for your shoppers.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
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
(24, 'store_setup_survey_survey_q2_2022', 'survey', 'en_US', 'How is your store setup going?', 'Our goal is to make sure you have all the right tools to start setting up your store in the smoothest way possible.\r\nWe’d love to know if we hit our mark and how we can improve. To collect your thoughts, we made a 2-minute survey.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(25, 'wc-admin-wisepad3', 'marketing', 'en_US', 'Take your business on the go in Canada with WooCommerce In-Person Payments', 'Quickly create new orders, accept payment in person for orders placed online, and automatically sync your inventory – no matter where your business takes you. With WooCommerce In-Person Payments and the WisePad 3 card reader, you can bring the power of your store anywhere.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(26, 'woocommerce-payments-august-2022-need-to-update', 'update', 'en_US', 'Action required: Please update WooCommerce Payments', 'An updated secure version of WooCommerce Payments is available – please ensure that you’re using the latest patch version. For more information on what action you need to take, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(27, 'woocommerce-payments-august-2022-store-patched', 'update', 'en_US', 'WooCommerce Payments has been automatically updated', 'You’re now running the latest secure version of WooCommerce Payments. We’ve worked with the WordPress Plugins team to deploy a security update to stores running WooCommerce Payments (version 3.9 to 4.5). For further information, please review the article below.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(28, 'google_listings_ads_custom_attribute_mapping_q4_2022', 'marketing', 'en_US', 'Our latest improvement to the Google Listings & Ads extension: Attribute Mapping', 'You spoke, we listened. This new feature enables you to easily upload your products, customize your product attributes in one place, and target shoppers with more relevant ads. Extend how far your ad dollars go with each campaign.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(29, 'needs-update-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'Security vulnerability patched in WooCommerce Eway Gateway', 'In response to a potential vulnerability identified in WooCommerce Eway Gateway versions 3.1.0 to 3.5.0, we’ve worked to deploy security fixes and have released an updated version.\r\nNo external exploits have been detected, but we recommend you update to your latest supported version 3.1.26, 3.2.3, 3.3.1, 3.4.6, or 3.5.1', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(30, 'updated-eway-payment-gateway-rin-2022-12-20', 'update', 'en_US', 'WooCommerce Eway Gateway has been automatically updated', 'Your store is now running the latest secure version of WooCommerce Eway Gateway. We worked with the WordPress Plugins team to deploy a software update to stores running WooCommerce Eway Gateway (versions 3.1.0 to 3.5.0) in response to a security vulnerability that was discovered.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(31, 'ecomm-wc-navigation-survey-2023', 'info', 'en_US', 'Navigating WooCommerce on WordPress.com', 'We are improving the WooCommerce navigation on WordPress.com and would love your help to make it better! Please share your experience with us in this 2-minute survey.', '[]', 'pending', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
(32, 'google_listings_ads_pmax_i1_q1_2023_no_gla', 'marketing', 'en_US', 'Create more engaging ads – without the hard work', 'Get in front of millions of shoppers searching for products like yours with Google Listings &amp; Ads. With new customization features, Google automatically tests multiple combinations of text and images to create the most engaging ad to boost your business. Plus, get up to $500 in ad credit – terms and conditions apply.', '[]', 'unactioned', 'woocommerce.com', '2023-04-25 07:56:24', NULL, 0, 'plain', '', 0, 0, 'info'),
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
(52, 'storefront-customize', 'info', 'en_US', 'Design your store with Storefront 🎨', 'Visit the Storefront settings page to start setup and customization of your shop.', '[]', 'unactioned', 'storefront', '2023-04-25 08:01:28', NULL, 0, 'plain', '', 0, 1, 'info') ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wc_customer_lookup`
#

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
(51, '', 0, 0, '249.0000', '1298.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(53, 'purifysplus-5L', 0, 0, '1298.0000', '1298.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(54, 'purifysplus-500ml', 0, 0, '249.0000', '249.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(56, '', 0, 0, '298.0000', '1498.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(57, 'purifys-5L', 0, 0, '1498.0000', '1498.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(58, 'purifys-500ml', 0, 0, '298.0000', '298.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(59, '', 0, 0, '189.0000', '598.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(61, 'elevate-5L', 0, 0, '598.0000', '598.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(63, 'elevate-1L', 0, 0, '189.0000', '189.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(67, 'visionglas', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(68, '', 0, 0, '129.0000', '1695.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(69, 'extract-1L', 0, 0, '129.0000', '129.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(70, 'extract-25L', 0, 0, '1695.0000', '1695.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(71, 'extract-5L', 0, 0, '395.0000', '395.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(73, 'refined', 0, 0, '198.0000', '198.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(74, '', 0, 0, '29.0000', '29.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(75, 'airfreshener-äpple', 0, 0, '29.0000', '29.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(76, 'airfreshener-jordgubb', 0, 0, '29.0000', '29.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(77, 'airfreshener-vanilj', 0, 0, '29.0000', '29.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(79, '', 0, 0, '498.0000', '498.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(80, 'hoodie-large', 0, 0, '498.0000', '498.0000', 0, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(81, 'hoodie-medium', 0, 0, '498.0000', '498.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(82, 'hoodie-small', 0, 0, '498.0000', '498.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(83, '', 0, 0, '259.0000', '349.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(84, 'tshirt-large', 0, 0, '349.0000', '349.0000', 0, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(85, 'tshirt-medium', 0, 0, '259.0000', '259.0000', 1, '9', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(86, 'tshirt-small', 0, 0, '259.0000', '259.0000', 1, '8', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(87, 'washbucket', 0, 0, '349.0000', '349.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(88, '', 0, 0, '29.0000', '29.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(90, '', 0, 0, '25.0000', '25.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(91, 'torkduk', 0, 0, '249.0000', '249.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(94, 'spraypump-petroleum', 0, 0, '295.0000', '295.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(96, 'spraypump-akalisk', 0, 0, '249.0000', '249.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(97, 'applicator', 0, 0, '49.0000', '49.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', ''),
(98, '', 0, 0, '179.0000', '898.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', ''),
(99, 'apc-äpple-5L', 0, 0, '898.0000', '898.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(103, 'apc-melon-5L', 0, 0, '898.0000', '898.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(106, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(107, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(108, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(109, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(110, '', 0, 0, '0.0000', '0.0000', 0, NULL, 'instock', 0, '0.00', 0, 'taxable', 'parent'),
(112, 'apc-viol', 0, 0, '179.0000', '179.0000', 0, '10', 'instock', 0, '0.00', 0, 'taxable', 'parent') ;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_api_keys`
#

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_order_itemmeta`
#

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_order_items`
#

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_sessions`
#
INSERT INTO `wp_woocommerce_sessions` ( `session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:783:"a:27:{s:2:"id";s:1:"1";s:13:"date_modified";s:25:"2023-04-25T10:03:49+02:00";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"SE";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"SE";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:40:"sandra.hostkannerberg@medieinstitutet.se";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";s:14:"shipping_phone";s:0:"";}";}', 1682582697) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_woocommerce_shipping_zone_methods`
#
INSERT INTO `wp_woocommerce_shipping_zone_methods` ( `zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(1, 2, 'flat_rate', 2, 1) ;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_wpgmza`
#
INSERT INTO `wp_wpgmza` ( `id`, `map_id`, `address`, `description`, `pic`, `link`, `icon`, `lat`, `lng`, `anim`, `title`, `infoopen`, `category`, `approved`, `retina`, `type`, `did`, `sticky`, `other_data`, `latlng`, `layergroup`) VALUES
(1, 1, 'California', '', '', '', '', '36.778261', '-119.4179323999', '', '', '', '', 1, 0, 0, '', 0, '', '\0\0\0\0\0\0\0J`s�cB@�`�g��]�', 0) ;

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
(1, 'Min första karta', '100', '400', '45.950464398418106', '-109.81550500000003', '45.950464398418106,-109.81550500000003', 4, '', 0, 4, 0, 0, '', 0, '', 0, 0, 0, '', 0, 0, 0, 0, 0, '', '%', 'px', 0, 0, 0, 0, 0, '', 'a:6:{s:8:"map_type";i:1;s:15:"sl_stroke_color";s:7:"#FF0000";s:13:"sl_fill_color";s:7:"#FF0000";s:17:"sl_stroke_opacity";i:1;s:15:"sl_fill_opacity";d:0.5;s:15:"transport_layer";N;}') ;

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

