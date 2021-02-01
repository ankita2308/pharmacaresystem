package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.app.pojos.User;
import com.app.service.IDiseaseService;
import com.app.service.IMedicineService;
import com.app.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private IUserService service;
	@Autowired 
	private IMedicineService mservice;
	@Autowired
	private IDiseaseService dservice;
	
	public UserController()
	{
		System.out.println("In constructor of user controller");
	}
	
	//key : /user/display + method=get
	// value : UserController:UserDisplay()

	//@RequestMapping(method=RequestMethod.GET)
	@GetMapping("/add")
	public String UserDisplay(ModelMap map)
	{
		System.out.println("In add page of user");
		map.addAttribute("disease",dservice.getAll());
		//System.out.print(dservice.getAll());
		map.addAttribute("medicine",mservice.getAll());
		//System.out.print(mservice.getAll());
		return "/user/add";//forward : actual view name : /WEB-INF/views/user/add.jsp
	}
	
	
	
	//@RequestMapping(method=RequestMethod.POST)
	@PostMapping("/add")
	public String doPost(User u)
	{
		System.out.println("In do post of user controller");
		service.insert(u);
		return  "redirect:/view2?success";
		//return "/view/display";
		
	}
	

}
