<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Student Profile</title> 
</head> 
<body> 
 
<h3 align="center">Student Profile</h3> 
 
<!-- Display customer details --> 
ID: <c:out value="${student.id}" /><br><br> 
NAME: <c:out value="${student.name}" /><br><br> 
GENDER: <c:out value="${student.gender}" /><br><br> 
DOB: <c:out value="${student.dateofbirth}" /><br><br> 
EMAIL: <c:out value="${student.email}" /><br><br> 
LOCATION: <c:out value="${student.location}" /><br><br> 
CONTACT: <c:out value="${student.contact}" /><br><br> 
 
</body> 
</html>