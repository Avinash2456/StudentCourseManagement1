<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Students</title>
<style>
/* General styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    color: #333;
}

/* Header styling */
h3 {
    color: #444;
    text-align: center;
    margin-top: 20px;
}

/* Table styling */
table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

table th, table td {
    border: 1px solid #ddd;
    padding: 10px 15px;
    text-align: center;
}

table th {
    background-color: #007bff;
    color: white;
    font-weight: bold;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e6f7ff;
}

/* Navbar styling */
.navbar {
    background-color: #007bff;
    padding: 10px;
    color: white;
    text-align: center;
}

.navbar a {
    color: white;
    text-decoration: none;
    margin: 0 10px;
}

.navbar a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
<!-- Simulated Navbar -->
<%@include file="adminnavbar.jsp" %><br/><br/>

<!-- Total Students Display -->
<p align="center">
    <strong>Total Students:</strong> <c:out value="${count}"></c:out>
</p>

<!-- Table of Students -->
<h3 align="center">View All Students</h3>
<table align="center" border="2" class="table table-stripped">
<tr>
    <th>ID</th>
    <th>NAME</th>
    <th>GENDER</th>
    <th>DATE OF BIRTH</th>
    <th>EMAIL</th>
    <th>LOCATION</th>
    <th>CONTACT NO</th>
    <td>action</td>
</tr>
<c:forEach items="${studentlist}" var="student">
<tr>
    <td><c:out value="${student.id}"></c:out></td>
    <td><c:out value="${student.name}"></c:out></td>
    <td><c:out value="${student.gender}"></c:out></td>
    <td><c:out value="${student.dateofbirth}"></c:out></td>
    <td><c:out value="${student.email}"></c:out></td>
    <td><c:out value="${student.location}"></c:out></td>
    <td><c:out value="${student.contact}"></c:out></td>
    <td> 
          <a href="<c:url value='/updatestudent/${student.id}' />">Update</a> |  
    </td>
</tr>
</c:forEach>
</table>
</body>
</html>
