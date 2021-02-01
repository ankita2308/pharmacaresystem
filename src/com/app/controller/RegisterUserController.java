package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.pojos.Role;
import com.app.service.IRoleService;

@Controller
@RequestMapping("/role")
public class RegisterUserController {
	@Autowired
	 private IRoleService rservice;
	
	
	public RegisterUserController()
	{
		System.out.println("In constructor of register user controller");
	}
	
	//@RequestMapping(method = RequestMethod.GET)
	@GetMapping("/add")
	public String doGet()
	{
		System.out.println("In do get of register user controller");
		return "/role/add";
	}
	
	//@RequestMapping(method=RequestMethod.POST)
	@PostMapping("/add")
	public String doPost(Role role)
	{
		System.out.println("In do post of registerrole controller");
		
	    rservice.register(role);
		System.out.println("Register new  role successfully");
		return  "redirect:/role/login";
		//return "/view/display";
		
	}
	

}
