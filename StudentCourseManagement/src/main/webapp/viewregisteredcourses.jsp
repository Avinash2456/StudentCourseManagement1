<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Registered Courses</title> 
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"> 
</head> 
<body> 
 
<div class="container mt-5"> 
    <h3 class="text-center">My Registered Courses</h3> 
    <table class="table table-bordered table-striped mt-4"> 
        <thead> 
            <tr> 
                <th>Course ID</th> 
                <th>Course Name</th> 
                <th>Course Code</th> 
                <th>Description</th> 
            </tr> 
        </thead> 
        <tbody> 
            <c:forEach items="${registeredCourses}" var="course"> 
                <tr> 
                    <td><c:out value="${course.id}" /></td> 
                    <td><c:out value="${course.name}" /></td> 
                    <td><c:out value="${course.code}" /></td> 
                    <td><c:out value="${course.description}" /></td> 
                </tr> 
            </c:forEach> 
        </tbody> 
    </table> 
    <c:if test="${empty registeredCourses}"> 
        <p class="text-center text-muted">No courses registered yet.</p> 
    </c:if> 
</div> 
 
</body> 
</html>
