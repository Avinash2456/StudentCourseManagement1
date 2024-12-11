<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Student Course Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
            color: #333;
        }
        .container {
            width: 90%;
            margin: 0 auto;
            padding: 20px;
        }
        h1, h2 {
            text-align: center;
            color: #007bff;
        }
        .project-description {
            text-align: center;
            margin: 20px 0;
        }
        .skills-section {
            background: #fff;
            padding: 20px;
            margin: 20px 0;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .skills-section h3 {
            text-align: center;
            color: #333;
        }
        .skills-section p {
            text-align: center;
            color: #555;
        }
        .features-section {
            display: flex;
            justify-content: space-between;
            margin: 20px 0;
        }
        .feature {
            flex: 1;
            margin: 0 10px;
            padding: 20px;
            text-align: center;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .feature h4 {
            margin-bottom: 10px;
            color: #333;
        }
        .feature p {
            color: #555;
        }
        .feature::before {
            content: '';
            display: block;
            height: 5px;
            width: 50px;
            margin: 0 auto 10px auto;
            background: #007bff;
        }
        .team-section {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        .team-member {
            background: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .social-links a {
            text-decoration: none;
            margin: 0 5px;
            color: #007bff;
        }
        .social-links a:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>About Us</h1>
        <div class="project-description">
            <h2>Student Course Management System</h2>
            <p>
                This project helps students manage their courses efficiently by enabling them to select courses,
                build schedules, and handle conflicts. Admins can add or update courses and resolve registration issues.
            </p>
        </div>
        
        <!-- Skills Section -->
        <div class="skills-section">
            <h3>Skills are the Key to Unlocking Potential</h3>
            <p>
                Whether you want to learn a new skill, train your teams, or share what you know with the world, 
                you’re in the right place. As a leader in online learning, we’re here to help you achieve your goals and transform your life.
            </p>
        </div>
        
        <!-- Impact Section -->
<div style="background-color: #5b2dc5; color: white; padding: 40px 20px; text-align: center;">
    <h2 style="font-size: 2.5rem; font-weight: bold; margin-bottom: 20px;">Creating impact around the world</h2>
    <p style="font-size: 1.2rem; margin-bottom: 40px;">
        With our global catalog spanning the latest skills and topics, people and organizations everywhere are able to adapt to change and thrive.
    </p>
    <div style="display: flex; justify-content: center; gap: 30px; flex-wrap: wrap;">
        <!-- Statistic 1 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">75M</h3>
            <p style="font-size: 1rem; margin: 0;">Learners</p>
        </div>
        <!-- Statistic 2 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">75K+</h3>
            <p style="font-size: 1rem; margin: 0;">Instructors</p>
        </div>
        <!-- Statistic 3 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">250K+</h3>
            <p style="font-size: 1rem; margin: 0;">Courses</p>
        </div>
        <!-- Statistic 4 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">1B+</h3>
            <p style="font-size: 1rem; margin: 0;">Course enrollments</p>
        </div>
        <!-- Statistic 5 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">75</h3>
            <p style="font-size: 1rem; margin: 0;">Languages</p>
        </div>
        <!-- Statistic 6 -->
        <div style="flex: 1; min-width: 150px;">
            <h3 style="font-size: 2rem; font-weight: bold; margin: 0;">17K</h3>
            <p style="font-size: 1rem; margin: 0;">Enterprise customers</p>
        </div>
    </div>
</div>
        

        <!-- Features Section -->
        <div class="features-section">
            <div class="feature">
                <h4>Work with Us</h4>
                <p>
                    At our platform, we foster a culture that is diverse, inclusive, and committed to empowering students and admins alike.
                </p>
            </div>
            <div class="feature">
                <h4>See Our Research</h4>
                <p>
                    We’re committed to innovation and research to enhance learning experiences and ensure efficient course management.
                </p>
            </div>
            <div class="feature">
                <h4>Read Our Blog</h4>
                <p>
                    Stay updated on the latest news, project updates, and insights about course management and learning.
                </p>
            </div>
        </div>

        <!-- Team Section -->
        <div class="team-section">
            <!-- Team Member 1 -->
            <div class="team-member">
               <h3>Member 1 Name</h3>
                <p>Role: Frontend Developer</p>
                <div class="social-links">
                    <a href="https://www.linkedin.com/" target="_blank">LinkedIn</a>
                    <a href="https://www.facebook.com/" target="_blank">Facebook</a>
                    <a href="https://www.instagram.com/" target="_blank">Instagram</a>
                </div>
            </div>
            <!-- Team Member 2 -->
            <div class="team-member">
               <h3>Uppalapati Sai Gandhi</h3>
                <p>Role: Backend Developer</p>
                <div class="social-links">
                    <a href="https://www.linkedin.com/" target="_blank">LinkedIn</a>
                    <a href="https://www.facebook.com/" target="_blank">Facebook</a>
                    <a href="https://www.instagram.com/" target="_blank">Instagram</a>
                </div>
            </div>
            <!-- Team Member 3 -->
            <div class="team-member">
               <h3>Member 3 Name</h3>
                <p>Role: Fullstack Developer</p>
                <div class="social-links">
                    <a href="https://www.linkedin.com/" target="_blank">LinkedIn</a>
                    <a href="https://www.facebook.com/" target="_blank">Facebook</a>
                    <a href="https://www.instagram.com/" target="_blank">Instagram</a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
