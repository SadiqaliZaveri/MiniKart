package com.minikart.daoimplementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.dao.CartItemDAO;
import com.minikart.model.CartItem;


@Repository
public class CartItemDAOImplementation implements CartItemDAO{
@Autowired
private SessionFactory sessionFactory;

public void addCartItem(CartItem cartItem) {
	sessionFactory.getCurrentSession().save(cartItem);
}

public void deleteCartItem(int cartItemId) {
	CartItem cartitem = new CartItem();
	cartitem.setCartItemId(cartItemId);
	sessionFactory.getCurrentSession().delete(cartitem);
}

@SuppressWarnings("unchecked")
public List<CartItem> listCartItem() {
	
	return sessionFactory.getCurrentSession().createQuery("from CartItem").getResultList();
}

@SuppressWarnings("unchecked")
public String listCartItemViaJson() {
	Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
	List<CartItem> list = sessionFactory.getCurrentSession().createQuery("from CartItem").getResultList();
	String listCartItem = gson.toJson(list);
	return listCartItem;
}
}
