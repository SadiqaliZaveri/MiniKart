package com.minikart.controller;


import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.minikart.model.Category;
import com.minikart.service.CategoryService;


@Controller
public class MiniKartController {
	
	
@Autowired
private CategoryService categoryService;
	
	
	@RequestMapping(value={"/","Home","home"})
	public String HomePage()
	{
			
			return "Home";
	}
	@RequestMapping("/403")
	public String AccessDeniedPage()
	{
		return "403";
	}
	
	@RequestMapping("/FAQ")
	public String FAQPage()
	{
		return "FAQ";
	}
	
	@RequestMapping("/contactus")
	public String ContactUsPage()
	{
		return "ContactUs";
	}
	@RequestMapping("/checkoutsuccess")
	public String checkout()
	{
		return "Home";
	}
	

	
	


	
		 
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody String getTags(@RequestParam String categoryName) {
		
		return simulateSearchResult(categoryName);

	}

	private String simulateSearchResult(String categoryName) {

		List<Category> result = new ArrayList<Category>();
		List<Category> data = categoryService.listCategory();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String j = null;
		// iterate a list and filter by tagName
		for(Category tag : data) {
			
			if (tag.getCategoryName().contains(categoryName)) {
				
				result.add(tag);
				j=gson.toJson(result);
				
			}
		}
		
		return j;
	}
	
}
