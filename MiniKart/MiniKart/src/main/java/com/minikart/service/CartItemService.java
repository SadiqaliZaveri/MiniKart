package com.minikart.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.CartItemDAOImplementation;
import com.minikart.model.CartItem;

@Service
public class CartItemService {
	
@Autowired
private CartItemDAOImplementation cartItemDAOImplementation;

@Transactional
public void addCartItem(CartItem cartItem) {
	cartItemDAOImplementation.addCartItem(cartItem);
}
@Transactional
public void deleteCartItem(int cartItemId) {
	cartItemDAOImplementation.deleteCartItem(cartItemId);
}
@Transactional
public CartItem listCartItem(int cartItemId) {
	return cartItemDAOImplementation.listCartItem(cartItemId);
}
@Transactional
public String listCartItemViaJson(int cartId) {
	return cartItemDAOImplementation.listCartItemViaJson(cartId);
}
@Transactional
public void UpdateCartItemFlag(int cartItemId) 
{
	cartItemDAOImplementation.UpdateCartItemFlag(cartItemId);
}

@Transactional
public List<CartItem> listCartItemViaUserId(int userId) {
	return cartItemDAOImplementation.listCartItemViaUserId(userId);
}
@Transactional
public List<CartItem> listOrderedItemViaUserId(int userId) {
	return cartItemDAOImplementation.listOrderedItemViaUserId(userId);
}
@Transactional
public List<CartItem> listReceiptItemViaCartItemId(int cartItemId)
{
	return cartItemDAOImplementation.listReceiptItemViaCartItemId(cartItemId);
}
}
