<%@page import="com.example.demo.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
   Student c=(Student)session.getAttribute("student");
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student home</title>
</head>
<body>
<%@include file="studentnavbar.jsp" %><br/><br/>

Welcome <%=c.getName() %>
</body>
</html>