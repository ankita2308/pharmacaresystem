package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Medicine;
import com.app.service.IMedicineService;

@Controller
@RequestMapping("/medicine")
public class MedicineController {
	
	@Autowired 
	private IMedicineService service;
	
	public MedicineController()
	{
		System.out.println("In constructor of medicine controller");
	}
	
	//@RequestMapping(method = RequestMethod.GET)
	@GetMapping
	public String doGet()
	{
		System.out.println("In do get of medicine controller");
		//return "/medicine/add";
		return "/medicine/add";
	}
	
	
	@PostMapping
	public String doPost(@ModelAttribute("medcine")Medicine m,RedirectAttributes flashMap)
	{
		System.out.println("In do post of medicine controller");
		
		
		flashMap.addFlashAttribute("mesg",service.insert(m));
		
		
		return  "redirect:/view?success";
		
		
	}
	
	/*//@RequestMapping(method=RequestMethod.POST)
	@PostMapping
	public String doPost(@ModelAttribute("medcine")Medicine m,RedirectAttributes flashMap)
	{
		System.out.println("In do post of medicine controller");
		if(m.getMedicineId()==null||m.getMedicineId()==0)
		{
		
		flashMap.addFlashAttribute("mesg",service.insert(m));
		}
		else
		{
		flashMap.addFlashAttribute("mesg",service.update(m));
			
		}
		
		return  "redirect:/view?success";
		
		
	}
*/
}
