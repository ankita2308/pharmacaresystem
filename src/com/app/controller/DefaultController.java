package com.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller   // for telling Sc that is it request Handling Controller
//singleton n eager : Sprig Contaier creates 1 single instance @ deploymet time of web app
@RequestMapping("/")  //optional but recommended for separation
public class DefaultController {
	
	public DefaultController()
	{
		System.out.println("In controller of Default Controller.."+getClass().getName());
		
	}
   //how to tell SC:req handling method
	//add request handling method to display home page
	//what will be the entry in HanadlerMapping bean 
	//key : /index
	//value : com.app.controller.DefaultController.index
	@RequestMapping(method = RequestMethod.GET)
	public String DoGet()
	{
		System.out.println("In show Index Page...");
		return "/index";
		//return "/index1";
		//logical view name(forward view name) -> req handling controller -> Dispatcher Servlet
		//Dispatcher Servlet -> view resolver -> returns to Dispatcher Servlet the actual view
		//Dispatcher Servlet invokes : Request Dispatcher rd=request.getRD("/WEB-INF/jsp/index.jsp");
		//rd.forward(request,response); 
		//index.jsp : can generate dyn conts --control comes back to Dispatcher ---> Web Container ---> WS--resp pkt is sent to clnt
		
	}
	
	
}
