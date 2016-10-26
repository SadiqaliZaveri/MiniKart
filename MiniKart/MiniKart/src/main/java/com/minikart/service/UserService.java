package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.UserDAOImplementation;
import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.UserDetails;

@Service

public class UserService {
	@Autowired
	public UserDAOImplementation userDAOImplementation;
	@Transactional
	public void saveOrUpdate(UserDetails userDetails)
	{
		userDAOImplementation.saveOrUpdateUser(userDetails);
		
	}
	@Transactional
	public List<UserDetails> listUserDetails() {
		return userDAOImplementation.listUserDetails();
	}
	@Transactional
	public void saveOrUpdateShipping(ShippingAddress shippingAddress) {
	 userDAOImplementation.saveOrUpdateShipping(shippingAddress);			
	}
	@Transactional
	public void saveOrUpdateBilling(BillingAddress billingAddress) {
	 userDAOImplementation.saveOrUpdateBilling(billingAddress);			
	}
}
