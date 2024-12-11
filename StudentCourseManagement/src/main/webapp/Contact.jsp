<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Tailwind CSS -->
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.1.2/dist/tailwind.min.css" rel="stylesheet">
    <!-- Link to custom CSS file -->
    <link rel="stylesheet" href="styles/contact.css">
    <style>
       .text-4xl{
        margin-left:150px
       }
       .dark{
       margin-left:150px;
       }
      
       .container{
        height: 500px;
       width:1300px;
       margin-left:150px;
       margin-top:50px;
       background: linear-gradient(to right, #013220, #FFD700);
       }
       .button1{
       height:45px;
       width:400px;
       background: green;
       border-radius: 10px;
       }
         body {
        font-family: Arial, sans-serif;
    }
    h2 {
        text-align: center;
        margin-top: 20px;
        font-weight: bold;    }
    .navbar {
        background-color: #007bff;
        padding: 10px;
    }
    .navbar a {
        color: white;
        padding: 10px 15px;
        text-decoration: none;
        font-weight: bold;
    }
    .navbar a:hover {
        background-color: #0056b3;
        color: white;
    }
    
    </style>
</head>


    <h2>Online Course Management System</h2>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="#">About Us</a>
        <a href="Contact">Contact Us </a>
        <a href="/studentreg">Student Registration</a>
        <a href="/studentlogin">Student Login</a>
        <a href="/adminlogin">Admin Login</a>
    </div>

<body class="bg-gray-200 dark:bg-gray-800 text-gray-800 dark:text-gray-200">

<div class="container">

    <!-- Contact Section -->
    <div class="grid max-w-screen-xl grid-cols-1 gap-8 px-8 py-16 mx-auto rounded-lg md:grid-cols-2 md:px-12 lg:px-16 xl:px-32 dark:bg-gray-100 dark:text-gray-800">
        <div class="flex flex-col justify-between">
            <div class="space-y-2">
                <h2 class="text-4xl font-bold leading-tight lg:text-5xl">Let's talk!</h2>
                <div class="dark">Vivamus in nisl metus? Phasellus.</div>
            </div>
            <!-- Image sourced from the provided URL -->
            <img src="https://mambaui.com/assets/svg/doodle.svg" alt="Contact Illustration" class="p-6 h-52 md:h-64">
        </div>

        <!-- Contact Form -->
        <form action="savecontact" method="post" class="space-y-6">
       
            <div>
                <label for="name" class="text-sm">Full name</label>
                <input id="name" type="text" placeholder="Enter your full name"  required="required" name="sname" class="w-full p-3 rounded dark:bg-gray-100">
            </div>
            <div>
                <label for="email" class="text-sm">Email</label>
                <input id="email" type="email" placeholder="example@gmail.com"  required="required" name="semail" class="w-full p-3 rounded dark:bg-gray-100">
            </div>
            <div>
                <label for="message" class="text-sm1">Message</label>
                <textarea id="message" rows="3" placeholder="Write your message here" required="required" name="smessage" class="w-full p-3 rounded dark:bg-gray-100"></textarea>
            </div>
            <div class="button1">
             <button type="submit" class="w-full p-3 text-sm font-bold tracking-wide uppercase rounded dark:bg-violet-600 dark:text-gray-50">Send Message</button>
            </div>
        </form>
    </div>
</div>
</body>

</html>
