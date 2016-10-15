package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Product;
import com.model.ProductSpecification;
import com.service.ProductService;
import com.service.ProductSpecificationService;

@Controller
public class ProductSpecificationController {

	@Autowired
	private ProductSpecificationService productSpecificationService;
	@Autowired ProductService productService;

		
	//PRODUCT ADD ACTION	
		@RequestMapping(value="/add/productsSpecification", method = RequestMethod.POST)
		public String addProduct(@ModelAttribute("productSpecification") ProductSpecification productSpecification){
			
			Product product = productService.getIdFromName(productSpecification.getProduct().getProductName());
			productService.addProduct(product);
			productSpecification.setProduct(product);
			productSpecification.setProductId(product.getCategoryId());
			
			this.productSpecificationService.addProductSpecification(productSpecification);
			return "redirect:/admin";
			
		}


}
