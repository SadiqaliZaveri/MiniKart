package com.minikart.dao;



import java.util.List;

import com.minikart.model.CartItem;

public interface CartItemDAO {
	public void addCartItem(CartItem cartItem);
	public void deleteCartItem(int cartItemId);
	public CartItem listCartItem(int cartItemId);
	public String listCartItemViaJson(int cartId);
	public void UpdateCartItemFlag(int cartItemId);
	public List<CartItem> listCartItemViaUserId(int userId);
	public List<CartItem> listOrderedItemViaUserId(int userId);
	public List<CartItem> listReceiptItemViaCartItemId(int cartItemId);
	
}
