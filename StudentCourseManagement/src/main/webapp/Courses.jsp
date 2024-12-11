<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Courses</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .navbar {
            display: flex;
            justify-content: center;
            text-color:black;
            padding: 10px 0;
        }

        .nav-link {
            text-decoration: none;
            color: black;
            padding: 14px 20px;
            margin: 0 15px;
            font-size: 1.1rem;
            border-radius: 5px;
            transition: background-color 0s ease;
            background-color:#81c784;
            
        }

        .nav-link:hover {
            background-color: #45a049;
        }

        .nav-link:active {
            background-color: #388e3c;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .navbar {
                flex-direction: column;
            }

            .nav-link {
                margin: 10px 0;
                padding: 10px;
               
                
            }
        }
    </style>
</head>
<body>

    <h3>Manage Courses</h3>

    <div class="navbar">
        <a href="addcourse" class="nav-link">Add Course</a>
        <a href="viewallcourse" class="nav-link">View All Courses</a>
    </div>

</body>
</html>
