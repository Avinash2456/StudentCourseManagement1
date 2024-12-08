<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Course</title>
</head>
<body>
    <h2>Edit Course</h2>
    <form action="updateCourse" method="post">
        <input type="hidden" name="id" value="${course.id}">
        <div>
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" value="${course.name}" required>
        </div>
        <div>
            <label for="courseCode">Course Code:</label>
            <input type="text" id="courseCode" name="courseCode" value="${course.code}" required>
        </div>
        <div>
            <label for="courseDescription">Course Description:</label>
            <textarea id="courseDescription" name="courseDescription" required>${course.description}</textarea>
        </div>
        <button type="submit">Save Changes</button>
    </form>
    <a href="viewallcourse">Back to Course List</a>
</body>
</html>
