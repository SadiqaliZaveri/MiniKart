package com.minikart.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.minikart.service.CartItemService;
import com.minikart.service.CategoryService;
import com.minikart.service.ProductFullViewService;
import com.minikart.service.SubCategoryService;
import com.minikart.service.TodaysMessageService;
import com.minikart.service.UserService;

@ControllerAdvice(basePackages={"com.minikart.controller"})
public class GlobalController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private TodaysMessageService todaysMessageService;
	@Autowired
	private ProductFullViewService productFullViewService;
	@Autowired
	private CartItemService cartItemService;
	@Autowired
	private UserService userService;
	
	
	
	@ModelAttribute
	public void globalAttribute(Model model, HttpSession session)
	{

//		Retrieving Category Data through List
		model.addAttribute("categoryListNormal", this.categoryService.listCategory());		
//		Retrieving Category Data through GsontoJson Conversion 
		model.addAttribute("categoryListJson",this.categoryService.listCategoryViaJson());
		
//		Retrieving SubCategory Data through List 
		model.addAttribute("subCategoryListNormal", this.subCategoryService.listSubCategory());		
//		Retrieving SubCategory Data through GsontoJson Conversion
		model.addAttribute("subCategoryListJson",this.subCategoryService.listSubCategoryViaJson());
		
//		Retrieving TodaysMessage through list
		model.addAttribute("todaysMessageListNormal",this.todaysMessageService.listTodaysMessage());
		
//		Retrieving Product Enabled Data through GsontoJson Conversion		
		model.addAttribute("productFullViewEnabledJson",this.productFullViewService.listProductEnabledFullviewViaJson());
		
		try{
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String user = authentication.getName();
		int userId = userService.getUserDetailsFromName(user).getUserId();
		
		session.setAttribute("cartListNo",this.cartItemService.listCartItemViaUserId(userId).size());
		}
		catch(Exception e)
		{
			session.setAttribute("cartListNo",0);
		}
	}
}
