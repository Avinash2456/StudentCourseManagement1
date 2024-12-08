<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="com.example.demo.model.Student"%>

<%@include file="studentnavbar.jsp" %>

<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Profile</title>
    <style>
        /* General body styling */
        body {
            font-family: 'Arial', sans-serif;
            background-color: skyblue;
            margin: 0;
            padding: 0;
        }

        /* Header Styling */
        h3 {
            text-align: center;
            color: #4A90E2;
            margin-top: 20px;
        }

        /* Profile container styling */
        .profile-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 25px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
        }

        /* Styling for each input field */
        .profile-item {
            margin-bottom: 20px;
        }

        .profile-item label {
            font-size: 14px;
            font-weight: bold;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        .profile-item input {
            width: 100%;
            padding: 12px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
            color: #333;
        }

        .profile-item input:focus {
            border-color: #4A90E2;
            outline: none;
            background-color: #eaf4ff;
        }

        .profile-item input[readonly] {
            background-color: #e6e6e6;
            cursor: not-allowed;
        }

        /* Button styling */
        button {
            padding: 12px 20px;
            background-color: #4A90E2;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #357ab7;
        }

        /* Styling for input fields on hover */
        .profile-item input:hover {
            border-color: #66afe9;
        }

        /* Styling for profile container to give it a nice form spacing */
        .profile-container {
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Styling for the page margins */
        .form-container {
            padding: 20px;
        }

        /* Optional responsive design for smaller screens */
        @media screen and (max-width: 600px) {
            .profile-container {
                width: 90%;
            }
            button {
                width: 100%;
            }
        }

    </style>
</head>
<body>
    <h3>Edit Profile</h3>
    
    <form action="/updateStudentProfile" method="POST">
        <div class="profile-container">
        
            <div class="profile-item">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" readonly="readonly" value="${student.email}" required>
            </div>
            <div class="profile-item">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${student.name}" required>
            </div>
            <div class="profile-item">
                <label for="gender">Gender:</label>
                <input type="text" id="gender" name="gender" value="${student.gender}" required>
            </div>
            <div class="profile-item">
                <label for="dob">Date of Birth:</label>
                <input type="date" id="dob" name="dob" value="${student.dateofbirth}" required>
            </div>
            
            <div class="profile-item">
                <label for="location">Location:</label>
                <input type="text" id="location" name="location" value="${student.location}" required>
            </div>
            <div class="profile-item">
                <label for="contact">Contact:</label>
                <input type="text" id="contact" name="contact" value="${student.contact}" required>
            </div>

            <button type="submit">Save Changes</button>
        </div>
    </form>
</body>
</html>
