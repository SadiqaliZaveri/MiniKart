package com.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.BillingAddress;
import com.model.ShippingAddress;
import com.model.User;
import com.model.UserDetails;
import com.model.UserRole;
import com.service.UserService;

@Controller
public class UserController {
@Autowired
private UserService userService;
@RequestMapping("/register2")
public String userDetails(Model model) 
{
	UserDetails userDetails = new UserDetails();
	ShippingAddress shippingAddress=new ShippingAddress();
	BillingAddress billingAddress=new BillingAddress();
	UserRole userRole = new UserRole();
	userRole.setUserId(userDetails.getUserId());
	
	model.addAttribute("userDetails",userDetails);
	userDetails.setBillingaddress(billingAddress);
	userDetails.setShippingaddress(shippingAddress);
	userDetails.setUserRole(userRole);
	
	
	return "RegistrationForm2";
}

@RequestMapping(value="/add/register", method=RequestMethod.POST)
public String addCategory(@ModelAttribute("userDetails") UserDetails userDetails)

{
	this.userService.saveOrUpdate(userDetails);
	return "redirect:/";
}

/*------------------------Second way----------------------*/

@RequestMapping("/register")
public String createUser(Model model) 
{
	model.addAttribute("user",new User());
	return "RegistrationForm";
}

@RequestMapping("/adduser")
public String createUserAction(Model model, @ModelAttribute("user")User user,HttpSession session) 
{
	userService.saveOrUpdateUser(user);
	session.setAttribute("userId", user.getUserId());
	session.setAttribute("username", user.getUsername());
	session.setAttribute("password", user.getPassword());
	//session.setAttribute("cartId", user.getPassword());
	
	return "redirect:/register2";
}


}
