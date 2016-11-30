package com.minikart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.minikart.model.ProductSpecification;
import com.minikart.service.ProductSpecificationService;

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
		public String addproductspec(@PathVariable("productId") int productId,@ModelAttribute("productSpecification") ProductSpecification productSpecification, HttpSession session){
			
			productSpecification.setProductId(productId);
			
			productSpecificationService.addProductSpecification(productSpecification);
			
			return "redirect:/"+session.getAttribute("pageFrom");
			
		}
		
		@RequestMapping(value="/editprodspec-{productId}", method=RequestMethod.GET)
		public String editproductspec(@PathVariable("productId") int productId, Model model, HttpServletRequest request)
		{
			try{
			model.addAttribute("productSpecification",productSpecificationService.getIdFromId(productId));
			
			}
			catch(Exception e)
			{
				HttpSession session = request.getSession();
				session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Please Add Info Before Editing</div>");
				return "redirect:/"+session.getAttribute("pageFrom");
			}
			return "EditProductSpecForm";
			
		}
		
		public void deleteproductspec(int id)
		{
			productSpecificationService.deleteProductSpecification(id);	
		}


}
