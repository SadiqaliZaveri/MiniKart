package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shippingAddressId;
	private String city;
	private String state;
	private String pinCode;
	private String district;
	private String landmark;
	
	@OneToOne
	private UserDetails userDetails;
	
public int getShippingAddressId() {
		return shippingAddressId;
	}
	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getDistrict() {
		return district;
	}
	public void setDistrict(String district) {
		this.district = district;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

public UserDetails getUserDetails() {
	return userDetails;
}
public void setUserDetails(UserDetails userDetails) {
	this.userDetails = userDetails;
}
}
