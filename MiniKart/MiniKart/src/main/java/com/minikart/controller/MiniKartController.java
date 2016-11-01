package com.minikart.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;




@Controller
public class MiniKartController {
	


	
	@RequestMapping(value={"/","Home","home"})
public String HomePage(Model model)
{
		
		return "Home";
}
	@RequestMapping("/403")
	public String AccessDeniedPage()
	{
		return "403";
	}
	

	
}
