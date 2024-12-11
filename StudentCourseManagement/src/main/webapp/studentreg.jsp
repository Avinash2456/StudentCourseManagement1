<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>

    <style>
        body {
            background-color: lightgray;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: linear-gradient(45deg, #f1c40f, #2980b9); 
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            font-size: 16px;
            color: #333;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .form-check-input {
            margin: 0 8px 0 0;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-align: center;
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

        .login-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .login-link a {
            color: #007bff;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 12px;
        }

        #password-strength {
            margin-top: 5px;
            font-size: 12px;
        }

        #password-strength.weak {
            color: red;
        }

        #password-strength.medium {
            color: orange;
        }

        #password-strength.strong {
            color: green;
        }
    </style>
</head>
<body>
<%@ include file="mainnavbar.jsp" %>
<h2>Student Registration</h2>
<div class="container">
    <form id="registrationForm" method="post" action="insertstudent">
        <label>User Name</label>
        <input type="text" placeholder="Enter your user name" class="form-control" name="cname" required/><br>

        <label>Select Gender</label><br>
        <input type="radio" name="cgender" class="form-check-input" value="Male" required/> Male
        <input type="radio" name="cgender" class="form-check-input" value="Female" required/> Female
        <input type="radio" name="cgender" class="form-check-input" value="Others" required/> Other<br><br>

        <label>Date of Birth</label>
        <input type="date" name="cdob" class="form-control" id="dob" required/><br>
        <div id="dobError" class="error-message"></div>

        <label>Email</label>
        <input type="email" placeholder="Enter your email ID" name="cemail" class="form-control" id="email" required/><br>
        <div id="emailError" class="error-message"></div>

        <label>Password</label>
        <input type="password" placeholder="Keep a strong password" name="cpwd" class="form-control" id="password" required/><br>
        <div id="password-strength"></div>
        <div id="passwordError" class="error-message"></div>

        <label>Location</label>
        <input type="text" placeholder="Enter your location" name="clocation" class="form-control" required/><br>

        <label>Contact No</label>
        <input type="text" placeholder="Enter your 10-digit contact number" class="form-control" id="contact" name="ccontact" required/><br>
        <div id="contactError" class="error-message"></div>

        <input type="submit" value="Register" class="btn btn-success"/>
        <input type="reset" value="Clear" class="btn"/>
    </form>

    <div class="login-link">
        <p>Already have an account? <a href="/studentlogin">Log In</a></p>
    </div>
</div>

<script>
    const emailInput = document.getElementById('email');
    const passwordInput = document.getElementById('password');
    const contactInput = document.getElementById('contact');
    const dobInput = document.getElementById('dob');
    const passwordStrength = document.getElementById('password-strength');
    const emailError = document.getElementById('emailError');
    const passwordError = document.getElementById('passwordError');
    const contactError = document.getElementById('contactError');
    const dobError = document.getElementById('dobError');

    emailInput.addEventListener('input', function() {
        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(emailInput.value)) {
            emailError.textContent = "Please enter a valid email address.";
        } else {
            emailError.textContent = "";
        }
    });

    passwordInput.addEventListener('input', function() {
        const password = passwordInput.value;
        let strength = 'weak';

        if (password.length >= 8 && /[A-Za-z]/.test(password) && /\d/.test(password)) {
            strength = 'medium';
        }

        if (password.length >= 12 && /[A-Za-z]/.test(password) && /\d/.test(password) && /[!@#$%^&*()_+={}\[\]:;"'<>,.?/]/.test(password)) {
            strength = 'strong';
        }

        switch (strength) {
            case 'medium':
                passwordStrength.textContent = 'Medium Strength';
                passwordStrength.classList.remove('weak', 'strong');
                passwordStrength.classList.add('medium');
                break;
            case 'strong':
                passwordStrength.textContent = 'Strong Strength';
                passwordStrength.classList.remove('weak', 'medium');
                passwordStrength.classList.add('strong');
                break;
            default:
                passwordStrength.textContent = 'Weak Strength';
                passwordStrength.classList.remove('medium', 'strong');
                passwordStrength.classList.add('weak');
                break;
        }

        if (password.length < 8) {
            passwordError.textContent = "Password must be at least 8 characters long.";
        } else {
            passwordError.textContent = "";
        }
    });

    contactInput.addEventListener('input', function() {
        const contactPattern = /^[6-9]\d{9}$/;
        if (!contactPattern.test(contactInput.value)) {
            contactError.textContent = "Contact number must start with 6-9 and be 10 digits.";
        } else {
            contactError.textContent = "";
        }
    });

    dobInput.addEventListener('input', function() {
        const dob = new Date(dobInput.value);
        const currentYear = new Date().getFullYear();
        if (dob.getFullYear() > 2015) {
            dobError.textContent = "You must be born before 2016.";
        } else {
            dobError.textContent = "";
        }
    });

    const form = document.getElementById('registrationForm');
    form.addEventListener('submit', function(event) {
        let isValid = true;

        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
        if (!emailPattern.test(emailInput.value)) {
            emailError.textContent = "Please enter a valid email address.";
            isValid = false;
        }

        if (passwordInput.value.length < 8) {
            passwordError.textContent = "Password must be at least 8 characters long.";
            isValid = false;
        }

        if (!/^[6-9]\d{9}$/.test(contactInput.value)) {
            contactError.textContent = "Contact number must start with 6-9 and be 10 digits.";
            isValid = false;
        }

        const dob = new Date(dobInput.value);
        if (dob.getFullYear() > 2015) {
            dobError.textContent = "You must be born before 2016.";
            isValid = false;
        }

        if (!isValid) {
            event.preventDefault();
        }
    });
</script>
</body>
</html>
