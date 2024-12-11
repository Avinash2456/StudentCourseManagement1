<%@page import="com.example.demo.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
   Student c = (Student) session.getAttribute("student");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
/* General Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background-color: #f9f9f9;
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
}

/* Side Menu Styling */
.side-menu {
    width: 250px;
    background-color: #f05462;
    color: white;
    height: 100vh;
    display: flex;
    flex-direction: column;
    position: fixed;
    padding-top: 0px;
    

}

.side-menu .brand-name h1 {
    font-size: 20px;
    margin-bottom: 20px;
    color: #fff;
}

/* List Styling */
.side-menu ul {
    list-style: none;
    padding: 0;
    margin: 0;
    display: flex;
    flex-direction: column;
    gap: 15px; /* Adds space between items */
}

.side-menu ul li {
    color: white;
    padding: 10px 15px;
    cursor: pointer;
    border-radius: 5px;
    transition: background-color 0.3s ease, transform 0.3s ease;
}

.side-menu ul li:hover {
    background-color: #555;
    transform: translateX(5px); /* Slight slide effect */
}

.navbar1 {
    margin-left: 250px; /* Push navbar next to the side menu */
    width: calc(100% - 250px); /* Adjust navbar width */
    height: 60px;
    background-color: #000; /* Black background */
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 20px;
    position: fixed;
    top: 0;
    z-index: 1000;
    margin-top:205px;
}

.navbar1  {
    font-size: 18px;
}

.navbar1 a {
    text-decoration: none;
    padding: 10px 15px;
    border-radius: 50px;
    transition: background-color 0.3s;
    justify-content: space-between;

}


</style>

   
</head>
<body>
<%@include file="studentnavbar.jsp" %>
<div class="side-menu">
    <div class="brand-name">
        <h1>Student Dashboard</h1>
    </div>
    <ul>
        <li><a href="studentviewallcourse">view course</a></li>
        <li><a href="registeredcourses">Registered Courses</a></li>
        <li><a href="editprofile.jsp">Edit Profile</a></li>
        <li><a href="feedback.jsp">Feedback Form</a></li>
    </ul>
   <div class="navbar1">
      <div >Welcome, <span><%=c.getName() %></span></div>
      
   </div>
</div>
</body>
</html>
