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
import com.minikart.model.Supplier;
import com.minikart.model.User;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;

@Repository
public class UserDAOImplementation implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateUser(UserDetails userDetails) {
		
		Session session = this.sessionFactory.getCurrentSession();
		User user = new User();
		/*user.setUserId(userDetails.getUserId());
		System.out.println("user id is"+userDetails.getUserId());*/
		user.setUsername(userDetails.getUsername());
		user.setPassword(userDetails.getPassword());
		user.setEnabled(true);
		user.setUserId(userDetails.getUserId());
		
		session.saveOrUpdate(user);
		
//		UserRole userRole = new UserRole();
//		userRole.setUserId(user.getUserId());
//		userRole.setRoleId(1);
//		session.saveOrUpdate(userRole);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
						
		
		
//		userDetails.setRoleId(1);
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		
//		session.saveOrUpdate(userDetails.getUserRole());
//		userDetails.getUserRole().setUserDetails(userDetails);
		
		if(!(userDetails.getShippingAddress() == null))
				{
//		userDetails.getBillingAddress().setUserDetails(userDetails);
//		userDetails.getShippingAddress().setUserDetails(userDetails);
//		session.saveOrUpdate(userDetails.getBillingAddress());
//		session.saveOrUpdate(userDetails.getShippingAddress());
				}
if(!(userDetails.getSupplier() == null))
{
//	userDetails.getSupplier().setUserDetails(userDetails);
//	session.saveOrUpdate(userDetails.getSupplier());
}
		
		
		
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
	public void saveOrUpdateUserRole(UserRole userRole) {
		sessionFactory.getCurrentSession().saveOrUpdate(userRole);	
	}
	public void saveOrUpdateSupplier(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);		
	}
	

}

