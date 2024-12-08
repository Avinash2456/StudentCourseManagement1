package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@GetMapping("Contact")
	public ModelAndView Contactus() {
		 ModelAndView mv=new ModelAndView();
		    mv.setViewName("Contact");
		    return mv;
	}

	
	@GetMapping("Aboutus")
	public ModelAndView Aboutus() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("Aboutus");
		return mv;
	}
}
