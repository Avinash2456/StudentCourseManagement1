<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>JFSD - Student Course Management System</title> 

<!-- Bootstrap CSS and jQuery -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script> 
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 

<!-- Custom CSS -->
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
  }

  h2.title {
    text-align: center;
    margin-top: 50px;
    color: #333;
    font-size: 2.5rem;
  }

  .navbar {
    display: flex;
    justify-content: center;
    background-color: #4CAF50;
    padding: 10px 0;
  }

  .nav-link {
    text-decoration: none;
    color: white;
    padding: 5px 5px;
    margin: 0 15px;
    font-size: 2rem;
    border-radius: 4px;
    transition: background-color 0.3s ease;
  }

  .nav-link:hover {
    background-color: red;
  }

  .nav-link:active {
    background-color: #388e3c;
  }

  /* Mobile responsiveness */
  @media (max-width: 600px) {
    .navbar {
      flex-direction: column;
    }

    .nav-link {
      margin: 10px 0;
    }
  }
</style>


</head> 
<body> 
  <h2 class="title">Online Course Management System</h2> 
  <div class="navbar"> 
    <a href="adminhome" class="nav-link">Home</a>
    <a href="viewallstudents" class="nav-link">View Students</a>
    <a href="deletestudent" class="nav-link">Delete Student</a>
    <a href="Courses" class="nav-link">Courses</a>
    <a href="adminlogin" class="nav-link">Logout</a>
  </div> 
</body> 
</html>
