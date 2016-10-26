package com.minikart.dao;

import java.util.List;

import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.UserDetails;

public interface UserDAO {
	public void saveOrUpdateUser(UserDetails userDetails);
	public List<UserDetails> listUserDetails();
	public void saveOrUpdateShipping(ShippingAddress shippingAddress);
	public void saveOrUpdateBilling(BillingAddress billingAddress);
}
