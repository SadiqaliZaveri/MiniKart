package com.minikart.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.minikart.model.TodaysMessage;
import com.minikart.service.TodaysMessageService;



@Controller
public class TodaysMessageController {
	
	@Autowired
	private TodaysMessageService todaysMessageService;
	
	@RequestMapping(value="/add/todaysmessage", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("todaysMessage") TodaysMessage todaysMessage)
	{
		this.todaysMessageService.addMessage(todaysMessage);
		return "redirect:/admin";
		
	}
	
	@RequestMapping(value= "/editTodaysMessage-{messageId}" , method = RequestMethod.GET)
	public String editTodaysMessage(@PathVariable("messageId") int messageId, Model model)
	{
		model.addAttribute("todaysMessage",todaysMessageService.getById(messageId));
		return "EditTodaysMessage";
	}
	
	@RequestMapping(value="/deleteTodaysMessage-{messageId}", method=RequestMethod.GET)
	public String deleteTodaysMessage(@PathVariable("messageId") int messageId )
	{
		todaysMessageService.deleteTodaysMessage(messageId);
		return "redirect:/admin";	
	}
}
