package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Cart {
@Id
private int cartId;
private int userId;

@OneToOne
@JoinColumn(name="userId", nullable=false,insertable=false,updatable=false)
private UserDetails userDetails;

public int getCartId() {
	return cartId;
}


public void setCartId(int cartId) {
	this.cartId = cartId;
}


public int getUserId() {
	return userId;
}


public void setUserId(int userId) {
	this.userId = userId;
}


public UserDetails getUserDetails() {
	return userDetails;
}


public void setUserDetails(UserDetails userDetails) {
	this.userDetails = userDetails;
}



}
