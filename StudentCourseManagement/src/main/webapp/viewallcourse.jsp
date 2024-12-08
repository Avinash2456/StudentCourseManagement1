<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>all course</title>
</head>
<body>
<%@include file="Courses.jsp" %><br/><br/>
Total Courses:<c:out value="${ccount }"></c:out>

<h3 align="center">View All Courses</h3>
<table align="center" border="2" class="table table-stripped">
<tr>
<th>ID</th>
<th>NAME</th>
<th>Course</th>
<th>Description</th>

</tr>
<c:forEach items="${courselist}" var="course">
    <tr>
        <td><c:out value="${course.id }"></c:out></td>
        <td><c:out value="${course.name }"></c:out></td>
        <td><c:out value="${course.code }"></c:out></td>
        <td><c:out value="${course.description }"></c:out></td>
    </tr>
</c:forEach>



</table>

</body>
</html>