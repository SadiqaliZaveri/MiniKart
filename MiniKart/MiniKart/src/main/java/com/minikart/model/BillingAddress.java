package com.minikart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class BillingAddress implements Serializable {

/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
private int billingAddressId;
private String city;
private String state;
private String pinCode;
private String district;
private String landmark;
private String address;

public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@OneToOne
private UserDetails userDetails;

public UserDetails getUserDetails() {
	return userDetails;
}
public void setUserDetails(UserDetails userDetails) {
	this.userDetails = userDetails;
}
public int getBillingAddressId() {
	return billingAddressId;
}
public void setBillingAddressId(int billingAddressId) {
	this.billingAddressId = billingAddressId;
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
}
