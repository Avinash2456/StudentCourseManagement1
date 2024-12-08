package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.model.Student;
import com.example.demo.repository.StudentRepository;


@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;
	

    @Autowired
    private JavaMailSender mailSender;
	
	@Override
	public String StudentRegistration(Student student) {
		studentRepository.save(student);
		 sendRegistrationEmail(student);
		  return "Student registered successfully, and a confirmation email has been sent.";
	}

	@Override
	public Student checkStudentLogin(String email, String password) {
		
		return studentRepository.checkStudentLogin(email, password);
	}
	
	  private void sendRegistrationEmail(Student student) {
	        SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(student.getEmail());
	        message.setSubject("Registration Successful");
	        message.setText("Hello " + student.getName() + ",\n\nWelcome! \"We’re thrilled to have you join the CourseFlow community! 🎉\n\n At CourseFlow, we aim to simplify your learning journey and help you achieve your educational goals. \n\nYou can log in here: http://localhost:8080/studentlogin\n\n Happy Learning, \n\nThank you,\nCourseFlow");

	        mailSender.send(message);
	    }
	  
	 

}
