package com.example.demo.controller;


import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Student;
import com.example.demo.model.Course;
import com.example.demo.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.PostMapping;



@Controller
public class AdminController 
{
  @Autowired
  private AdminService adminService;
  
  @GetMapping("adminlogin")
  public ModelAndView adminlogin()
  {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("adminlogin");
    return mv;
  }
  @GetMapping("adminhome")
  public ModelAndView adminhome()
  {
    ModelAndView mv=new ModelAndView("adminhome");
    long count=adminService.studentcount();
    mv.addObject("count",count);
    long ccount=adminService.coursecount();
    mv.addObject("ccount",ccount);
    return mv;
  }
  
  @PostMapping("checkadminlogin")
  public ModelAndView checkadminlogin(HttpServletRequest request)
  {
    ModelAndView mv=new ModelAndView();
    String auname=request.getParameter("auname");
    String apwd=request.getParameter("apwd");
    
    Admin admin=adminService.checkAdminLogin(auname, apwd);
    if(admin!=null)
    {
      mv.setViewName("adminhome");
      
      long count=adminService.studentcount();
      long ccount=adminService.coursecount();
      mv.addObject("count",count);
      mv.addObject("ccount",ccount);
    }
    else
    {
      mv.setViewName("adminloginfail");
      mv.addObject("msg","Login Failed");
    }
    return mv;
  }
  @GetMapping("viewallstudents")
  public ModelAndView viewallstudents() {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("viewallstudents");
    long count=adminService.studentcount();
    mv.addObject("count",count);
    List<Student> students=adminService.viewAllStudents();
    mv.addObject("studentlist",students);
    return mv;
  }
  
  @GetMapping("viewallcourse")
  public ModelAndView viewallcourse() {
    ModelAndView mv=new ModelAndView();
    mv.setViewName("viewallcourse");
    long ccount=adminService.coursecount();
    mv.addObject("ccount",ccount);
    List<Course> courses=adminService.viewAllCourses();
    mv.addObject("courselist",courses);
    return mv;
  }
  
  @GetMapping("addcourse")
  public ModelAndView addCourseForm() {
      ModelAndView mv = new ModelAndView("addcourse");
      return mv;
  }

  // New method to handle course addition
  @PostMapping("savecourse")
  public ModelAndView saveCourse(HttpServletRequest request) {
      String courseName = request.getParameter("courseName");
      String courseCode = request.getParameter("courseCode");
      String courseDescription = request.getParameter("courseDescription");
  
      Course course = new Course(courseName,courseCode, courseDescription);
      adminService.addCourse(course);
  
      ModelAndView mv = new ModelAndView("adminhome");
      mv.addObject("msg", "Course added successfully!");
      return mv;
  }
    
  
  
}