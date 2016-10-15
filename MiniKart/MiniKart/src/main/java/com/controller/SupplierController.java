package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.SubCategory;
import com.model.Supplier;
import com.service.SupplierService;

@Controller
public class SupplierController {
	
@Autowired
private SupplierService supplierService;

@RequestMapping("/suppliers")
private String supplier(Model model)
{
	
//	Creating New SubCategory
	model.addAttribute("subCategory", new SubCategory());
	
//	Retrieving Supplier Data through List
	model.addAttribute("supplierListNormal",this.supplierService.listSupplier());
	
//	Retrieving Supplier Data through GsontoJson Conversion
	model.addAttribute("supplierListJson",this.supplierService.listSupplierViaJson());
	
	return "admin";
	
}


@RequestMapping(value="/add/suppliers", method = RequestMethod.POST)
public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
{
	this.supplierService.addSupplier(supplier);
	return "redirect:/admin";	
}
@RequestMapping(value="/editsup-{supplierId}", method = RequestMethod.GET)
public String editSupplier(Model model,@PathVariable("supplierId") int supplierId){
	model.addAttribute("supplier", supplierService.getIdFromId(supplierId));
	return "EditSupplier";
}

@RequestMapping(value="/deletesup-{supplierId}", method = RequestMethod.GET)
public String deleteSupplier(@PathVariable("supplierId") int supplierId){
	this.supplierService.deleteSupplier(supplierId);
	return "redirect:/admin";
}
}
