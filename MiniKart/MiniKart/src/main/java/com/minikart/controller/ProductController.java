package com.minikart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import com.minikart.model.Category;
import com.minikart.model.Product;
import com.minikart.model.ProductFullView;
import com.minikart.model.SubCategory;
import com.minikart.model.Supplier;
import com.minikart.service.CategoryService;
import com.minikart.service.ProductFullViewService;
import com.minikart.service.ProductService;
import com.minikart.service.SubCategoryService;
import com.minikart.service.SupplierService;

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
	@Autowired
	private ProductFullViewService productFullViewService;
	
	
	@RequestMapping("/products")
	public String product(Model model)
	{
//		Creating New Product
		model.addAttribute("product", new Product());			
//		Retrieving Product Data through List
		model.addAttribute("productListNormal",this.productService.listProduct());
//		Retrieving Product Data through GsontoJson Conversion
		model.addAttribute("productListJson",this.productService.listProductViaJson());
			
		return "admin";	
	}
		
		//PRODUCT ADD ACTION	
		@RequestMapping(value="/add/products", method = RequestMethod.POST)
		public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult bindingResult, HttpServletRequest request){
			
			HttpSession session;
			session = request.getSession();
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
			
			
			if(bindingResult.hasErrors())
			{
				
				session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Enable Javascript \\ Insert Valid Data  or Contact Support.</div>");
				return "redirect:/"+session.getAttribute("pageFrom");
			}
			
			Date currentDate = new Date();
			product.setProductDate(currentDate);
			
			
			this.productService.addProduct(product);
			
			
			String path= System.getProperty("user.home")+"\\workspace\\MiniKart\\MiniKart\\src\\main\\webapp\\resources\\images\\product";
//			String path= "C:\\Users\\Taena\\workspace\\MiniKart\\MiniKart\\src\\main\\webapp\\resources\\images\\product";
			path = path+""+product.getProductId()+".jpg";
			try
			{
			File f = new File(path);
			MultipartFile m = product.getProductImage();
			byte[] b = m.getBytes();
			FileOutputStream fos = new FileOutputStream(f);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			bos.write(b);
			bos.close();
			}
			catch (Exception e) {
				System.out.println("ERROR WHILE IMAGE INPUT");
			}
			return "redirect:/"+session.getAttribute("pageFrom");
		}
		
		//Product EDIT ACTION
		@RequestMapping(value="/editprod-{productId}", method = RequestMethod.GET)
		public String editproduct(Model model,@PathVariable("productId") int productId){
					
//					Retrieving Category Data through List
					model.addAttribute("categoryListNormal", this.categoryService.listCategory());	
//					Retrieving SubCategory Data through List 
					model.addAttribute("subCategoryListNormal", this.subCategoryService.listSubCategory());	
//					Retrieving Supplier Data through List
					model.addAttribute("supplierListNormal",this.supplierService.listSupplier());					
					model.addAttribute("product", productService.getIdFromId(productId));									
					return "EditProduct";
				}

		//SUBCATEGORY DELETE ACTION	
		@RequestMapping("/deleteprod-{productId}")
		public String deleteproduct(@PathVariable("productId") int productId){
						
					
			        this.productService.deleteProduct(productId); 
			        File file = new File(System.getProperty("user.home")+"\\workspace\\MiniKart\\MiniKart\\src\\main\\webapp\\resources\\images\\product"+productId+".jpg");
					file.delete();
			        return "redirect:/admin";
			}
		
		
//		@RequestMapping(value="/viewprod-{productId}", method = RequestMethod.GET)
//		public ModelAndView viewproduct(@ModelAttribute("product") Product product,@PathVariable("productId") int productId){
//			
//			Product p = productService.getIdFromId(productId);
//			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
//			String g = gson.toJson(p);
//			ModelAndView model = new ModelAndView("ProductFullView");
//			model.addObject("particularProduct", g);
//			
//			
//			return model;
//			
//		}
		
		@RequestMapping(value="/viewfullprod-{productId}", method = RequestMethod.GET)
		public ModelAndView viewproduct(@ModelAttribute("product") ProductFullView productFullView, @PathVariable("productId") int productFullViewId){
			
			ProductFullView p = productFullViewService.getIdFromId(productFullViewId);
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String g = gson.toJson(p);
			ModelAndView model = new ModelAndView("ProductFullView");
			model.addObject("particularProductFullView", g);
			
			
			return model;
			
		}
		
		@RequestMapping("/toggleproduct-{productId}")
		public String toggleUser(@PathVariable("productId") int productId)
		{

			productService.enableDisableProduct(productId);			
			return "redirect:/admin";
		}
		
		@RequestMapping("/filter")
		public String filterProducts()
		{
			return "ProductFilter";
		}
	}

		
