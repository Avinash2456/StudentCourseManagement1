<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Course Profile</title> 
</head> 
<body> 
 
<h3 align="center">Course Profile</h3> 
 
<!-- Display customer details --> 
ID: <c:out value="${course.id}" /><br><br> 
NAME: <c:out value="${course.name}" /><br><br> 
Course Code: <c:out value="${course.code}" /><br><br> 
Description: <c:out value="${course.description}" /><br><br> 

 
</body> 
</html>
