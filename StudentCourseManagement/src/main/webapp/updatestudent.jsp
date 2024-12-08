<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Update Student</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #333;
            padding: 20px;
        }

        form {
            max-width: 500px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 14px;
            color: #333;
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="text"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <h2>Update Student</h2>

    <form action="<c:url value='/updatestudent' />" method="post">
        <input type="hidden" name="id" value="${student.id}" />

        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" name="name" value="${student.name}" required />
        </div>

        <div class="form-group">
            <label for="gender">Gender:</label>
            <input type="text" name="gender" value="${student.gender}" required />
        </div>

        <div class="form-group">
            <label for="dateofbirth">Date of Birth:</label>
            <input type="text" name="dateofbirth" value="${student.dateofbirth}" required />
        </div>

        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" value="${student.email}" required />
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" value="${student.password}" required />
        </div>

        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" name="location" value="${student.location}" required />
        </div>

        <div class="form-group">
            <label for="contact">Contact:</label>
            <input type="text" name="contact" value="${student.contact}" required />
        </div>

        <button type="submit">Update Student</button>
    </form>
</body>
</html>
