package com.minikart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.minikart.model.Category;
import com.minikart.service.CategoryService;


@Controller
public class MiniKartController {
	
	@Autowired
	private CategoryService categoryService;

	
	@RequestMapping(value={"/","Home","home"})
public String HomePage(Model model)
{
		model.addAttribute("category", new Category());
//		Retrieving Category Data through List
		model.addAttribute("categoryListNormal", this.categoryService.listCategory());	
		
		
	

		return "Home";
}
	
}
