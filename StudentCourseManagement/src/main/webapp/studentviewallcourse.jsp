<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>Available Courses</title>

    <!-- Internal CSS for styling -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #6a0dad; /* Purple color */
            margin-top: 50px;
        }

        table {
            width: 80%;
            margin: 30px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }

        th {
            background-color: #6a0dad;
            color: white;
        }

        td {
            background-color: #fafafa;
        }

        tr:nth-child(even) td {
            background-color: #f1f1f1;
        }

        button {
            background-color: #6a0dad;
            color: white;
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #5a0c8c; /* Darker purple */
        }

        form {
            display: inline-block;
        }

        .container {
            width: 90%;
            margin: 0 auto;
        }

    </style>

</head> 
<body>

    <div class="container">
        <h3>Available Courses</h3>

        <table>
            <tr>
                <th>Course ID</th>
                <th>Course Name</th>
                <th>Course Code</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${courselist}" var="course">
                <tr>
                    <td>${course.id}</td>
                    <td>${course.name}</td>
                    <td>${course.code}</td>
                    <td>
                        <form action="registercourse" method="post">
                            <input type="hidden" name="courseId" value="${course.id}" />
                            <button type="submit">Register</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body> 
</html>
