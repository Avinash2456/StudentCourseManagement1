<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Home</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
  <%@ include file="adminnavbar.jsp" %>
  
  <div class="container" style="margin-top: 20px;">
    <h2>Welcome, Admin!</h2>
    <p>Welcome to the Admin Dashboard of the Online Course Management System. Here, you can manage students, courses, and other administrative tasks with ease.</p>
    
    <h3>Quick Actions</h3>
    <div class="row">
      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">Manage Students</div>
          <div class="panel-body">
            <p>View, add, edit, or remove student records.</p>
            <a href="viewallstudents" class="btn btn-success">Go to Students</a>
          </div>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">Manage Courses</div>
          <div class="panel-body">
            <p>Manage course offerings, including adding or updating courses.</p>
            <a href="Courses" class="btn btn-success">Go to Courses</a>
          </div>
        </div>
      </div>
      
      <div class="col-md-4">
        <div class="panel panel-default">
          <div class="panel-heading">Account Settings</div>
          <div class="panel-body">
            <p>Update your profile, change password, and manage other account settings.</p>
            <a href="adminsettings" class="btn btn-success">Go to Settings</a>
          </div>
        </div>
      </div>
    </div>
    
   
