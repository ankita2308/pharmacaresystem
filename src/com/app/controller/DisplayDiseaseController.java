package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.service.IDiseaseService;

@Controller
@RequestMapping("/view1")
public class DisplayDiseaseController {
	
	
	
	@Autowired
	private IDiseaseService service;
	
	public DisplayDiseaseController()
	{
		System.out.println("In constructor of display disease controller");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	  public String doGet(ModelMap map)
	  {
		  map.addAttribute("disease", service.getAll());
		  return "/disease/display";
		  
	  }

}
