package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.Contact;
import com.example.demo.model.Student;
import com.example.demo.model.Course;
import com.example.demo.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @GetMapping("adminlogin")
    public ModelAndView adminlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("adminlogin");
        return mv;
    }

    @GetMapping("adminhome")
    public ModelAndView adminhome(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("adminhome");
        long count = adminService.studentcount();
        mv.addObject("count", count);
        long ccount = adminService.coursecount();
        mv.addObject("ccount", ccount);
        return mv;
    }

    @PostMapping("checkadminlogin")
    public ModelAndView checkadminlogin(HttpServletRequest request, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        String auname = request.getParameter("auname");
        String apwd = request.getParameter("apwd");

        Admin admin = adminService.checkAdminLogin(auname, apwd);
        if (admin != null) {
            session.setAttribute("admin", admin); 
            mv.setViewName("adminhome");
            long count = adminService.studentcount();
            long ccount = adminService.coursecount();
            mv.addObject("count", count);
            mv.addObject("ccount", ccount);
        } else {
            mv.setViewName("adminloginfail");
            mv.addObject("msg", "Login Failed");
        }
        return mv;
    }

    @GetMapping("viewallstudents")
    public ModelAndView viewallstudents(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("viewallstudents");
        long count = adminService.studentcount();
        mv.addObject("count", count);
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentlist", students);
        return mv;
    }

 

    @GetMapping("addcourse")
    public ModelAndView addCourseForm(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("addcourse");
        return mv;
    }

    @PostMapping("savecourse")
    public ModelAndView saveCourse(HttpServletRequest request, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        String courseName = request.getParameter("courseName");
        String courseCode = request.getParameter("courseCode");
        String courseDescription = request.getParameter("courseDescription");

        Course course = new Course(courseName, courseCode, courseDescription);
        adminService.addCourse(course);

        ModelAndView mv = new ModelAndView("adminhome");
        mv.addObject("msg", "Course added successfully!");
        return mv;
    }

    @PostMapping("savecontact")
    public ModelAndView contactstudent(HttpServletRequest request) {
        String name = request.getParameter("sname");
        String email = request.getParameter("semail");
        String smessage = request.getParameter("smessage");

        Contact contact = new Contact();
        contact.setName(name);
        contact.setEmail(email);
        contact.setMessage(smessage);

        String message = adminService.SaveContact(contact);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentcontactsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("delete")
    public String delete(@RequestParam int id) {
        adminService.deleteStudent(id);
        return "redirect:/deletestudent";
    }

    @GetMapping("deletestudent")
    public ModelAndView deletestudent(HttpSession session) {
        // Check if the admin is logged in via session
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("deletestudent");
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentlist", students);
        return mv;
    }

    @GetMapping("updatestudent/{id}")
    public ModelAndView showUpdateCustomerForm(@PathVariable("id") int id, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView();
        Student student = adminService.displayStudentById(id);
        mv.addObject("student", student);
        mv.setViewName("updatestudent");
        return mv;
    }

    @PostMapping("updatestudent")
    public ModelAndView updateStudent(@ModelAttribute("student") Student student, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        adminService.updateStudent(student);
        ModelAndView mv = new ModelAndView("redirect:/viewallstudents");
        return mv;
    }

    @GetMapping("viewstudentbyid")
    public ModelAndView viewstudentbyid(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView();
        List<Student> students = adminService.viewAllStudents();
        mv.addObject("studentlist", students);
        mv.setViewName("viewstudentbyid");
        return mv;
    }

    @PostMapping("displaystudent")
    public ModelAndView displayCustomer(HttpServletRequest request, HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        int id = Integer.parseInt(request.getParameter("id"));
        Student student = adminService.displayStudentById(id);

        ModelAndView mv = new ModelAndView("displaystudent");
        mv.addObject("student", student);
        return mv;
    }

    @GetMapping("logout")
    public String logout(HttpSession session) {
        session.invalidate(); 
        return "redirect:/adminlogin"; 
    }
    
    
    @GetMapping("viewallcourse")
    public ModelAndView viewallcourse(HttpSession session) {
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("viewallcourse");
        long ccount = adminService.coursecount();
        mv.addObject("ccount", ccount);
        List<Course> courses = adminService.viewAllCourses();
        mv.addObject("courselist", courses);
        return mv;
    }
    
    @GetMapping("viewcoursebyid") 
    public ModelAndView viewcoursebyid() { 
     ModelAndView mv=new ModelAndView(); 
     List<Course> courses=adminService.viewAllCourses(); 
       mv.addObject("courselist",courses); 
        
     mv.setViewName("viewcoursebyid"); 
     return mv; 
    } 
       
    @PostMapping("displaycourse") 
    public ModelAndView displayCourse(HttpServletRequest request) { 
        Long id = Long.parseLong(request.getParameter("id")); 
         
        Course course = adminService.displayCourseById(id); 
         
        ModelAndView mv = new ModelAndView("displaycourse"); 
        mv.addObject("course", course);   
         
        return mv; 
    } 
   
     
     
    @GetMapping("updatecourse/{id}") 
    public ModelAndView showUpdateCourseForm(@PathVariable("id") Long id) { 
        ModelAndView mv = new ModelAndView(); 
        Course course = adminService.displayCourseById(id); 
        mv.addObject("course", course); 
        mv.setViewName("updatecourse"); // View for the update form 
        return mv; 
    } 
   
    
    @PostMapping("/updatecourse") 
    public ModelAndView updateCourse(@ModelAttribute("course") Course course) { 
        adminService.updateCourse(course); 
        ModelAndView mv = new ModelAndView("redirect:/viewallcourses"); 
        return mv; 
    }
    
    @GetMapping("deletecourse")
    public ModelAndView deletecourse(HttpSession session) {
        // Check if the admin is logged in via session
        Admin admin = (Admin) session.getAttribute("admin");
        if (admin == null) {
            return new ModelAndView("redirect:/adminlogin");
        }

        ModelAndView mv = new ModelAndView("deletecourse");
        List<Course> courses = adminService.viewAllCourses();
        mv.addObject("courselist", courses);
        return mv;
    }
    
    
    @GetMapping("deletec") 
    public String deletec(@RequestParam long id) { 
     adminService.deleteCourse(id); 
     return "redirect:/deletecourse"; 
    }
    

}
