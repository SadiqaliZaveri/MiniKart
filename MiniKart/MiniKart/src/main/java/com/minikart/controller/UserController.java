package com.minikart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.model.BillingAddress;
import com.minikart.model.Product;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.UserDetails;
import com.minikart.service.SupplierService;
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
	
	@RequestMapping("/panel-{username}")
	public ModelAndView UserPanel(@ModelAttribute("userDetails") UserDetails userDetails, @PathVariable("username") String username)
	{
		//try
		//{
			Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
			String user=authentication.getName();
			
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			ModelAndView model = new ModelAndView("UserPanel");
			
			
			
		//	if(user.equals(username))
			//{
				UserDetails ud = userService.getUserDetailsFromName(username);
				
				String g = gson.toJson(ud);
				model.addObject("userDetailsParticularListViaJson",g);
				
				
				
				
				ShippingAddress sa = userService.getShippingIdById(ud.getUserId());
				BillingAddress ba = userService.getBillingIdById(ud.getUserId());
				String h = gson.toJson(sa);
				
				String i = gson.toJson(ba);
				model.addObject("userDetailsParticularShippingListViaJson",h);
				model.addObject("userDetailsParticularBillingListViaJson",i);
				
				Supplier su = userService.getSupplierIdById(ud.getUserId());
				String j = gson.toJson(su);
				model.addObject("userDetailsParticularSupplierListViaJson",j);
				model.addObject("product", new Product());
				if(ud.getSupplier()==null)
				{
					model.addObject("userDetailsParticularProductListViaJson", "null");
				}
				else
				{
					List<Product> pr = userService.getProductIdById(ud.getSupplier().getSupplierId());
					String k = gson.toJson(pr);
					model.addObject("userDetailsParticularProductListViaJson", k);
				}
				
				
				
				
				return model;
		//	}
			//else
			//{
			//	throw new Exception();
			//}
		
		//}
		//catch(Exception ex)
		//{
		//	ModelAndView model = new ModelAndView("403");
		//	return model;
		//}
	}
	
	
}
