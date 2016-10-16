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
		User user = new User();
		user.setEnabled(true);
		user.setPassword(userDetails.getPassword());
		user.setUsername(userDetails.getUsername());
		user.setUserId(userDetails.getUserId());
		session.saveOrUpdate(user);
		
		Cart cart = new Cart();
		cart.setCartId(userDetails.getUserId());
		cart.setUserId(userDetails.getUserId());
		session.saveOrUpdate(cart);	
		
		System.out.println("Saving");
		
		
		userDetails.getBillingaddress().setUserDetails(userDetails);	
		
		userDetails.getShippingaddress().setUserDetails(userDetails);	
		
		userDetails.getUserRole().setUserDetails(userDetails);
		
		session.saveOrUpdate(userDetails.getUserRole());
		session.saveOrUpdate(userDetails.getBillingaddress());
		session.saveOrUpdate(userDetails.getShippingaddress());
		session.saveOrUpdate(userDetails);
		
		
	}

	
}
