package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.service.IUserService;

@Controller
@RequestMapping("/view2")
public class DisplayUserController {
	 @Autowired
	  private IUserService uservice;
	  
	  
	  
	  public DisplayUserController()
		{
			System.out.println("In constructor of display user controller");
		}
		
	  
	  @RequestMapping(method = RequestMethod.GET)
	  public String doGet(ModelMap map)
	  {
		  map.addAttribute("user", uservice.getAllUser());
		  return "/user/display";
		  
	  }

}
