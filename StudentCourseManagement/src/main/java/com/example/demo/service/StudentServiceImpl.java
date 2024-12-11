package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.example.demo.model.Contact;
import com.example.demo.model.Course;
import com.example.demo.model.Feedback;
import com.example.demo.model.Student;
import com.example.demo.repository.CourseRepository;
import com.example.demo.repository.FeedbackRepository;
import com.example.demo.repository.StudentRepository;


@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private CourseRepository courseRepository;

    @Autowired
    private JavaMailSender mailSender;
    
    @Autowired
    private FeedbackRepository feedbackRepository;
	
	@Override
	public String StudentRegistration(Student student) {
		studentRepository.save(student);
		 //sendRegistrationEmail(student);
		  return "Student registered successfully, and a confirmation email has been sent.";
	}

	@Override
	public Student checkStudentLogin(String email, String password) {
		
		return studentRepository.checkStudentLogin(email, password);
	}
	
	
	
//	  private void sendRegistrationEmail(Student student) {
//	        SimpleMailMessage message = new SimpleMailMessage();
//	        message.setTo(student.getEmail());
//	        message.setSubject("Registration Successful");
//	        message.setText("Hello " + student.getName() + ",\n\nWelcome! \"We’re thrilled to have you join the CourseFlow community! 🎉\n\n At CourseFlow, we aim to simplify your learning journey and help you achieve your educational goals. \n\nYou can log in here: http://localhost:8080/studentlogin\n\n Happy Learning, \n\nThank you,\nCourseFlow");
//
//	        mailSender.send(message);
//	    }
	  
	  @Override
	    public List<Course> viewAllCourses() {
	        return courseRepository.findAll();
	    }
	  
	 

	@Override
	public String Feedbacksave(Feedback feedback) {
		feedbackRepository.save(feedback);
		return "Your feedback has been successfully submitted ";
	}
	
	  @Override
      public Student getStudentByEmailAndContact(String email, String contact) {
          return studentRepository.findByEmailAndContact(email, contact);
      }

      @Override
      public void updateStudentPassword(Student student) {
          studentRepository.save(student); 
      }

      @Override
      public Student getStudentByEmail(String email) {
          return studentRepository.findByEmail(email);
      }
      public String updateStudentProfile(Student student) {
          studentRepository.save(student);
          return "Profile updated successfully";
      }
      
   
  
    @Override 
    public String registerCourse(int studentId, int courseId) { 
        // Convert int to Long 
        Student student = studentRepository.findById((int) studentId).orElse(null); 
        Course course = courseRepository.findById((long) courseId).orElse(null); 
  
        if (student == null) { 
            return "Student not found."; 
        } 
  
        if (course == null) { 
            return "Course not found."; 
        } 
  
        
        student.getCourses().add(course); 
        studentRepository.save(student);  
        //sendCourseRegistrationEmail(student,course); 
        return "Course registered successfully."; 
    } 
     
 //   private void sendCourseRegistrationEmail(Student student, Course course) { 
//       SimpleMailMessage message = new SimpleMailMessage(); 
//       message.setTo(student.getEmail()); 
//       message.setSubject("Course Registration Successful"); 
//       message.setText( 
//           "Hello " + student.getName()+",\n\n"+ 
//           "Congratulations! You have successfully registered for the course:\n\n" + 
//           "Course Name: " + course.getName()+"\n"+ 
//           "Course Code: "+ course.getCode()+"\n"+ 
//           "Description: " + course.getDescription() + "\n\n" + 
//           "We’re thrilled to have you on board and hope this course helps you achieve your learning goals.\n\n" + 
//           "You can view your registered courses or explore new ones here:\n" + 
//           "If you have any questions, feel free to contact us.\n\n" + 
//           "Happy Learning,\n\n" + 
//           "Thank you,\n" + 
//           "The CourseFlow Team" 
//       ); 
 // 
//       mailSender.send(message); 
 //  } 
     
    @Override 
      public List<Course> getRegisteredCourses(int studentId) { 
          Student student = studentRepository.findById(studentId).orElse(null); 
          if (student == null) { 
              return null; 
          } 
          return student.getCourses(); 
      }

	
     

}
