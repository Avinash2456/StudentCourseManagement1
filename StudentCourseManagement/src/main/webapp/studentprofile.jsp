<%@page import="com.example.demo.model.Student"%>
<%@page import="java.beans.Customizer"%>
<%@page import="com.example.demo.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   Student c = (Student) session.getAttribute("student");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* General body styling */
    body {
        background-color: #f7f7f7;
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    /* Header styling */
    h3 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    /* Profile details container */
    .profile-container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        margin-top: 30px;
    }

    /* Styling for each profile detail */
    .profile-item {
        font-size: 16px;
        color: #333;
        margin-bottom: 10px;
    }

    .profile-item span {
        font-weight: bold;
    }

    /* Button Styling */
    .btn-back {
        display: inline-block;
        padding: 10px 20px;
        margin-top: 20px;
        background-color: #007bff;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        font-size: 16px;
    }

    .btn-back:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%@include file="studentnavbar.jsp" %><br/><br/>
<h3>My Profile</h3>
<div class="profile-container">
    <div class="profile-item">ID : <span><%=c.getId() %></span></div>
    <div class="profile-item">Name : <span><%=c.getName() %></span></div>
    <div class="profile-item">Gender : <span><%=c.getGender() %></span></div>
    <div class="profile-item">DOB : <span><%=c.getDateofbirth() %></span></div>
    <div class="profile-item">Email : <span><%=c.getEmail() %></span></div>
    <div class="profile-item">Location : <span><%=c.getLocation() %></span></div>
    <div class="profile-item">Contact : <span><%=c.getContact() %></span></div>
    
    <a href="/studenthome" class="btn-back">Back to Home</a>
</div>
</body>
</html>
