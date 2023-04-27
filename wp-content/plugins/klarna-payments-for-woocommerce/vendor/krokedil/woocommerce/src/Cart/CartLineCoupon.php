<?php
/**
 * Cart line coupon.
 *
 * @package Krokedil/WooCommerce/Classes/Cart
 */

namespace Krokedil\WooCommerce\Cart;

use Krokedil\WooCommerce\OrderLineData;
use _PHPStan_503e82092\Nette\NotImplementedException;

defined( 'ABSPATH' ) || exit;

/**
 * Cart line coupon class.
 */
class CartLineCoupon extends OrderLineData {

	/**
	 * Filter prefix.
	 *
	 * @var mixed
	 */
	public $filter_prefix = 'cart_line_coupon';

	/**
	 * Set coupon data from Smart coupons.
	 *
	 * @param string $coupon_key Coupon key.
	 *
	 * @return void
	 */
	public function set_smart_coupon_data( $coupon_key ) {
		$coupon_amount     = WC()->cart->get_coupon_discount_amount( $coupon_key ) * -1;
		$coupon_tax_amount = 0;
		$coupon_name       = 'Discount';

		$this->name                = "$coupon_name $coupon_key";
		$this->reference           = substr( strval( $coupon_reference ), 0, 64 );
		$this->quantity            = 1;
		$this->unit_price          = $this->format_price( $coupon_amount );
		$this->subtotal_unit_price = $this->format_price( $coupon_amount );
		$this->total_amount        = $this->format_price( $coupon_amount );
		$this->total_tax_amount    = $this->format_price( $coupon_tax_amount );
		$this->tax_rate            = 0;
		$this->type                = 'discount';
	}

	/**
	 * Set the data from WC_Gift_Card plugin.
	 *
	 * @param WC_GC_Gift_Card_Data $wc_gift_card_data WC Giftcard data.
	 *
	 * @return void
	 */
	public function set_wc_gc_data( $wc_gift_card_data ) {
		$code              = $wc_gift_card_data['giftcard']->get_data()['code'];
		$coupon_amount     = $wc_gift_card_data['amount'] * -1;
		$coupon_tax_amount = 0;
		$coupon_name       = 'Gift card';

		$this->name                = "$coupon_name $code";
		$this->reference           = 'gift_card';
		$this->quantity            = 1;
		$this->unit_price          = $this->format_price( $coupon_amount );
		$this->subtotal_unit_price = $this->format_price( $coupon_amount );
		$this->total_amount        = $this->format_price( $coupon_amount );
		$this->total_tax_amount    = $this->format_price( $coupon_tax_amount );
		$this->tax_rate            = 0;
		$this->type                = 'gift_card';
	}

	/**
	 * Set the data from the YITH WooCommerce Gift Cards plugin.
	 *
	 * @param string $code YITH Giftcard code.
	 *
	 * @return void
	 */
	public function set_yith_wc_gc_data( $code ) {
		$coupon_amount     = isset( WC()->cart->applied_gift_cards_amounts[ $gift_card_code ] ) ?
							        WC()->cart->applied_gift_cards_amounts[ $gift_card_code ] : 0 * -1;
		$coupon_tax_amount = 0;
		$coupon_name       = 'Gift card';

		$this->name                = "$coupon_name $code";
		$this->reference           = 'gift_card';
		$this->quantity            = 1;
		$this->unit_price          = $this->format_price( $coupon_amount );
		$this->subtotal_unit_price = $this->format_price( $coupon_amount );
		$this->total_amount        = $this->format_price( $coupon_amount );
		$this->total_tax_amount    = $this->format_price( $coupon_tax_amount );
		$this->tax_rate            = 0;
		$this->type                = 'gift_card';
	}

	/**
	 * Set the data from the PW Giftcard plugin.
	 *
	 * @param string $code PW Giftcard code.
	 * @param string $amount PW Giftcard amount.
	 *
	 * @return void
	 */
	public function set_pw_giftcards_data( $code, $amount ) {
		$coupon_amount     = $amount * -1;
		$coupon_tax_amount = 0;
		$coupon_name       = 'Gift card';

		$this->name                = "$coupon_name $code";
		$this->reference           = 'gift_card';
		$this->quantity            = 1;
		$this->unit_price          = $this->format_price( $coupon_amount );
		$this->subtotal_unit_price = $this->format_price( $coupon_amount );
		$this->total_amount        = $this->format_price( $coupon_amount );
		$this->total_tax_amount    = $this->format_price( $coupon_tax_amount );
		$this->tax_rate            = 0;
		$this->type                = 'gift_card';
	}

	/**
	 * Function to set product name
	 * @return void
	 */
	public function set_name() {
		throw new NotImplementedException( 'set_name' );
	}

	/**
	 * Function to set product sku
	 * @return void
	 */
	public function set_sku() {
		throw new NotImplementedException( 'set_sku' );
	}

	/**
	 * Function to set product quantity
	 * @return void
	 */
	public function set_quantity() {
		throw new NotImplementedException( 'set_quantity' );
	}

	/**
	 * Function to set product unit price
	 * @return void
	 */
	public function set_unit_price() {
		throw new NotImplementedException( 'set_unit_price' );
	}

	/**
	 * Function to set product subtotal unit price
	 * @return void
	 */
	public function set_subtotal_unit_price() {
		throw new NotImplementedException( 'set_subtotal_unit_price' );
	}

	/**
	 * Function to set product tax rate
	 * @return void
	 */
	public function set_tax_rate() {
		throw new NotImplementedException( 'set_tax_rate' );
	}

	/**
	 * Function to set product total amount
	 * @return void
	 */
	public function set_total_amount() {
		throw new NotImplementedException( 'set_total_amount' );
	}

	/**
	 * Function to set product subtotal amount
	 * @return void
	 */
	public function set_subtotal_amount() {
		throw new NotImplementedException( 'set_subtotal_amount' );
	}

	/**
	 * Function to set product total discount amount
	 * @return void
	 */
	public function set_total_discount_amount() {
		throw new NotImplementedException( 'set_total_discount_amount' );
	}

	/**
	 * Abstract function to set product total discount tax amount
	 * @return void
	 */
	public function set_total_discount_tax_amount() {
		throw new NotImplementedException( 'set_total_discount_tax_amount' );
	}

	/**
	 * Function to set product total tax amount
	 * @return void
	 */
	public function set_total_tax_amount() {
		throw new NotImplementedException( 'set_total_tax_amount' );
	}

	/**
	 * Function to set product subtotal tax amount
	 * @return void
	 */
	public function set_subtotal_tax_amount() {
		throw new NotImplementedException( 'set_subtotal_tax_amount' );
	}

	/**
	 * Function to set product type
	 * @return void
	 */
	public function set_type() {
		throw new NotImplementedException( 'set_type' );
	}

	/**
	 * Function to set product url
	 * @return void
	 */
	public function set_product_url() {
		throw new NotImplementedException( 'set_product_url' );
	}

	/**
	 * Function to set product image url
	 * @return void
	 */
	public function set_image_url() {
		throw new NotImplementedException( 'set_image_url' );
	}

	/**
	 * Function to set product compatability
	 * @return void
	 */
	public function set_compatability() {
		throw new NotImplementedException( 'set_compatability' );
	}
}
