package com.minikart.model;

import java.io.Serializable;

public class BuyNow implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private CartItem cartItem;
	private UserDetails userDetails;
	private ShippingAddress shippingAddress;
	private BillingAddress billingAddress;
	public CartItem getCartItem() {
		return cartItem;
	}
	public void setCartItem(CartItem cartItem) {
		this.cartItem = cartItem;
	}
	public UserDetails getUserDetails() {
		return userDetails;
	}
	public void setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
	}
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public BillingAddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(BillingAddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	
	
}
