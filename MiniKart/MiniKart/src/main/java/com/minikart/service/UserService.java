package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.UserDAOImplementation;
import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;

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
	@Transactional
	public void saveOrUpdateUserRole(UserRole userRole){
		userDAOImplementation.saveOrUpdateUserRole(userRole);
	}
	@Transactional
	public void saveOrUpdateSupplier(Supplier supplier){
		userDAOImplementation.saveOrUpdateSupplier(supplier);
	}
}
