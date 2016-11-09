package com.minikart.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.google.gson.annotations.Expose;

@Entity
public class CartItem {
@Id
@GeneratedValue(strategy=GenerationType.IDENTITY)
@Expose
private int cartItemId;
@Expose
private int cartId;
@Expose
private int userId;
@Expose
private int productId;
@Expose
private String productName;
@Expose
private int productPrice;
@Expose
private int productDiscountPrice;
@Expose
private boolean flag;
@Expose
private Date date;


@ManyToOne
@JoinColumn(name="cartId", nullable=false,insertable=false,updatable=false)
private Cart cart;

@ManyToOne
@JoinColumn(name="userId", nullable=false,insertable=false,updatable=false)
private User user;

@ManyToOne
@JoinColumn(name="productId", nullable=false,insertable=false,updatable=false)
private Product product;


public int getCartItemId() {
	return cartItemId;
}

public void setCartItemId(int cartItemId) {
	this.cartItemId = cartItemId;
}

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

public int getProductId() {
	return productId;
}

public void setProductId(int productId) {
	this.productId = productId;
}

public String getProductName() {
	return productName;
}

public void setProductName(String productName) {
	this.productName = productName;
}

public int getProductPrice() {
	return productPrice;
}

public void setProductPrice(int productPrice) {
	this.productPrice = productPrice;
}

public int getProductDiscountPrice() {
	return productDiscountPrice;
}

public void setProductDiscountPrice(int productDiscountPrice) {
	this.productDiscountPrice = productDiscountPrice;
}

public boolean isFlag() {
	return flag;
}

public void setFlag(boolean flag) {
	this.flag = flag;
}

public Date getDate() {
	return date;
}

public void setDate(Date date) {
	this.date = date;
}

public Cart getCart() {
	return cart;
}

public void setCart(Cart cart) {
	this.cart = cart;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public Product getProduct() {
	return product;
}

public void setProduct(Product product) {
	this.product = product;
}
}
