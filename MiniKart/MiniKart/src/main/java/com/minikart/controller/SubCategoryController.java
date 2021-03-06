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
import com.minikart.model.SubCategory;
import com.minikart.service.CategoryService;
import com.minikart.service.SubCategoryService;
@Controller
public class SubCategoryController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;

	
	
	//SUBCATEGORIES ADD ACTION
		@RequestMapping(value= "/add/subcategories", method = RequestMethod.POST)
		public String addSubCategory(@Valid @ModelAttribute("subCategory") SubCategory subCategory, BindingResult bindingResult, HttpServletRequest request){
			Category category = categoryService.getIdByName(subCategory.getCategory().getCategoryName());
			categoryService.addCategory(category);
			subCategory.setCategory(category);
			subCategory.setCategoryId(category.getCategoryId());
			if(bindingResult.hasErrors())
			{
				HttpSession session = request.getSession();
				session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Enable Javascript \\ Insert Valid Data  or Contact Support.</div>");
				return "redirect:/admin";
			}
			this.subCategoryService.addSubCategory(subCategory);
			return "redirect:/admin";
			
		}
		
	//SUBCATEGORY EDIT ACTION
		@RequestMapping(value="/editsub-{subCategoryId}", method = RequestMethod.GET)
		public String editSubCategory(Model model,@PathVariable("subCategoryId") int subCategoryId){

			
//			Retrieving Category Data through List
			model.addAttribute("categoryListNormal", this.categoryService.listCategory());
			model.addAttribute("subCategory", subCategoryService.getIdFromId(subCategoryId));
//			Retrieving SubCategory Data through GsontoJson Conversion 
			model.addAttribute("subCategoryListJson",this.subCategoryService.listSubCategoryViaJson());
			
			return "EditSubCategory";
		}
		
	//SUBCATEGORY DELETE ACTION	
		@RequestMapping("/deletesub-{subCategoryId}")
	    public String deleteSubCategory(@PathVariable("subCategoryId") int subCategoryId, HttpServletRequest request){
			
			
			try{
				subCategoryService.deleteSubCategory(subCategoryId);
				}
				catch(DataIntegrityViolationException e)
				{
					HttpSession session = request.getSession();
					session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Cannot Delete SubCategory. DataIntegrityViolation</div>");
					
				}
	        
	        return "redirect:/admin";
	    }
	
}
