<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Course</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-top: 30px;
        }

        .form-container {
            width: 50%;
            margin: 0 auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 1.1rem;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 25px;
            font-size: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                width: 90%;
            }

            button[type="submit"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
    <h2>Add a New Course</h2>
    <div class="form-container">
        <form action="savecourse" method="post">
            <label for="courseName">Course Name:</label>
            <input type="text" id="courseName" name="courseName" required><br>

            <label for="courseCode">Course Code:</label>
            <input type="text" id="courseCode" name="courseCode" required><br>

            <label for="courseDescription">Course Description:</label>
            <textarea id="courseDescription" name="courseDescription" required></textarea><br>

            <button type="submit">Add Course</button>
        </form>
    </div>
</body>
</html>
