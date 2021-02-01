package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.pojos.Medicine;
import com.app.service.IMedicineService;

@Controller
@RequestMapping("/edit")
public class UpdateMedicineController {
	@Autowired
	private IMedicineService service;
	
	
	public UpdateMedicineController()
	{
		System.out.println("In constructor of update controller");
	}
	
	
	@GetMapping("/{id}")
	//handler method
    public String doGet(@PathVariable("id") int id, Model map) {
		System.out.println("In do get of update medicine");
        Medicine medicine = service.getById(id);
        System.out.println("----in updating--------"+medicine);
        if (medicine == null)
        {
            return "redirect:/view?error";
        }
        map.addAttribute("med", medicine);
        //map.put("med", medicine);
        System.out.println(medicine);
       
        return "/medicine/edit";
    }
	
	 //
	 @PostMapping("/{id}")
	 //public String doPost(@PathVariable("id") int id,RedirectAttributes flashMap) 
	 public String doPost(@PathVariable("id") int id,@ModelAttribute("medicine") Medicine medicine,RedirectAttributes flashMap) 
	   {
			System.out.println("In do post of update medicine");
			System.out.println(medicine);
			//System.out.println(id);
			
			//medicine=service.getById(id);
			
		     flashMap.addFlashAttribute("mesg",service.update(medicine));
		     System.out.println(medicine);
		    //flashMap.addFlashAttribute("mesg",service.update(medicine));
		  
		    //flashMap.addFlashAttribute("mesg",service.getById(id));
		    //System.out.println(medicine.getMedicinePrice()); 
	        return "redirect:/view?success"; 
		 
	     
	    }	
	
	
	 
		
	        
}

	
	

   
	
	
	


