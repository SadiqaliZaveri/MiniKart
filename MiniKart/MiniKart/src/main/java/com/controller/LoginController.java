package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value="/login")
	public String loginPage()
	{
		return "LoginForm";
	}
	
	@RequestMapping(value="/perform_logout", method = RequestMethod.GET)
	public String LogoutPage(HttpServletRequest request, HttpServletResponse response)
	{
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth!=null)
		{
			new SecurityContextLogoutHandler().logout(request,response,auth);
		}
		return "redirect:/home";
		
	}
}
