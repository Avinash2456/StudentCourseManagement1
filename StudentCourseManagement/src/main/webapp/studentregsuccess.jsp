<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>Register Success</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        text-align: center;
    }
    
    .container {
        background-color: white;
        border-radius: 8px;
        box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.1);
        padding: 30px;
        max-width: 400px;
        width: 100%;
    }

    h1 {
        color: #4CAF50;
        font-size: 24px;
        margin-bottom: 20px;
    }

    .gif-image {
        width: 100%;
        max-width: 300px;
        margin: 0 auto 20px;
    }

    .message {
        font-size: 18px;
        color: #333;
        margin-bottom: 20px;
    }

    a {
        text-decoration: none;
        color: #fff;
        background-color: #4CAF50;
        padding: 10px 20px;
        border-radius: 5px;
        font-weight: bold;
    }

    a:hover {
        background-color: #45a049;
    }

</style>
</head> 
<body> 
    <div class="container">
        <img src="https://media.tenor.com/4n3hqczhb-IAAAAM/chop-approve-cop-approve.gif" class="gif-image">
        <h1>Registration Successful!</h1>
        <div class="message">
            <c:out value="${message}"></c:out>
        </div>
        <a href="studentlogin">Login</a>
    </div>
</body> 
</html>
