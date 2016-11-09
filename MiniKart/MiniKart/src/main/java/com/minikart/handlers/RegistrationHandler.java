package com.minikart.handlers;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.UserDetails;
import com.minikart.model.UserRole;
import com.minikart.service.UserService;

@Component
public class RegistrationHandler {
@Autowired
public UserService userService;
@Autowired
public ShippingAddress shippingAddress;
@Autowired
public  BillingAddress billingAddress;
@Autowired
public UserRole userRole;
@Autowired
public Supplier supplier;
@Autowired
private JavaMailSender mailSender;
	
public UserDetails initFlow(){
	return new UserDetails();
}

public String validateDetails(UserDetails userDetails,MessageContext messageContext){
	List<UserDetails> userlist = userService.listUserDetails();
	
	String status = "success";
	if(userDetails.getUsername().isEmpty() || userDetails.getUsername().length()<3){
		messageContext.addMessage(new MessageBuilder().error().source("username").defaultText(" Please Fill Username").build());
		
		status = "failure";
	}
	else if(!userDetails.getUsername().isEmpty())
	{
		
		for(UserDetails k : userlist)
		{
			if(k.getUsername().equals(userDetails.getUsername()))
			{
				messageContext.addMessage(new MessageBuilder().error().source("username").defaultText(" It Already Exists. Please Try Another").build());
				status = "failure";
				break;
			}
			
		}
	}
	if(userDetails.getEmailId().isEmpty() || (!userDetails.getEmailId().contains("@") && !userDetails.getEmailId().isEmpty())){
		if(!userDetails.getEmailId().contains("@") && !userDetails.getEmailId().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("emailid").defaultText(" Format Invalid. Should Contain @").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("emailid").defaultText(" Please Fill EmailId").build());
		}
		
		
		status = "failure";
	}
	else if(!userDetails.getEmailId().isEmpty())
	{
		for(UserDetails k : userlist)
		{
			if(k.getEmailId().equals(userDetails.getEmailId()))
			{
				messageContext.addMessage(new MessageBuilder().error().source("emailid").defaultText(" It Already Exists. Please Try Another").build());
				status = "failure";
				break;
			}
			
		}
	}
	if(userDetails.getContactNo().isEmpty() || (userDetails.getContactNo().length()!=10 && !userDetails.getContactNo().isEmpty()) ){
		if(userDetails.getContactNo().length()!=10 && !userDetails.getContactNo().isEmpty() )
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactno").defaultText(" It Should be 10 digits").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("contactno").defaultText(" Please Fill Contact/Mobile No").build());
		}
		status = "failure";
	}
	if(userDetails.getFirstName().isEmpty()){
		messageContext.addMessage(new MessageBuilder().error().source("firstname").defaultText(" Please Fill First Name").build());
		status = "failure";
	}
	if(userDetails.getLastName().isEmpty()){
		messageContext.addMessage(new MessageBuilder().error().source("lastname").defaultText(" Please Fill Last Name").build());
		status = "failure";
	}
	if(userDetails.getPassword().isEmpty()|| (userDetails.getPassword().length()<6 && !userDetails.getPassword().isEmpty())){
		if(userDetails.getPassword().length()<6 && !userDetails.getPassword().isEmpty())
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText(" It Should Be Minimum 6 Characters").build());
		}
		else
		{
			messageContext.addMessage(new MessageBuilder().error().source("password").defaultText("	Please Fill Password").build());
		}
		
		status = "failure";
	}
	return status;
}

public String validateShipping(UserDetails userDetails, ShippingAddress shippingAddress, MessageContext messageContext ){
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

public String addDetails(UserDetails userDetails,UserRole userRole, ShippingAddress shippingAddress, BillingAddress billingAddress, MessageContext messageContext ){
	try{

	userService.saveOrUpdate(userDetails);	
	userDetails.setShippingAddress(shippingAddress);
	userDetails.setBillingAddress(billingAddress);
	userDetails.setUserRole(userRole);
	
	
	
	shippingAddress.setUserDetails(userDetails);
	this.shippingAddress.setUserDetails(userDetails);
	billingAddress.setUserDetails(userDetails);
	this.billingAddress.setUserDetails(userDetails);
	userRole.setUserDetails(userDetails);
	this.userRole.setUserDetails(userDetails);
	userService.saveOrUpdateShipping(shippingAddress);
	userService.saveOrUpdateBilling(billingAddress);
	userService.saveOrUpdateUserRole(userRole);
	 
	
	 // creates a simple e-mail object
    SimpleMailMessage email = new SimpleMailMessage();
    email.setTo(userDetails.getEmailId());
    email.setSubject("Welcome To Minikart");
    email.setText("Enjoy Your Shopping Experience");
    
     
    // sends the e-mail
    mailSender.send(email);
	
	
	}
	catch (Exception e) {
		messageContext.addMessage(new MessageBuilder().error().source("dberror").defaultText("Server Down! Try again Later.").build());
		return "failure";	
	}
	return "success";
	
}

public String addDetailsSupplier(UserDetails userDetails,UserRole userRole,Supplier supplier, MessageContext messageContext ){
	try{
	
	userService.saveOrUpdate(userDetails);	
	userDetails.setUserRole(userRole);
	
	userDetails.setSupplier(supplier);
	
	
	userRole.setUserDetails(userDetails);
	this.userRole.setUserDetails(userDetails);
	supplier.setUserDetails(userDetails);
	this.supplier.setUserDetails(userDetails);
	userService.saveOrUpdateUserRole(userRole);
	userService.saveOrUpdateSupplier(supplier);
	
	
	
	
	
	}
	catch (Exception e) {
		messageContext.addMessage(new MessageBuilder().error().source("dberror").defaultText("Server Down! Try again Later.").build());
		return "failure";	
	}
	return "success";
	
}

public String addShippingDetails(UserDetails userDetails, ShippingAddress shippingaddress)
{
	this.shippingAddress.setAddress(shippingaddress.getAddress());
	this.shippingAddress.setCity(shippingaddress.getCity());
	this.shippingAddress.setDistrict(shippingaddress.getDistrict());
	this.shippingAddress.setLandmark(shippingaddress.getLandmark());
	this.shippingAddress.setPinCode(shippingaddress.getPinCode());
	this.shippingAddress.setState(shippingaddress.getState());
	return "success";
	
}
public String addBillingDetails(UserDetails userDetails, BillingAddress billinggaddress)
{
	this.billingAddress.setAddress(billingAddress.getAddress());
	this.billingAddress.setCity(billingAddress.getCity());
	this.billingAddress.setDistrict(billingAddress.getDistrict());
	this.billingAddress.setLandmark(billingAddress.getLandmark());
	this.billingAddress.setPinCode(billingAddress.getPinCode());
	this.billingAddress.setState(billingAddress.getState());
	return "success";
	
}
public String addSupplierDetails(UserDetails userDetails, Supplier supplier)
{
	this.supplier.setAddress(supplier.getAddress());
	this.supplier.setCity(supplier.getCity());
	this.supplier.setDistrict(supplier.getDistrict());
	this.supplier.setLandmark(supplier.getLandmark());
	this.supplier.setPinCode(supplier.getPinCode());
	this.supplier.setState(supplier.getState());
	return "success";
	
}



}
