package com.minikart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.minikart.daoimplementation.UserDAOImplementation;
import com.minikart.model.BillingAddress;
import com.minikart.model.Product;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.User;
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
	@Transactional
	public String listUserViaJson() {
		return userDAOImplementation.listUserViaJson();
	}
	@Transactional
	public void enableDisableUser(int userId) {
		userDAOImplementation.enableDisableUser(userId);
	}
	@Transactional
	public UserDetails getUserDetailsFromName(String username) {
		return userDAOImplementation.getUserDetailsFromName(username);
	}
	@Transactional
	public ShippingAddress getShippingIdById(int userDetails_userId) {
		return userDAOImplementation.getShippingIdById(userDetails_userId);
	}
	@Transactional
	public BillingAddress getBillingIdById(int userDetails_userId) {
		return userDAOImplementation.getBillingIdById(userDetails_userId);
	}
	@Transactional
	public Supplier getSupplierIdById(int userDetails_userId) {
		return userDAOImplementation.getSupplierIdById(userDetails_userId);
	}
	@Transactional
	public List<Product> getProductIdById(int supplierId) {
		return userDAOImplementation.getProductIdById(supplierId);
	}
	@Transactional
	public void update(UserDetails userDetails) {
		userDAOImplementation.update(userDetails);
	}
	@Transactional
	public void update(User user) {
		userDAOImplementation.update(user);
	}
}
