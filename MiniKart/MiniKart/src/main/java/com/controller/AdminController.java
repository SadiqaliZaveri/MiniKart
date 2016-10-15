package com.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.model.Category;
import com.model.Product;
import com.model.ProductSpecification;
import com.model.SubCategory;
import com.model.Supplier;
import com.service.*;
@Controller

	
	
public class AdminController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubCategoryService subCategoryService;
	@Autowired
	private SupplierService supplierService;
	@Autowired
	private ProductService productService;
	@Autowired
	private ProductSpecificationService productSpecificationService;
	
	@RequestMapping("/admin")
	public String admin(Model model)
	{
//		Creating New Category
		model.addAttribute("category", new Category());		
		
//		Creating New SubCategory
		model.addAttribute("subCategory", new SubCategory());

//		Creating New Supplier
		model.addAttribute("supplier", new Supplier());
		
//		Creating New Product
		model.addAttribute("product", new Product());
		
//		Creating New ProductSpecification
		model.addAttribute("productSpecification",new ProductSpecification());
		
		
//		Retrieving Category Data through List
		model.addAttribute("categoryListNormal", this.categoryService.listCategory());		
//		Retrieving Category Data through GsontoJson Conversion 
		model.addAttribute("categoryListJson",this.categoryService.listCategoryViaJson());
		
//		Retrieving SubCategory Data through List 
		model.addAttribute("subCategoryListNormal", this.subCategoryService.listSubCategory());		
//		Retrieving SubCategory Data through GsontoJson Conversion
		model.addAttribute("subCategoryListJson",this.subCategoryService.listSubCategoryViaJson());
		
//		Retrieving Supplier Data through List
		model.addAttribute("supplierListNormal",this.supplierService.listSupplier());
//		Retrieving Supplier Data through GsontoJson Conversion
		model.addAttribute("supplierListJson",this.supplierService.listSupplierViaJson());
		
//		Retrieving Product Data through List
		model.addAttribute("productListNormal",this.productService.listProduct());
//		Retrieving Product Data through GsontoJson Conversion
		model.addAttribute("productListJson",this.productService.listProductViaJson());

//		Retrieving ProductSpecification Data through List
		model.addAttribute("producSpecificationtListNormal",this.productSpecificationService.listProductSpecification());
//		Retrieving ProductSpecification Data through GsontoJson Conversion
		model.addAttribute("productSpecificationListJson",this.productSpecificationService.listProductSpecificationViaJson());

		
		return "Admin";
		
	}

}
