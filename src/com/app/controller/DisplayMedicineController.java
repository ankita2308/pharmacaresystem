package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.service.IMedicineService;

@Controller
@RequestMapping("/view")
public class DisplayMedicineController {
	
  @Autowired
  private IMedicineService service;
  
  
  
  public DisplayMedicineController()
	{
		System.out.println("In constructor of display medicine controller");
	}
	
  
  @RequestMapping(method = RequestMethod.GET)
  public String doGet(ModelMap map)
  {
	  
	  map.addAttribute("medicine", service.getAll());
	  return "/medicine/display";
	  
  }
}


