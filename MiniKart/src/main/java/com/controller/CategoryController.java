package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;
import com.model.Product;
import com.model.SubCategory;
import com.service.*;
@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private ProductService productService;
	
	
	
	@RequestMapping("/categories")
	public String category(Model model)
	{
//		Creating New Category
		model.addAttribute("category", new Category());		
		
//		Creating New SubCategory
		model.addAttribute("subCategory", new SubCategory());
		
		model.addAttribute("product", new Product());
		
//		Retrieving Category Data through List
		model.addAttribute("categoryListNormal", this.categoryService.listCategory());		
//		Retrieving Category Data through GsontoJson Conversion 
		model.addAttribute("categoryListJson",this.categoryService.listCategoryViaJson());
		
//		Retrieving SubCategory Data through List 
		model.addAttribute("subCategoryListNormal", this.subCategoryService.listSubCategory());		
//		Retrieving SubCategory Data through GsontoJson Conversion
		model.addAttribute("subCategoryListJson",this.subCategoryService.listSubCategoryViaJson());
		
//		Retrieving SubCategory Data through List
		model.addAttribute("productListNormal",this.productService.listProduct());
//		Retrieving SubCategory Data through GsontoJson Conversion
		model.addAttribute("productListJson",this.productService.listProductViaJson());
		
		return "categories";
	}
//CATEGORY ADD ACTION	
	@RequestMapping(value= "/add/categories", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category){
		this.categoryService.addCategory(category);
		return "redirect:/categories";
		
	}
	
	
//SUBCATEGORIES ADD ACTION
	@RequestMapping(value= "/add/subcategories", method = RequestMethod.POST)
	public String addSubCategory(@ModelAttribute("subCategory") SubCategory subCategory){
		Category category = categoryService.getIdFromName(subCategory.getCategory().getCategoryName());
		categoryService.addCategory(category);
		subCategory.setCategory(category);
		subCategory.setCategoryId(category.getCategoryId());
		this.subCategoryService.addSubCategory(subCategory);
		return "redirect:/categories";
		
	}
//PRODUCT ADD ACTION	
	@RequestMapping(value="/add/products", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product){
		
//		Creating a SubCategory object --> calling the service of that object and using the getIdFromName method -->
//		In parenthesis we use model attribute product to get whole SubCategory then we use thats SubCategory's,
//		getSubCategoryName method
		
		SubCategory subCategory = subCategoryService.getIdFromName(product.getSubCategory().getSubCategoryName());
		subCategoryService.addSubCategory(subCategory);
		product.setSubCategory(subCategory);
		product.setSubCategoryId(subCategory.getSubCategoryId());
		this.productService.addProduct(product);
		return "redirect:/categories";
		
	}
	
}
