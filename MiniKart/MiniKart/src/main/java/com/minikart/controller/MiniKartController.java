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
import com.minikart.model.SubCategory;
import com.minikart.service.SubCategoryService;


@Controller
public class MiniKartController {
	
	
@Autowired
private SubCategoryService subCategoryService;
	
	
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
	
	@RequestMapping("/404")
	public String ResourceNotFoundPage()
	{
		
		return "404";
	}

	
	


	
		 
	@RequestMapping(value = "/getTags", method = RequestMethod.GET)
	public @ResponseBody String getTags(@RequestParam String subCategoryName) {
		
		return simulateSearchResult(subCategoryName.toLowerCase());
		

	}

	private String simulateSearchResult(String subCategoryName) {

		List<SubCategory> result = new ArrayList<SubCategory>();
		List<SubCategory> data = subCategoryService.listSubCategory();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String j = null;
		// iterate a list and filter by tagName
		for(SubCategory tag : data) {
			
			if (tag.getSubCategoryName().toLowerCase().contains(subCategoryName)) {
				
				result.add(tag);
				j=gson.toJson(result);
				
			}
		}
		
		return j;
	}
	
}
