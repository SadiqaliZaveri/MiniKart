package com.minikart.handlers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.minikart.model.BillingAddress;
import com.minikart.model.BuyNow;
import com.minikart.model.ShippingAddress;
import com.minikart.service.UserService;




@Component
public class CartHandler 
{
	
	@Autowired
	public ShippingAddress shippingAddress;
	@Autowired
	public  BillingAddress billingAddress;
	@Autowired
	public UserService userService;
	
 public BuyNow initFlow()
 {
	 return new BuyNow();
 }
 
 public String validateShipping(BuyNow buyNow, ShippingAddress shippingAddress, MessageContext messageContext ){
		String status = "success";
		
		if(shippingAddress.getAddress().isEmpty() || shippingAddress.getAddress().length()<20 && !shippingAddress.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("address").defaultText(" Please Fill Address").build());
			
			status = "failure";
		}
		if(shippingAddress.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText(" Please Fill City").build());
			
			status = "failure";
		}
		if(shippingAddress.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText(" Please Fill State").build());
			
			status = "failure";
		}
		if(shippingAddress.getDistrict().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("district").defaultText(" Please Fill District").build());
			
			status = "failure";
		}
		if(shippingAddress.getPinCode().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText(" Please Fill Pincode").build());
			
			status = "failure";
		}
		if(shippingAddress.getLandmark().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("landmark").defaultText(" Please Fill Landmark").build());
			
			status = "failure";
		}
		return status;	
	}

 public String validateBilling(BuyNow buyNow, BillingAddress billingAddress, MessageContext messageContext ){
		String status = "success";
		
		if(billingAddress.getAddress().isEmpty() || billingAddress.getAddress().length()<20 && !billingAddress.getAddress().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("address").defaultText(" Please Fill Address").build());
			
			status = "failure";
		}
		if(billingAddress.getCity().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("city").defaultText(" Please Fill City").build());
			
			status = "failure";
		}
		if(billingAddress.getState().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("state").defaultText(" Please Fill State").build());
			
			status = "failure";
		}
		if(billingAddress.getDistrict().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("district").defaultText(" Please Fill District").build());
			
			status = "failure";
		}
		if(billingAddress.getPinCode().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("pincode").defaultText(" Please Fill Pincode").build());
			
			status = "failure";
		}
		if(billingAddress.getLandmark().isEmpty()){
			messageContext.addMessage(new MessageBuilder().error().source("landmark").defaultText(" Please Fill Landmark").build());
			
			status = "failure";
		}
		return status;	
	}

 
 public String addShippingDetails(BuyNow buyNow, ShippingAddress shippingaddress)
 {
	 
 	this.shippingAddress.setAddress(shippingaddress.getAddress());
 	this.shippingAddress.setCity(shippingaddress.getCity());
 	this.shippingAddress.setDistrict(shippingaddress.getDistrict());
 	this.shippingAddress.setLandmark(shippingaddress.getLandmark());
 	this.shippingAddress.setPinCode(shippingaddress.getPinCode());
 	this.shippingAddress.setState(shippingaddress.getState());
 	 String add=this.shippingAddress.getAddress();
	 System.out.println("sadiqali"+add);
 	return "success";
 	
 }
 public String addBillingDetails(BuyNow buyNow, BillingAddress billingAddress)
 {
 	this.billingAddress.setAddress(billingAddress.getAddress());
 	this.billingAddress.setCity(billingAddress.getCity());
 	this.billingAddress.setDistrict(billingAddress.getDistrict());
 	this.billingAddress.setLandmark(billingAddress.getLandmark());
 	this.billingAddress.setPinCode(billingAddress.getPinCode());
 	this.billingAddress.setState(billingAddress.getState());
 	return "success";
 	
 }
 
 public String addBillingDetailsAsShipping(BuyNow buyNow, BillingAddress billingAddress, ShippingAddress shippingAddress)
 {
	 String add=this.shippingAddress.getAddress();
	 System.out.println("sadiqali"+add);
 	this.billingAddress.setAddress(this.shippingAddress.getAddress());
 	this.billingAddress.setCity(this.shippingAddress.getCity());
 	this.billingAddress.setDistrict(this.shippingAddress.getDistrict());
 	this.billingAddress.setLandmark(this.shippingAddress.getLandmark());
 	this.billingAddress.setPinCode(this.shippingAddress.getPinCode());
 	this.billingAddress.setState(this.shippingAddress.getState());
 	return "success";
 	
 }
 
}
