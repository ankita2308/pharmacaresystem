package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RequestMapping("/services")
public class ServicesController  {
	
	public ServicesController() {
		System.out.println("In ctor of " + getClass().getName());
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String DoGet()
	{
		System.out.println("In service Page...");
		return "/services/service1";
		
	}


}
