<?php

/**
 * Plugin Name: Our own drone shipping
 * Author: Group One
 * Description: Our own shipping method, drone.
 * Version: 0.0.1
 */

add_action('woocommerce_shipping_init', 'our_own_drone_shipping_init');

function our_own_drone_shipping_init()
{

    if (!class_exists('WC_OUR_OWN_DRONE_SHIPPING')) {

        class WC_OUR_OWN_DRONE_SHIPPING extends WC_Shipping_Method
        {

            public function __construct()
            {
                $this->id = 'our_own_drone_shipping'; // Id for your shipping method. Should be uunique.
                $this->method_title = __('Frakt Drönare'); // Title shown in admin
                $this->method_description = __('Frakt via drönare'); // Description shown in admin
                $this->enabled = "yes"; // This can be added as an setting but for this example its forced enabled
                $this->title = "Frakt med drönare"; // This can be added as an setting but for this example its forced.
                $this->init();
            }

            public function init()
            {
                //Load settings API
                $this->init_form_fields(); // This is part of the settings API. Override the method to add your own settings
                $this->init_settings(); // This is part of the settings API. Loads settings you previously init.

                //Save settings in admin if you have any defined
                add_action('woocommerce_update_options_shipping_' . $this->id, array($this, 'process_admin_options'));
            }

            function init_form_fields()
            {
                $this->form_fields = array(
                    'enabled' => array(
                        'title' => __('Frakt med drönare aktiverat', 'drönare'),
                        'type' => 'checkbox',
                        'default' => 'no'
                    ),
                    'weight' => array(
                        'title' => __('Maxvikt (kg)', 'drönare'),
                        'type' => 'number',
                        'default' => 10
                    ),
                    'title' => array(
                        'title' => __('Titel', 'drönare'),
                        'type' => 'text',
                        'default' => __('Frakt Drönare')
                    ),
                    'distance' => array(
                        'title' => __('Maximalt avstånd (km)', 'drönare'),
                        'type' => 'number',
                        'default' => 10
                    ),
                    'cost_per_km' => array(
                        'title' => __('Kostnad per km (kr)', 'drönare'),
                        'type' => 'number',
                        'default' => 10
                    ),
                );
            }
            public function calculate_shipping($package = array())
            {

                $weight = 0;
                $cost = 199;
                $drone_Shipping_Method = new WC_OUR_OWN_DRONE_SHIPPING();
                $weightLimit = (int)$drone_Shipping_Method->settings['weight'];
                //////////////////////////////////
                $distanceLimit = (int)$drone_Shipping_Method->settings['distance'];
                $distance = 0;
                $destination = WC()->customer->get_shipping_postcode() . ' ' . WC()->customer->get_shipping_city() . ' ' . WC()->customer->get_shipping_address_1();
                $origin = 'Arenavägen 35, 121 77 Stockholm, Sweden'; // Replace with your store address
                $response = wp_remote_get('https://maps.googleapis.com/maps/api/distancematrix/json?origins=' . urlencode($origin) . '&destinations=' . urlencode($destination) . '&mode=driving&key=AIzaSyD8xjMrbRu4RvUrKCDCTzukOE-IwRCimVQ&q='); // Replace with your Google Maps API key

                if (!is_wp_error($response)) {
                    $body = json_decode(wp_remote_retrieve_body($response), true);
                    if ($body['status'] == 'OK' && isset($body['rows'][0]['elements'][0]['distance']['value'])) {
                        $distance = round($body['rows'][0]['elements'][0]['distance']['value'] / 1000, 1);
                    }
                }
                ///////////////////////////////////////

                foreach ($package['contents'] as $values) {
                    $_product = $values['data'];
                    $weight = $weight + $_product->get_weight() * $values['quantity'];
                }

                $weight = wc_get_weight($weight, 'kg');
                $medium = 79;
                $heavy = 99;
                if ($weight <= 1) {
                    $cost = 199;
                } elseif ($weight <= 2) {
                    $cost += $medium;
                } elseif ($weight > 2) {
                    $cost += $heavy;
                }
                ////////////////////////////////////////

                $distanceCost = $distance * 10;

                // if ($distance > $distanceLimit) {
                //     $cost = -1; // Set the cost to a negative number to indicate that the shipping method is not available
                // } else {
                //     $cost += $distanceCost;
                // }
                /////////////////////////////////
                // Define an array of shipping rates
                $rate = array(
                    'id' => $this->id,
                    'label' => $this->title,
                    'cost' => $cost += $distanceCost,
                );
                // Register each rate using the add_rate() method
                if (!$weight > $weightLimit) {
                    // echo "För hög vikt för detta fraktalternativ";
                } else {
                    $this->add_rate($rate);
                }
            }
        }
    }
}

add_filter('woocommerce_shipping_methods', 'add_our_own_drone_shipping_method');

function add_our_own_drone_shipping_method($methods)
{
    $methods['our_own_drone_shipping'] = 'WC_OUR_OWN_DRONE_SHIPPING';
    return $methods;
}
