package com.minikart.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.model.BillingAddress;

import com.minikart.model.Product;
import com.minikart.model.ShippingAddress;
import com.minikart.model.Supplier;
import com.minikart.model.User;
import com.minikart.model.UserDetails;

import com.minikart.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

//REGISTER FLOW MAPPING	
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
//DISABLE/ENABLE USER	
	@RequestMapping("/toggleuser-{userId}")
	public String toggleUser(@PathVariable("userId") int userId)
	{
		userService.enableDisableUser(userId);
		
		return "redirect:/admin";	
	}

	
//USER PANEL VIEW	
	@RequestMapping("/panel")
	public ModelAndView UserPanel(@ModelAttribute("userDetails") UserDetails userDetails)
	{
		try
		{
			Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
			String user=authentication.getName();
			
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			ModelAndView model = new ModelAndView("UserPanel");

				UserDetails ud = userService.getUserDetailsFromName(user);
				
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

		}
		catch(Exception ex)
		{
			ModelAndView model = new ModelAndView("403");
			return model;
		}
	}
	
//	USER DETAILS EDITING VIA USER PANEL
	
	@RequestMapping("/useredit")
	public String UserPanelEdit(Model model)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		
		model.addAttribute("userDetails",userService.getUserDetailsFromName(user));
		
		return "UserEdit";
	}
	
	@RequestMapping(value="/edituserdetails", method=RequestMethod.POST)
	public String UpdateUserPanel(@ModelAttribute("userDetails") UserDetails userDetails)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user =authentication.getName();
		UserDetails userDetailsValue = userService.getUserDetailsFromName(user); 
		userDetails.setBillingAddress(userDetailsValue.getBillingAddress());
		userDetails.setShippingAddress(userDetailsValue.getShippingAddress());
		userDetails.setSupplier(userDetailsValue.getSupplier());
		userDetails.setUserRole(userDetailsValue.getUserRole());
		userDetails.setUserCreationDate(userDetailsValue.getUserCreationDate());
		User userValue = new User();
		userValue.setEnabled(true);
		userValue.setPassword(userDetails.getPassword());
		userValue.setUsername(userDetails.getUsername());
		userValue.setUserId(userDetails.getUserId());
		userService.update(userDetails);
		userService.update(userValue);
		
		

		return "redirect:/panel";
	}
	
//SHIPPING EDITING VIA USER PANEL	
	@RequestMapping("/shippingedit")
	public String ShippingPanelEdit(Model model)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId= userService.getUserDetailsFromName(user).getUserId();
		model.addAttribute("shippingAddress",userService.getShippingIdById(userId));
		
		return "ShippingEdit";
	}
	
	@RequestMapping(value="/editshippingdetails", method=RequestMethod.POST)
	public String UpdateShippingPanel(@ModelAttribute("shippingAddress") ShippingAddress shippingAddress)
	{
		Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		String user=authentication.getName();
		int userId= userService.getUserDetailsFromName(user).getUserId();
		UserDetails userDetails = new UserDetails();
		userDetails.setUserId(userId);
		shippingAddress.setUserDetails(userDetails);
		userService.saveOrUpdateShipping(shippingAddress);

		return "redirect:/panel";
	}
	
//BILLING EDITING VIA USER PANEL	
		@RequestMapping("/billingedit")
		public String BillingPanelEdit(Model model)
		{
			Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
			String user=authentication.getName();
			int userId= userService.getUserDetailsFromName(user).getUserId();
			
			model.addAttribute("billingAddress",userService.getBillingIdById(userId));
			return "BillingEdit";
		}
		
		@RequestMapping(value="/editbillingdetails", method=RequestMethod.POST)
		public String UpdateBillingPanel(@ModelAttribute("billingAddress") BillingAddress billingAddress)
		{
			
			
			Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
			String user=authentication.getName();
			int userId= userService.getUserDetailsFromName(user).getUserId();
			UserDetails userDetails = new UserDetails();
			userDetails.setUserId(userId);
			billingAddress.setUserDetails(userDetails);
			userService.saveOrUpdateBilling(billingAddress);

			return "redirect:/panel";
		}

//SUPPLIER EDITING VIA USER PANEL	
				@RequestMapping("/supplieredit")
				public String SupplierPanelEdit(Model model)
				{
					Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
					String user=authentication.getName();
					int userId= userService.getUserDetailsFromName(user).getUserId();
					
					model.addAttribute("supplier",userService.getSupplierIdById(userId));
					return "SupplierEdit";
				}
				
				@RequestMapping(value="/editsupplierdetails", method=RequestMethod.POST)
				public String UpdateBillingPanel(@ModelAttribute("supplier") Supplier supplier)
				{
					
					
					Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
					String user=authentication.getName();
					int userId= userService.getUserDetailsFromName(user).getUserId();
					UserDetails userDetails = new UserDetails();
					userDetails.setUserId(userId);
					supplier.setUserDetails(userDetails);
					userService.saveOrUpdateSupplier(supplier);

					return "redirect:/panel";
				}
		
	
	
	
}
