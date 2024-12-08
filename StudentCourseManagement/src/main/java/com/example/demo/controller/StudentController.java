package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Student;
import com.example.demo.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController
{
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/")
	public ModelAndView home() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("home");
		return mv;
	}
	
	@GetMapping("studentlogin")
	public ModelAndView studentlogin() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("studentlogin");
		return mv;
	}
	@GetMapping("studentreg")
	public ModelAndView studentreg() {
		ModelAndView mv= new ModelAndView();
		mv.setViewName("studentreg");
		return mv;
	}
	  @GetMapping("studentprofile")
	  public ModelAndView studentprofile()
	  {
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("studentprofile");
	    return mv;
	  }
	  
	  @GetMapping("Courses")
	  public ModelAndView Courses() {
		  ModelAndView mv=new ModelAndView();
		  mv.setViewName("Courses");
		  return mv;
	  }
	  
	  
	  @GetMapping("studenthome")
	  public ModelAndView studenthome()
	  {
	    ModelAndView mv=new ModelAndView();
	    mv.setViewName("studenthome");
	    return mv;
	  }
	 
	  
	@PostMapping("insertstudent")
	public ModelAndView insertcustomer(HttpServletRequest request) {
		String name=request.getParameter("cname");
		String gender=request.getParameter("cgender");
		String dob=request.getParameter("cdob");
		String email=request.getParameter("cemail");
		String location=request.getParameter("clocation");
		String contact=request.getParameter("ccontact");
		String password=request.getParameter("cpwd");
		
		Student student=new Student();
		student.setName(name);
		student.setGender(gender);
		student. setDateofbirth(dob);
		student.setEmail(email);
		student.setLocation(location);
		student.setContact(contact);
		student.setPassword(password);
		
		
		String message= studentService.StudentRegistration(student);
		
	    ModelAndView mv =new ModelAndView();
	    mv.setViewName("studentregsuccess");
	    mv.addObject("message",message);
	    return mv;
	    		
		
	}
	  @PostMapping("checkstudentlogin")
	  public ModelAndView checkstudentlogin(HttpServletRequest request)
	  {
	    ModelAndView mv=new ModelAndView();
	    String cemail=request.getParameter("cemail");
	    String cpwd=request.getParameter("cpwd");
	    
	    Student student=studentService.checkStudentLogin(cemail, cpwd);
	    if(student!=null)
	    {
	      HttpSession session=request.getSession();
	      session.setAttribute("student", student);
	      mv.setViewName("studenthome");
	    }
	    else
	    {
	      mv.setViewName("studentlogin");
	      mv.addObject("msg","Login Failed");
	    }
	    return mv;
	  }
	
	 
	
}
