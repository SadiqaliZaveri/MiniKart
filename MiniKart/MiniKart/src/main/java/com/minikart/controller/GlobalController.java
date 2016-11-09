package com.minikart.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;


import com.minikart.service.CategoryService;
import com.minikart.service.ProductService;
import com.minikart.service.SubCategoryService;
import com.minikart.service.TodaysMessageService;

@ControllerAdvice(basePackages={"com.minikart.controller"})
public class GlobalController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private TodaysMessageService todaysMessageService;
	@Autowired
	private ProductService productService;
	
	@ModelAttribute
	public void globalAttribute(Model model)
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
		
//		Retrieving Product Data through GsontoJson Conversion
		model.addAttribute("productListJson",this.productService.listProductViaJson());
		
//		Retrieving Product Data through GsontoJson Conversion
		model.addAttribute("productListEnabledJson",this.productService.listProductEnabledViaJson());
		
	}
}
