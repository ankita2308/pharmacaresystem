package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/aboutus")
public class AboutUsController {
	
	public AboutUsController() {
		System.out.println("In ctor of " + getClass().getName());
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String DoGet()
	{
		System.out.println("In show about us Page...");
		//return "/aboutus/about";
		return "/aboutus/aboutus";
		
	}


}
