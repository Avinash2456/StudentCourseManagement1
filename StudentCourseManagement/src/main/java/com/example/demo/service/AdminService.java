package com.example.demo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.example.demo.model.Admin;
import com.example.demo.model.Contact;
import com.example.demo.model.Course;
import com.example.demo.model.Student;
@Service
public interface AdminService {
	
	public List<Student> viewAllStudents();
	public Admin checkAdminLogin(String uname,String pwd);
	public long studentcount();
	public long coursecount();
	void addCourse(Course course);
	public List<Course> viewAllCourses();
	public String SaveContact(Contact contact);
	public String deleteStudent(int id);
	public Student displayStudentById(int id); 
	public Student updateStudent(Student student);
	public String deleteCourse(Long id);
	public Course displayCourseById(Long id);
	public Course updateCourse(Course course);

	
}
