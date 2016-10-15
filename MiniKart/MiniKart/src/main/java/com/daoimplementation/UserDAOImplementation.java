package com.daoimplementation;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.UserDAO;
import com.model.BillingAddress;
import com.model.Cart;
import com.model.ShippingAddress;
import com.model.User;
import com.model.UserDetails;
import com.model.UserRole;

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
		
		
		
		userDetails.setShippingAddressId(shippingAddress.getShippingAddressId());
		
		
		userDetails.setBillingAddressId(billingAddress.getBillingAddressId());
		
		
		userDetails.setRoleId(userRole.getRoleId());
		
	}

	
}
