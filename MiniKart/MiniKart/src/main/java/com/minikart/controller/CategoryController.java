package com.minikart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.minikart.model.Category;
import com.minikart.service.CategoryService;





@Controller
public class CategoryController {
	
	
	
	@Autowired
	private CategoryService categoryService;


	@RequestMapping("/categories")
	public String categories(Model model) 
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoriesjson",this.categoryService.listCategory());
		model.addAttribute("listCategory",this.categoryService.listCategoryViaJson());
		return "admin";
	}

	
	@RequestMapping(value="/add/categories", method=RequestMethod.POST)
	public String addCategory(@Valid @ModelAttribute("category") Category category, BindingResult bindingResult, HttpServletRequest request)
	{
		if(bindingResult.hasErrors())
		{
			HttpSession session = request.getSession();
			session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Enable Javascript \\ Insert Valid Data  or Contact Support.</div>");
			return "redirect:/admin";
		}
		else
		{
		this.categoryService.addCategory(category);
		return "redirect:/admin";	
		}
	}
	
	
	@RequestMapping(value= "/editCategory-{categoryId}" , method = RequestMethod.GET)
	public String editCategory(@PathVariable("categoryId") int categoryId, Model model)
	{
		model.addAttribute("category",categoryService.getById(categoryId));
		return "EditCategory";
	}
	
	@RequestMapping(value="/delete-{categoryId}", method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("categoryId") int categoryId,HttpServletRequest request)
	{
		try{
		categoryService.deleteCategory(categoryId);
		}
		catch(DataIntegrityViolationException e)
		{
			HttpSession session = request.getSession();
			session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Cannot Delete Category. DataIntegrityViolation</div>");
			
		}
		return "redirect:/admin";	
	}
}
