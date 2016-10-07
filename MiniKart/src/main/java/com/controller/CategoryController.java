package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;

public class CategoryController {
	@SuppressWarnings("unused")
	@Autowired
	private Category categoryservice;
	
	public void setCategoryservice(Category categoryservice) {
		this.categoryservice = categoryservice;
	}
	
	@RequestMapping("/category")
	public String category(Model model)
	{
		model.addAttribute("category", new Category());
		return "Category";
	
	}
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("category") Category category){
		
		
		return "redirect:/Category";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removePerson(@PathVariable("id") int id){
		
       
        return "redirect:/Category";
    }
	
}
