<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="jakarta.tags.core" prefix="c" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %><br/><br/>
Total Students:<c:out value="${count }"></c:out><br><br>
Total Courses:<c:out value="${ccount }"></c:out>
</body>
</html>