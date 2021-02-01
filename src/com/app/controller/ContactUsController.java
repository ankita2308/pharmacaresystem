package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.app.pojos.Email;

@Controller
@RequestMapping("/contactus")
public class ContactUsController {
	@Autowired
	private JavaMailSender sender;
	

	public ContactUsController() 
	{
		System.out.println("In ctor of " + getClass().getName());
	}
	
	
	@RequestMapping
	public String showForm(Email e)
	{
	//	m.addAttribute(new Email());
		System.out.println("In show contact us Page...");
		return "/contactus/contactus";
	}
	@RequestMapping(method=RequestMethod.POST)
	public String processForm( Email em,BindingResult res)
	
	{
		System.out.println("In do post contact us Page...");
		System.out.println(em.getDestEmail()+"  "+em.getMessage());
		SimpleMailMessage mesg=new SimpleMailMessage();
		mesg.setTo(em.getDestEmail());
		mesg.setSubject(em.getSubject());
		mesg.setText(em.getMessage());
		sender.send(mesg);
		return "/contactus/sent-mail";
	}

}

