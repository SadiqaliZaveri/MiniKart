package com.minikart.dao;



import com.minikart.model.CartItem;

public interface CartItemDAO {
	public void addCartItem(CartItem cartItem);
	public void deleteCartItem(int cartItemId);
	public CartItem listCartItem(int cartItemId);
	public String listCartItemViaJson(int cartId);
	public void UpdateCartItemFlag(int cartItemId);
	
}
