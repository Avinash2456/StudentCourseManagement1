<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>HOME</title>

<!-- Internal CSS -->
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    h3 {
        color: #333;
        margin-top: 20px;
        font-size: 24px;
    }

    .table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .table th, .table td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    .table th {
        background-color: #4CAF50;
        color: white;
    }

    .table tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    .table tr:hover {
        background-color: #ddd;
    }

    a {
        color: #007BFF;
        text-decoration: none;
        font-weight: bold;
    }

    a:hover {
        color: #0056b3;
        text-decoration: underline;
    }

    .container {
        width: 90%;
        margin: 0 auto;
        padding: 20px;
    }

    .navbar {
        background-color: #333;
        overflow: hidden;
    }

    .navbar a {
        float: left;
        display: block;
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
</style>

</head> 
<body> 
<%@include file="adminnavbar.jsp" %><br/><br/> 

<div class="container">
    <h3 align="center">Delete Course</h3> 
    <table class="table">
        <tr> 
            <th>ID</th> 
            <th>NAME</th> 
            <th>Course Code</th> 
            <th>Description</th> 
            <th>ACTION</th> 
        </tr> 

        <c:forEach items="${courselist}" var="course"> 
        <tr> 
            <td><c:out value="${course.id}"></c:out></td> 
            <td><c:out value="${course.name}"></c:out></td> 
            <td><c:out value="${course.code}"></c:out></td> 
            <td><c:out value="${course.description}"></c:out></td> 

            <td> 
                <a href='<c:url value="deletec?id=${course.id}"></c:url>'>Delete</a> 
            </td> 
        </tr> 
        </c:forEach> 
    </table>
</div>
</body> 
</html>
