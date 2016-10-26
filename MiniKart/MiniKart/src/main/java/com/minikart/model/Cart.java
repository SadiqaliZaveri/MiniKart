package com.minikart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class Cart implements Serializable{
	
/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
@Id
private int cartId;
private int userId;

@OneToOne
@JoinColumn(name="userId", nullable=false,insertable=false,updatable=false)
private User user;

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


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}

}
