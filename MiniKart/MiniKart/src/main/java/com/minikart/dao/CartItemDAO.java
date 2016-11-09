package com.minikart.dao;

import java.util.List;

import com.minikart.model.CartItem;

public interface CartItemDAO {
	public void addCartItem(CartItem cartItem);
	public void deleteCartItem(int cartItemId);
	public List<CartItem> listCartItem();
	public String listCartItemViaJson();
}
