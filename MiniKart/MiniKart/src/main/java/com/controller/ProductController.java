package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;
import com.model.Product;
import com.model.ProductSpecification;
import com.model.SubCategory;
import com.model.Supplier;
import com.service.CategoryService;
import com.service.ProductService;
import com.service.ProductSpecificationService;
import com.service.SubCategoryService;
import com.service.SupplierService;
@Controller
public class ProductController {

	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private ProductService productService;
	@Autowired
	private SupplierService supplierService;
	
	@Autowired ProductSpecificationService productSpecificationService;
	
	@RequestMapping("/products")
	public String product(Model model)
	{
//		Creating New Product
		model.addAttribute("product", new Product());
		
//		Creating New ProductSpecification
		model.addAttribute("productSpecification",new ProductSpecification());
		
//		Retrieving Product Data through List
		model.addAttribute("productListNormal",this.productService.listProduct());
//		Retrieving Product Data through GsontoJson Conversion
		model.addAttribute("productListJson",this.productService.listProductViaJson());
		
//		Retrieving ProductSpecification Data through List
		model.addAttribute("producSpecificationtListNormal",this.productSpecificationService.listProductSpecification());
//		Retrieving ProductSpecification Data through GsontoJson Conversion
		model.addAttribute("productSpecificationListJson",this.productSpecificationService.listProductSpecificationViaJson());
		
		return "admin";
		
	}
		
	//PRODUCT ADD ACTION	
		@RequestMapping(value="/add/products", method = RequestMethod.POST)
		public String addProduct(@ModelAttribute("product") Product product){
			

			Category category = categoryService.getIdByName(product.getCategory().getCategoryName());
			categoryService.addCategory(category);
			product.setCategory(category);
			product.setCategoryId(category.getCategoryId());
			
			
			SubCategory subCategory = subCategoryService.getIdFromName(product.getSubCategory().getSubCategoryName());
			subCategoryService.addSubCategory(subCategory);
			product.setSubCategory(subCategory);
			product.setSubCategoryId(subCategory.getSubCategoryId());
			
			
			Supplier supplier = supplierService.getIdFromName(product.getSupplier().getSupplierName());
			supplierService.addSupplier(supplier);
			product.setSupplier(supplier);
			product.setSupplierId(supplier.getSupplierId());
			
			
			this.productService.addProduct(product);
			return "redirect:/admin";
			
		}
		
		//Product EDIT ACTION
				@RequestMapping(value="/editprod-{productId}", method = RequestMethod.GET)
				public String editSubCategory(Model model,@PathVariable("productId") int productId){
					
//					Retrieving Category Data through List
					model.addAttribute("categoryListNormal", this.categoryService.listCategory());	
//					Retrieving SubCategory Data through List 
					model.addAttribute("subCategoryListNormal", this.subCategoryService.listSubCategory());	
//					Retrieving Supplier Data through List
					model.addAttribute("supplierListNormal",this.supplierService.listSupplier());
					
					model.addAttribute("product", productService.getIdFromId(productId));
					
//					
					
					return "EditProduct";
				}

			//SUBCATEGORY DELETE ACTION	
			@RequestMapping("/deleteprod-{productId}")
			public String deleteSubCategory(@PathVariable("productId") int productId){
					
			        this.productService.deleteProduct(productId);
			        return "redirect:/admin";
			}

}
