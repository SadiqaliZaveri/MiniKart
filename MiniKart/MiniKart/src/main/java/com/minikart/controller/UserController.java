package com.minikart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minikart.model.BillingAddress;
import com.minikart.model.ShippingAddress;
import com.minikart.model.UserDetails;
import com.minikart.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String users(Model model)
	{
		
//		UserDetails userDetails = new UserDetails();
//		ShippingAddress shippingAddress = new ShippingAddress();
//		BillingAddress billingAddress = new BillingAddress();
//		userDetails.setShippingAddress(shippingAddress);
//		userDetails.setBillingAddress(billingAddress);
//		model.addAttribute("user", userDetails);
//		return "RegistrationForm";
		return "redirect:/reg";
	}
	
		
	@RequestMapping("/user")
	public String addUser(@ModelAttribute("user") UserDetails userDetails)
	{
		this.userService.saveOrUpdate(userDetails);
		return "redirect:/";
		
	}
	
	
	
}
