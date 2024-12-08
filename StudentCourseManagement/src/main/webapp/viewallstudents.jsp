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
Total Students:<c:out value="${count }"></c:out>

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
</tr>
<c:forEach items="${studentlist}" var="student">
<tr>
<td><c:out value="${student.id }"></c:out></td>
<td><c:out value="${student.name }"></c:out></td>
<td><c:out value="${student.gender }"></c:out></td>
<td><c:out value="${student.dateofbirth }"></c:out></td>
<td><c:out value="${student.email }"></c:out></td>
<td><c:out value="${student.location }"></c:out></td>
<td><c:out value="${student.contact }"></c:out></td>

</tr>
</c:forEach>
</table>
</body>
</html>