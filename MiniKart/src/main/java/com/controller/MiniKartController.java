package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MiniKartController {
	@RequestMapping("/")
public String HomePage()
{
	return "Home";
}
}
