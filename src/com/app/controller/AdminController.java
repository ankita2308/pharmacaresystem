package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
   public AdminController()
   {
	   System.out.println("In constructor of admin controller");
   }
   
   //admin/display
   @GetMapping("/display")
   public String displaydetails()
   
   {
	   System.out.println("In show display page of admin");
	   return "/admin/display";  //forward : actual view name : /WEB-INF/views/admin/display.jsp
   }
}
