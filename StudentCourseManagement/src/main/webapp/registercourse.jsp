<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Register for Course</title>

    <!-- Internal CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #6a0dad; /* Purple color */
            margin-top: 50px;
        }

        .form-container {
            width: 40%;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            color: #6a0dad;
            margin-bottom: 8px;
            display: inline-block;
        }

        select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #6a0dad;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #5a0c8c; /* Darker purple */
        }

        .message {
            color: green;
            font-weight: bold;
            text-align: center;
            margin-bottom: 20px;
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
    </style>

</head> 
<body> 

    <div class="form-container">
        <div class="form-content">
            <h2>Register for a Course</h2> 
            
            <!-- Display any message after registration --> 
            <c:if test="${not empty message}"> 
                <div class="message"> 
                    ${message} 
                </div> 
            </c:if> 

            <!-- Course Registration Form --> 
            <form action="registercourse" method="post"> 
                <label for="course">Select Course:</label> 
                <select name="courseId" id="course"> 
                    <c:if test="${empty courselist}"> 
                        <option disabled>No courses available</option> 
                    </c:if> 
                    <c:forEach var="course" items="${courselist}"> 
                        <option value="${course.id}">${course.name}</option> 
                    </c:forEach> 
                </select> 
                <br><br> 
                <input type="submit" value="Register"> 
            </form>
        </div>
    </div>
</body> 
</html>
