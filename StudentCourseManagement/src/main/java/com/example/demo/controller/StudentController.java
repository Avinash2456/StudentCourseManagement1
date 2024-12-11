package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Contact;
import com.example.demo.model.Course;
import com.example.demo.model.Feedback;
import com.example.demo.model.Student;
import com.example.demo.service.CourseService;
import com.example.demo.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    private CourseService courseService;

    @GetMapping("/")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("home");
        return mv;
    }

    @GetMapping("studentlogin")
    public ModelAndView studentlogin() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentlogin");
        return mv;
    }

    @GetMapping("studentreg")
    public ModelAndView studentreg() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentreg");
        return mv;
    }

    @GetMapping("studentprofile")
    public ModelAndView studentprofile() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentprofile");
        return mv;
    }

    @GetMapping("Courses")
    public ModelAndView Courses() {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("Courses");
        return mv;
    }

    @GetMapping("studenthome")
    public ModelAndView studenthome(HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        if (student == null) {
            return new ModelAndView("redirect:/studentlogin");
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studenthome");
        return mv;
    }

    @PostMapping("insertstudent")
    public ModelAndView insertcustomer(HttpServletRequest request) {
        String name = request.getParameter("cname");
        String gender = request.getParameter("cgender");
        String dob = request.getParameter("cdob");
        String email = request.getParameter("cemail");
        String location = request.getParameter("clocation");
        String contact = request.getParameter("ccontact");
        String password = request.getParameter("cpwd");

        Student student = new Student();
        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);
        student.setPassword(password);

        String message = studentService.StudentRegistration(student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentregsuccess");
        mv.addObject("message", message);
        return mv;
    }

    @PostMapping("checkstudentlogin")
    public ModelAndView checkstudentlogin(HttpServletRequest request, HttpSession session) {
        ModelAndView mv = new ModelAndView();
        String cemail = request.getParameter("cemail");
        String cpwd = request.getParameter("cpwd");

        Student student = studentService.checkStudentLogin(cemail, cpwd);
        if (student != null) {
            session.setAttribute("student", student);
            mv.setViewName("studenthome");
        } else {
            mv.setViewName("studentlogin");
            mv.addObject("msg", "Login Failed");
        }
        return mv;
    }

    @GetMapping("viewstucourse")
    public ModelAndView viewstucourse(HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        if (student == null) {
            return new ModelAndView("redirect:/studentlogin");
        }

        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewstucourse");
        List<Course> courses = studentService.viewAllCourses();
        mv.addObject("courselist", courses);
        return mv;
    }

    @PostMapping("submitFeedback")
    public ModelAndView contactstudent(HttpServletRequest request) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String navigation = request.getParameter("navigation");
        String contentrating = request.getParameter("contentRating");
        String comments = request.getParameter("comments");

        Feedback feedback = new Feedback();
        feedback.setStudentName(name);
        feedback.setEmail(email);
        feedback.setNavigationRating(navigation);
        feedback.setContentRating(contentrating);
        feedback.setComments(comments);

        String message = studentService.Feedbacksave(feedback);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentfeedbacksuccess");
        mv.addObject("message", message);
        return mv;
    }

    @GetMapping("forgotpassword")
    public ModelAndView forgotPassword() {
        return new ModelAndView("forgotpassword");
    }

    @PostMapping("verifydetails")
    public ModelAndView verifyDetails(@RequestParam("email") String email,
                                       @RequestParam("contact") String contact,
                                       HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student student = studentService.getStudentByEmailAndContact(email, contact);

        if (student != null) {
            session.setAttribute("verifiedEmail", email);
            mv.setViewName("resetpassword");
        } else {
            mv.setViewName("forgotpassword");
            mv.addObject("errorMessage", "Invalid email or contact!");
        }

        return mv;
    }

    @PostMapping("resetpassword")
    public ModelAndView resetPassword(@RequestParam("newPassword") String newPassword,
                                       @RequestParam("confirmPassword") String confirmPassword,
                                       HttpSession session) {
        ModelAndView mv = new ModelAndView();
        String email = (String) session.getAttribute("verifiedEmail");

        if (email == null) {
            mv.setViewName("forgotpassword");
            mv.addObject("errorMessage", "Session expired. Please try again.");
            return mv;
        }

        if (!newPassword.equals(confirmPassword)) {
            mv.setViewName("resetpassword");
            mv.addObject("errorMessage", "Passwords do not match!");
            return mv;
        }

        Student student = studentService.getStudentByEmail(email);
        student.setPassword(newPassword);
        studentService.updateStudentPassword(student);

        mv.setViewName("studentlogin");
        mv.addObject("successMessage", "Password reset successfully! Please log in.");
        session.removeAttribute("verifiedEmail");
        return mv;
    }
    
    
    @GetMapping("editprofile")
    public ModelAndView editProfile(HttpSession session) {
        ModelAndView mv = new ModelAndView();
        Student student = (Student) session.getAttribute("student");

        if (student == null) {
            mv.setViewName("redirect:/studentlogin"); 
        } else {
            mv.setViewName("editprofile");
            mv.addObject("student", student); 
        }

        return mv;
    }

    
    @PostMapping("updateStudentProfile")
    public ModelAndView updateStudentProfile(HttpServletRequest request, HttpSession session) {
        Student student = (Student) session.getAttribute("student");
        if (student == null) {
            return new ModelAndView("redirect:/studentlogin");
        }

        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");
        String email = request.getParameter("email");
        String location = request.getParameter("location");
        String contact = request.getParameter("contact");

        student.setName(name);
        student.setGender(gender);
        student.setDateofbirth(dob);
        student.setEmail(email);
        student.setLocation(location);
        student.setContact(contact);

        String message = studentService.updateStudentProfile(student);

        session.setAttribute("student", student);

        ModelAndView mv = new ModelAndView();
        mv.setViewName("studentprofile");
        mv.addObject("message", "Profile updated successfully!");

        return mv;
    }
    @GetMapping("studentviewallcourse") 
    public ModelAndView studentviewallcourse(HttpSession session) { 
        Student student = (Student) session.getAttribute("student"); 
        ModelAndView mv = new ModelAndView(); 

        if (student == null) { 
            mv.setViewName("studentlogin"); 
            mv.addObject("msg", "Please log in first."); 
        } else { 
            List<Course> courses = studentService.viewAllCourses(); 
            mv.setViewName("studentviewallcourse"); 
            mv.addObject("courselist", courses); 
        } 
        return mv; 
    } 

    @PostMapping("registercourse") 
    public ModelAndView registerCourse(HttpServletRequest request, HttpSession session) { 
        int courseId = Integer.parseInt(request.getParameter("courseId")); 
        Student student = (Student) session.getAttribute("student"); 

        if (student == null) { 
            ModelAndView mv = new ModelAndView(); 
            mv.setViewName("studentlogin"); 
            mv.addObject("msg", "Please log in first."); 
            return mv; 
        } 

        String message = studentService.registerCourse(student.getId(), courseId); 
        List<Course> registeredCourses = studentService.getRegisteredCourses(student.getId()); 

        ModelAndView mv = new ModelAndView(); 
        mv.setViewName("registeredcourses"); 
        mv.addObject("courses", registeredCourses); 
        mv.addObject("msg", message); 
        return mv; 
    } 

    @GetMapping("registeredcourses") 
    public ModelAndView viewRegisteredCourses(HttpSession session) { 
        Student student = (Student) session.getAttribute("student"); 

        if (student == null) { 
            ModelAndView mv = new ModelAndView(); 
            mv.setViewName("studentlogin"); 
            mv.addObject("msg", "Please log in first."); 
            return mv; 
        } 

        List<Course> registeredCourses = studentService.getRegisteredCourses(student.getId()); 
        ModelAndView mv = new ModelAndView(); 
        mv.setViewName("registeredcourses"); 
        mv.addObject("courses", registeredCourses); 
        return mv; 
    }
    
    
    

}
