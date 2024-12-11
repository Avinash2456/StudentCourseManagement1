package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Course;
import com.example.demo.model.Feedback;
import com.example.demo.model.Student;

public interface StudentService {
	public String StudentRegistration(Student student);
	public Student checkStudentLogin(String email,String password);
	public List<Course> viewAllCourses();
	public String Feedbacksave(Feedback feedback); 
	 Student getStudentByEmailAndContact(String email, String contact);

      void updateStudentPassword(Student student);
    public Student getStudentByEmail(String email);
    public String updateStudentProfile(Student student);    
    public String registerCourse(int studentId, int courseId); 
    public List<Course> getRegisteredCourses(int studentId);
	

}
