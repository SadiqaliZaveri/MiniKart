package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
@Entity
public class UserDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int userId;
	private String username;
	private String password;
	private String firstName;
	private String lastName;
	private String contactNo;
	private String emailId;
	private int cartId;
	private int roleId;
	private int shippingAddressId;
	private int billingAddressId;
	
	@OneToOne
	private Cart cart;
	
	public Cart getCart() {
		return cart;
	}


	public void setCart(Cart cart) {
		this.cart = cart;
	}


	@OneToOne
	private UserRole userRole;
	

	public UserRole getUserRole() {
		return userRole;
	}


	public void setUserRole(UserRole userRole) {
		this.userRole = userRole;
	}


	@OneToOne
	@JoinColumn(name="shippingAddressId", nullable=false,insertable=false,updatable=false)
	private ShippingAddress shippingaddress;
	

	@OneToOne
	@JoinColumn(name="billingAddressId", nullable=false,insertable=false,updatable=false)
	private BillingAddress billingaddress;


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public String getContactNo() {
		return contactNo;
	}


	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}


	public String getEmailId() {
		return emailId;
	}


	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}


	public int getCartId() {
		return cartId;
	}


	public void setCartId(int cartId) {
		this.cartId = cartId;
	}


	public int getRoleId() {
		return roleId;
	}


	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}


	public int getShippingAddressId() {
		return shippingAddressId;
	}


	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}


	public int getBillingAddressId() {
		return billingAddressId;
	}


	public void setBillingAddressId(int billingAddressId) {
		this.billingAddressId = billingAddressId;
	}


	public ShippingAddress getShippingaddress() {
		return shippingaddress;
	}


	public void setShippingaddress(ShippingAddress shippingaddress) {
		this.shippingaddress = shippingaddress;
	}


	public BillingAddress getBillingaddress() {
		return billingaddress;
	}


	public void setBillingaddress(BillingAddress billingaddress) {
		this.billingaddress = billingaddress;
	}
	
}
