<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
</head>
<body>
    <h2>Add a New Course</h2>
    <form action="savecourse" method="post">
        <label for="courseName">Course Name:</label>
        <input type="text" id="courseName" name="courseName" required><br><br>
         <label for="courseode">Course Code:</label>
        <input type="text" id="courseCode" name="courseCode" required><br><br>

        <label for="courseDescription">Course Description:</label>
        <textarea id="courseDescription" name="courseDescription" required></textarea><br><br>

        <button type="submit">Add Course</button>
    </form>
</body>
</html>
