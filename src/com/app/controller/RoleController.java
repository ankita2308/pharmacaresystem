package com.app.controller;

import java.io.IOException;
import java.security.GeneralSecurityException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Role;
import com.app.pojos.Roles;
import com.app.service.IRoleService;


@Controller
@RequestMapping("/role")
public class RoleController {
	
	//depedent object:Role Contoller
	//depedency object:service interface
	@Autowired
	//search by type ie by IRoleService
	//spring container manage dependency 
	private IRoleService service;
	
	public RoleController() {
		System.out.println("in ctor of " + getClass().getName());
	}

	// add req handling method to respond to get method : to show login form
	// H.M bean : key : /role/login + method=get
	// value : RoleController:showLoginForm()
	
	@GetMapping("/login")
	public String showLoginForm() {
		System.out.println("in show login form");
		return "/role/login";// actual view name : /WEB-INF/views/role/login.jsp
	}

	// B.L method for processing the form. method =post
	@PostMapping("/login")
	//to automatically inject request paramters into request handling method
	//@RequestParam --cotainer call string em=request.getParamater("em") 
	//model ->map of model attribute(hold result of actions :(request scope only)--sc inject empty map
	public String processLoginForm(@RequestParam String em, @RequestParam String pass, Model map,HttpSession hs,RedirectAttributes flashMap) throws GeneralSecurityException, IOException {
		System.out.println("in process login form");
		
		try {
			//invokes service layer method for auth
			//contoller invoke service method for authentication
			String pass1=AESAlgorithm.en(pass);
			Role authenticateRole = service.authenticateRole(em, pass1);
			//login successful : valid user login
			//map.addAttribute("user_dtls", authenticateRole);
			//map.addAttribute("mesg","Login Successful");
			hs.setAttribute("user_dtls", authenticateRole);
			hs.setAttribute("mesg", "Login Successful");
			
			//check role of the logged in user 
			if(authenticateRole.getRole().equals(Roles.ADMIN))
			{
				flashMap.addFlashAttribute("mesg","Admin Logged in successfully...");
				return "redirect:/admin/display";//create AdminController : add req mapping  bcz of double submit issue thats why we use redirect 
			}
			//D.S invokes : response.sendRedirect(response.encodeTedirectURL("/admin/display")) --resp is sent to clnt browser.
			//Clnt sends next url  with method=get : http://host:port/pharmafinal/admin/display
			
			// User : logged in
			
			else
			{
				flashMap.addFlashAttribute("mesg","User Logged in successfully...");
			     return "redirect:/user/add";// create UserController : add req mapping
			}
			
			
			
		} catch (RuntimeException e) {
			//NoResultExc
			//e.printStackTrace();
			System.out.println("err in controller "+e);
			map.addAttribute("mesg","Invalid Login , Pls retry");
			return "/role/login";// def nav : RD's forward 
		}	
		

	}
	// add req handling method for user's logout
		@GetMapping("/logout")
		public String userLogout(HttpSession hs, Model map, HttpServletRequest request, 
				HttpServletResponse response) {
			System.out.println("In role's logout");
			// get user dtls from session scope n add it under model attribute
			map.addAttribute("user_details",hs.getAttribute("user_dtls"));
			// invalidate HttpSession
			hs.invalidate();
			//set refresh header of HTTP resp
			response.setHeader("refresh", "5;url="+request.getContextPath());
			return "/role/logout";// forward view name : /WEB-INF/view/user/logout.jsp
		}

}
