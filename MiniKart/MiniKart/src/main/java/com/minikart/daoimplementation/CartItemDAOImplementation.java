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
	sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
}

public void deleteCartItem(int cartItemId) {
	CartItem cartitem = new CartItem();
	cartitem.setCartItemId(cartItemId);
	sessionFactory.getCurrentSession().delete(cartitem);
}

@SuppressWarnings("unchecked")
public CartItem listCartItem(int cartItemId) {
	
	String query = "from CartItem where cartItemId="+cartItemId;
	List<CartItem> list = sessionFactory.getCurrentSession().createQuery(query).getResultList();
	return list.get(0);
}

@SuppressWarnings("unchecked")
public String listCartItemViaJson(int cartId) {
	Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
	List<CartItem> list = sessionFactory.getCurrentSession().createQuery("from CartItem where cartId="+cartId+" order by cartItemId desc").setMaxResults(1).getResultList();
	String listCartItem = gson.toJson(list);
	return listCartItem;
}

public void UpdateCartItemFlag(int cartItemId) {
	sessionFactory.getCurrentSession().createQuery("update CartItem set flag=true where cartItemId="+cartItemId).executeUpdate();
	
}
}
