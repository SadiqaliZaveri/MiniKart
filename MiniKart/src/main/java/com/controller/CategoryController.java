package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;
import com.service.*;
@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryservice;
	
	@RequestMapping("/Categories")
	public String category(Model model)
	{
		//model.addAttribute("categorylist", this.categoryservice.listCategory());
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList",this.categoryservice.stringCategory());
		return "Categories";
	
	}
	@RequestMapping(value= "/add/categories", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("category") Category category){
		this.categoryservice.addCategory(category);
		return "redirect:/Categories";
		
	}

	
}
