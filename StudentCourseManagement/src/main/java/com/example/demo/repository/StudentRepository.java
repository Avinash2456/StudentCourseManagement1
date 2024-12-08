package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.demo.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student,Integer>
{
	
	@Query("select c from Student c where c.email=?1 and c.password=?2 ")
	public Student checkStudentLogin(String email, String password);

}
