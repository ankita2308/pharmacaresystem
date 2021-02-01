package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.pojos.Disease;
import com.app.service.IDiseaseService;

@Controller
@RequestMapping("/disease")
public class DiseaseController {
	
	@Autowired
	private IDiseaseService service;
	
	public DiseaseController()
	{
		System.out.println("In constructor of disease controller");
	}
	
	@RequestMapping(method = RequestMethod.GET)
	public String doGet()
	{
		System.out.println("In do get of disease controller");
		return "/disease/add";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String doPost(Disease disease)
	{
		System.out.println("In do post of disease controller");
		service.insert(disease);
		return  "redirect:/view1?success";
		//return "/view/display";
		
	}

}
