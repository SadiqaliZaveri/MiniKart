package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.ProductSpecification;
import com.service.ProductSpecificationService;

@Controller
public class ProductSpecificationController {

	@Autowired
	private ProductSpecificationService productSpecificationService;

	
	//PRODUCT ADD ACTION	
		@RequestMapping(value="/productspec-{productId}", method = RequestMethod.GET)
		public String productspec(Model model,@PathVariable("productId") int productId){
			
			model.addAttribute("productSpecification", new ProductSpecification());
			
			return "ProductSpecForm";
			
		}
		@RequestMapping(value="/addprodspec-{productId}", method = RequestMethod.POST)
		public String addproductspec(@PathVariable("productId") int productId,@ModelAttribute("productSpecification") ProductSpecification productSpecification){
			
			productSpecification.setProductId(productId);
			
			productSpecificationService.addProductSpecification(productSpecification);
			
			return "redirect:/admin";
			
		}


}
