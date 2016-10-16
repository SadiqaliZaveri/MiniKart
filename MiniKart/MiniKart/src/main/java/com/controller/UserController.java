package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.BillingAddress;
import com.model.ShippingAddress;
import com.model.UserDetails;
import com.model.UserRole;
import com.service.UserService;

@Controller
public class UserController {
@Autowired
private UserService userService;
@RequestMapping(value="/register")
public String register(Model model)
{
	
	UserDetails userDetails = new UserDetails();
	BillingAddress billingaddress = new BillingAddress();
	ShippingAddress shippingaddress = new ShippingAddress();
	UserRole userRole = new UserRole();

	userDetails.setBillingaddress(billingaddress);
	userDetails.setShippingaddress(shippingaddress);
	
	userDetails.setUserRole(userRole);
	model.addAttribute("userDetails", userDetails);
	return "RegistrationForm";
	
}
@RequestMapping(value="/add/register", method=RequestMethod.POST)
public String addUserDetails(@ModelAttribute("userDetails") UserDetails userDetails)
{
	
	this.userService.saveOrUpdate(userDetails);
	return "redirect:/home";
}
}
