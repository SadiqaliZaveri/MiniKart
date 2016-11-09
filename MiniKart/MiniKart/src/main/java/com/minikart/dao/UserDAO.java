package com.minikart.dao;

import java.util.List;

import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;

public interface UserDAO {
	public void saveOrUpdateUser(UserDetails userDetails);
	public List<UserDetails> listUserDetails();
	public String listUserViaJson();
	public void enableDisableUser(int userId);
	public void saveOrUpdateShipping(ShippingAddress shippingAddress);
	public void saveOrUpdateBilling(BillingAddress billingAddress);
	public void saveOrUpdateUserRole(UserRole userRole);
	public void saveOrUpdateSupplier(Supplier supplier);
}
