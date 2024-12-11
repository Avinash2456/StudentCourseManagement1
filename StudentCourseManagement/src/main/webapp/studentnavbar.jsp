<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>/* style.css */

/* Body Styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

/* Header Styling */
h2 {
    color: #333;
    padding: 20px;
    background-color: #5bc0de;
    margin: 0;
    text-align: center;
    font-size: 36px;
}

/* Navigation Styling */
div {
    text-align: center;
    margin: 20px 0;
}

a {
    font-size: 18px;
    color: #007bff;
    text-decoration: none;
    margin: 0 15px;
}

a:hover {
    text-decoration: underline;
    color: #0056b3;
}

/* Responsive Design */
@media (max-width: 600px) {
    h2 {
        font-size: 28px;
    }

    a {
        font-size: 16px;
    }
}
.navbar {
    margin-left:0px; /* Push navbar next to the side menu */
    width: 1650 /* Adjust navbar width */
    height: 60px;
    color: #fff;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0px;
    position: fixed;
    top: 0;
    z-index: 100 ;
}


</style>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Online Course Management System</title>
</head>
<body>
<h2 align="center">Online Course Management System</h2>
<div class="navbar">
    <a href="studenthome">Home</a>&nbsp;&nbsp;
    <a href="studentprofile">Student Profile</a>&nbsp;&nbsp;
    <a href="studentlogin">Logout</a>&nbsp;&nbsp;
</div>
</body>
</html>
