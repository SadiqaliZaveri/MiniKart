package com.daoimplementation;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.UserDAO;
import com.model.Cart;

import com.model.User;
import com.model.UserDetails;




@Repository
public class UserDAOImplementation implements UserDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdate(UserDetails userDetails) {
		
		Session session = sessionFactory.getCurrentSession();
		
		
		userDetails.getBillingaddress().setUserDetails(userDetails);	
		userDetails.getShippingaddress().setUserDetails(userDetails);
		userDetails.getUserRole().setUserDetails(userDetails);
		
		session.saveOrUpdate(userDetails.getBillingaddress());
		session.saveOrUpdate(userDetails.getShippingaddress());
		session.saveOrUpdate(userDetails.getUserRole());
		session.saveOrUpdate(userDetails);
		
		
		
	}
	
	public void saveOrUpdateUser(User user) 
	{
		Session session = sessionFactory.getCurrentSession();
		user.setEnabled(true);
		session.saveOrUpdate(user);
		Cart cart=new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		
		session.saveOrUpdate(cart);
	}
}
