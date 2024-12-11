<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: lightgrey;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #721c24;
        }

        .message {
            color: #721c24;
            font-size: 1.2rem;
            margin-bottom: 20px;
        }

        a {
            color: #155724;
            font-size: 1rem;
            text-decoration: none;
            border: 1px solid #155724;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        a:hover {
            background-color: #155724;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Wrong email or password. Please try again!</h2>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="adminlogin">Try Again</a>
    </div>

</body>
</html>
