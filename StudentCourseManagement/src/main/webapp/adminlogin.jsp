<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login Form</title>
<style>
    /* General body styling */
    body {
        background: ; /* Dark purple and dark sky blue gradient */
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    /* Centered header text */
    h3 {
        text-align: center;
        color: #333;
        margin-top: 20px;
    }

    /* Container for form */
.container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    background: linear-gradient(45deg, #9b59b6, #f39c12); /* Purple to pink gradient */
    border-radius: 8px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    margin-top: 30px;
}



    /* Form labels */
    label {
        font-size: 16px;
        color: #333;
        display: block;
        margin-bottom: 5px;
    }

    /* Form input styling */
    .form-control {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        font-size: 14px;
    }

    /* Buttons styling */
    .btn {
        padding: 10px 20px;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .btn-success {
        background-color: #28a745;
        color: white;
    }

    .btn-success:hover {
        background-color: #218838;
    }

    input[type="reset"] {
        background-color: #dc3545;
        color: white;
    }

    input[type="reset"]:hover {
        background-color: #c82333;
    }
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<h3>Admin Login Form</h3>
<div class="container">
    <form method="post" action="checkadminlogin">
        <label>Enter Username</label>
        <input type="text" class="form-control" name="auname" required/>
        
        <label>Enter Password</label>
        <input type="password" class="form-control" name="apwd" required/>

        <input type="submit" value="Login" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn"/>
    </form>
</div>
</body>
</html>
