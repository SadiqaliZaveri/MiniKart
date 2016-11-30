package com.minikart.dao;

import java.util.List;

import com.minikart.model.WishList;

public interface WishListDAO 
{
	public void createWishList(WishList wishList); 
	public List<WishList> wishList(int userId);
	public void deleteWishList(int wishListId);
	
}
