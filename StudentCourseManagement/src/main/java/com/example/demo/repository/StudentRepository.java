package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student,Integer>
{
	
	 Student findByEmailAndContact(String email, String contact);
	  
	  @Query("select s from Student s where s.email=?1 and s.password=?2 ")
	  public Student checkStudentLogin(String email,String password);

	  Student findByEmail(String email);
}
