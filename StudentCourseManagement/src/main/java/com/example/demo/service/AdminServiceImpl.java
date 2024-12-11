package com.example.demo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import com.example.demo.model.Course;
import com.example.demo.model.Admin;
import com.example.demo.model.Contact;
import com.example.demo.model.Student;
import com.example.demo.repository.AdminRepository;
import com.example.demo.repository.ContactRepository;
import com.example.demo.repository.StudentRepository;
import com.example.demo.repository.CourseRepository;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    private StudentRepository studentRepository;
    
    @Autowired
    private CourseRepository courseRepository;
    
    
    @Autowired
    private ContactRepository contactRepository;
    
    @Autowired
    private AdminRepository adminRepository;
    
    @Autowired
    private JavaMailSender mailSender; // Inject JavaMailSender here

    @Override
    public List<Student> viewAllStudents() {
        return studentRepository.findAll();
    }

    @Override
    public Admin checkAdminLogin(String uname, String pwd) {
        return adminRepository.checkAdminLogin(uname, pwd);
    }

    @Override
    public long studentcount() {
        return studentRepository.count();
    }

    @Override
    public void addCourse(Course course) {
        courseRepository.save(course);
        //sendCourseNotificationToStudents(course); // Call notification method
    }

    @Override
    public List<Course> viewAllCourses() {
        return courseRepository.findAll();
    }

    @Override
    public long coursecount() {
        return courseRepository.count();
    }

    // Define sendCourseNotificationToStudents method here
//    private void sendCourseNotificationToStudents(Course course) {
//        List<Student> students = studentRepository.findAll(); // Get all students
//
//        for (Student student : students) {
//            SimpleMailMessage message = new SimpleMailMessage();
//            message.setTo(student.getEmail());
//            message.setSubject("New Course Added: " + course.getName());
//            message.setText("Hello " + student.getName() + ",\n\n"
//                    + "A new course titled \"" + course.getName() + "\" has been added to our offerings. "
//                    + "You can check out the details in your account.\n\n"
//                    + "Thank you,\nCourseFlow Team");
//
//            mailSender.send(message); // Send the email
//        }
//    }
    
    @Override 
    public String SaveContact(Contact contact) { 
     contactRepository.save(contact); 
     return "Your contact information has been successfully submitted."; 
    }
    
    @Override 
    public String deleteStudent(int id) { 
     studentRepository.deleteById(id); 
     return "Student deleted successfully"; 
    }
    
    @Override 
    public  Student displayStudentById(int id) { 
     return studentRepository.findById(id).get(); 
      
    } 
     
     public Student updateStudent(Student student) { 
            return studentRepository.save(student); 
        }

	@Override
	public String deleteCourse(Long id) {
		courseRepository.deleteById(id);
		return "Course deleted Successfully";
		
	}

	@Override
	public Course displayCourseById(Long id) {
		return courseRepository.findById(id).get();
		
	}

	@Override
	public Course updateCourse(Course course) {
		return courseRepository.save(course);
		
	}

     
     
    
}
