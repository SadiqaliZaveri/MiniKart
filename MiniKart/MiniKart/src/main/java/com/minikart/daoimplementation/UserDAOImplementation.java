package com.minikart.daoimplementation;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.minikart.dao.UserDAO;
import com.minikart.model.BillingAddress;
import com.minikart.model.Cart;
import com.minikart.model.ShippingAddress;
import com.minikart.model.User;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;

@Repository
public class UserDAOImplementation implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateUser(UserDetails userDetails) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		User user = new User();
		/*user.setUserId(userDetails.getUserId());
		System.out.println("user id is"+userDetails.getUserId());*/
		user.setUsername(userDetails.getUsername());
		user.setPassword(userDetails.getPassword());
		user.setEnabled(true);
		session.saveOrUpdate(user);
		
		UserRole userRole = new UserRole();
		userRole.setUserId(user.getUserId());
		userRole.setRoleId(1);
		session.saveOrUpdate(userRole);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
						
		
		
		userDetails.setRoleId(1);
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		
		userDetails.getBillingAddress().setUserDetails(userDetails);
		userDetails.getShippingAddress().setUserDetails(userDetails);
		
		session.saveOrUpdate(userDetails.getBillingAddress());
		session.saveOrUpdate(userDetails.getShippingAddress());
		
		
		session.saveOrUpdate(userDetails);
		session.flush();
		
	}
	@SuppressWarnings("unchecked")
	public List<UserDetails> listUserDetails() {
		
		List<UserDetails> userDetailsList = sessionFactory.getCurrentSession().createQuery("from UserDetails").getResultList();
		
		return userDetailsList;
	}
	public void saveOrUpdateShipping(ShippingAddress shippingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(shippingAddress);		
	}
	public void saveOrUpdateBilling(BillingAddress billingAddress) {
		sessionFactory.getCurrentSession().saveOrUpdate(billingAddress);		
	}
	

}

