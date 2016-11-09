package com.minikart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import com.minikart.model.UserDetails;
import com.minikart.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/register")
	public String users()
	{
		
		return "redirect:/reg";
	}
	
		
	@RequestMapping("/user")
	public String addUser(@ModelAttribute("user") UserDetails userDetails)
	{
		userService.saveOrUpdate(userDetails);
		return "redirect:/";
		
	}
	
	@RequestMapping("/toggleuser-{userId}")
	public String toggleUser(@PathVariable("userId") int userId)
	{
		
		
		
		userService.enableDisableUser(userId);
		
		return "redirect:/admin";
		
	}
	
	
	
}
