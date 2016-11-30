package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.WishListDAOImplementation;
import com.minikart.model.WishList;



@Service
public class WishListService 
{
	@Autowired
	private WishListDAOImplementation wishListDaoImplementation;
	   
		@Transactional
		public void addWishList(WishList wishList)
		{
			wishListDaoImplementation.createWishList(wishList);
		}
		
		@Transactional
		public List<WishList> wishList(int userId)
		{
			return wishListDaoImplementation.wishList(userId);
		}
		
		@Transactional
		public void deleteWishList(int wishListId)
		{
			wishListDaoImplementation.deleteWishList(wishListId);
		}
}
