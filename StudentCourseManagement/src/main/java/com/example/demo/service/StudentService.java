package com.example.demo.service;

import com.example.demo.model.Student;

public interface StudentService {
	public String StudentRegistration(Student student);
	public Student checkStudentLogin(String email,String password);
	
	
	

}
