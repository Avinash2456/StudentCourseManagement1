<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jfsd Demo - Home</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<style>
    /* Main container for the recommended topics */
    .recommended-topics {
        background-color: #f8f9fa;
        padding: 30px 0;
        text-align: center;
    }

    .recommended-topics h2 {
        font-size: 24px;
        margin-bottom: 20px;
        font-weight: bold;
    }

    .topics-grid {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 15px;
    }

    .topic-card {
        background-color: white;
        padding: 15px 25px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-weight: bold;
        font-size: 16px;
        cursor: pointer;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    /* Dark section at the bottom */
    .teach-online-section {
        background-color: #333;
        color: white;
        padding: 20px 0;
        text-align: center;
    }

    .teach-online-section h3 {
        font-size: 18px;
        margin-bottom: 5px;
    }

    .teach-online-section p {
        margin: 0;
        font-size: 14px;
        color: #ccc;
    }

    .teach-online-button {
        margin-top: 15px;
        padding: 10px 20px;
        border: 1px solid #ccc;
        color: white;
        background: none;
        border-radius: 5px;
        font-weight: bold;
        text-decoration: none;
    }

    .teach-online-button:hover {
        background-color: #444;
    }

    /* Company logos */
    .companies-section {
        background-color: #222;
        padding: 15px 0;
        text-align: center;
    }

    .companies-section p {
        color: #ddd;
        font-size: 14px;
    }

    .company-logos img {
        max-height: 30px;
        margin: 0 10px;
        vertical-align: middle;
    }
</style>
<body>
<%@include file="mainnavbar.jsp" %>

<div class="container banner">
    <h2>Welcome to the Student Course Management System</h2>
    <p>Your one-stop solution for managing your courses efficiently.</p>
    <button class="btn btn-primary">Get Started</button>
</div>

<!-- Features Overview Section -->
<div class="container">
    <h3>Our Key Features</h3>
    <div class="row">
        <div class="col-md-4">
            <div class="card">
                <h4>Course Catalog</h4>
                <p>Explore a wide range of courses and find the ones that suit your goals.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <h4>Easy Registration</h4>
                <p>Register for courses with a simple, streamlined process.</p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card">
                <h4>Real-Time Updates</h4>
                <p>Stay updated with the latest course schedules and announcements.</p>
            </div>
        </div>
    </div>
</div>

<!-- How It Works Section -->
<div class="container">
    <h3>How It Works</h3>
    <div class="card">
        <p>1. Register as a student or log in to your existing account.</p>
        <p>2. Browse available courses and add them to your schedule.</p>
        <p>3. Track your progress and get notifications on important updates.</p>
    </div>
</div>

<!-- Testimonials Section -->
<div class="container">
    <h3>What Our Students Say</h3>
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <blockquote>
                    "This platform has made course selection so much easier. I can manage my schedule without any hassle!"
                    <footer>- Sai Gandhi, Computer Science Student</footer>
                </blockquote>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <blockquote>
                    "I love the real-time notifications. I never miss important updates about my courses."
                    <footer>- Yashwanth, Engineering Student</footer>
                </blockquote>
            </div>
        </div>
    </div>
</div>

<!-- Call to Action Section -->
<div class="container">
    <h3>Ready to Start?</h3>
    <p>Join us today and simplify your course management experience.</p>
    <button class="btn btn-success" onclick="window.location.href='/studentreg'">Register Now</button>
    <button class="btn btn-info" onclick="window.location.href='/studentlogin'">Login</button>
</div>

<!-- Recommended Topics Section -->
<div class="recommended-topics">
    <h2>Topics recommended for you</h2>
    <div class="topics-grid">
        <div class="topic-card">Spring Boot</div>
        <div class="topic-card">Spring Framework</div>
        <div class="topic-card">Microservices</div>
        <div class="topic-card">Spring Cloud</div>
        <div class="topic-card">Salesforce Integration</div>
        <div class="topic-card">Heroku</div>
        <div class="topic-card">Visual Studio Code</div>
        <div class="topic-card">Java Persistence API (JPA)</div>
        <div class="topic-card">Spring MVC</div>
        <div class="topic-card">REST API</div>
    </div>
</div>

<!-- Teach Online Section -->
<div class="teach-online-section">
    <h3>Teach the world online</h3>
    <p>Create an online video course, reach students across the globe, and earn money</p>
    <a href="#" class="teach-online-button">Teach on This Platform</a>
</div>

<!-- Companies Section -->
<div class="companies-section">
    <p>Top companies choose Our Platform to build in-demand career skills.</p>
    <div class="company-logos">
        <img src="https://upload.wikimedia.org/wikipedia/commons/a/a6/NASDAQ_Logo.svg" alt="Nasdaq">
        <img src="https://upload.wikimedia.org/wikipedia/commons/2/2e/VW_Logo.png" alt="Volkswagen">
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/63/Box_Inc._logo.svg" alt="Box">
        <img src="https://upload.wikimedia.org/wikipedia/commons/9/9a/NetApp_logo.svg" alt="NetApp">
        <img src="https://upload.wikimedia.org/wikipedia/commons/6/64/Eventbrite_logo.svg" alt="Eventbrite">
    </div>
</div>

</body>
</html>
