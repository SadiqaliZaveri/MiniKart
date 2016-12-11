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


import com.minikart.model.Supplier;
import com.minikart.service.SupplierService;

@Controller
public class SupplierController {
	
@Autowired
private SupplierService supplierService;




@RequestMapping(value="/add/suppliers", method = RequestMethod.POST)
public String addSupplier(@Valid @ModelAttribute("supplier") Supplier supplier, BindingResult bindingResult, HttpServletRequest request)
{
	if(bindingResult.hasErrors())
	{
		HttpSession session = request.getSession();
		session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Enable Javascript \\ Insert Valid Data  or Contact Support.</div>");
		return "redirect:/admin";
	}
	this.supplierService.addSupplier(supplier);
	return "redirect:/admin";	
}
@RequestMapping(value="/editsup-{supplierId}", method = RequestMethod.GET)
public String editSupplier(Model model,@PathVariable("supplierId") int supplierId){
	model.addAttribute("supplier", supplierService.getIdFromId(supplierId));
	return "EditSupplier";
}

@RequestMapping(value="/deletesup-{supplierId}", method = RequestMethod.GET)
public String deleteSupplier(@PathVariable("supplierId") int supplierId, HttpServletRequest request){
	
	try{
		supplierService.deleteSupplier(supplierId);
		}
		catch(DataIntegrityViolationException e)
		{
			HttpSession session = request.getSession();
			session.setAttribute("Error","<div class=\"alert alert-warning\"><a href=\"#\" class=\"close\" data-dismiss=\"alert\" aria-label=\"close\">&times;</a>Operation Failed : Cannot Delete Supplier. DataIntegrityViolation</div>");
			
		}
	
	
	return "redirect:/admin";
}
}
