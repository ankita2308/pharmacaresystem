package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.app.service.IMedicineService;

@Controller
@RequestMapping("/delete")
public class DeleteMedicineController {
	
	@Autowired
	private IMedicineService service;
	
	public DeleteMedicineController(){
		System.out.println("In Constructor Of Delete medicine conroller");
	}
	

	@GetMapping(value = "/{id}")
    public String doGet(@PathVariable("id") int id,RedirectAttributes flashMap)
    {
		
        //service.delete(id);
        flashMap.addFlashAttribute("mesg",service.delete(id));
        return "redirect:/view?success";//redirect view 
        //in successful delete 
    }

}
