<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    
    <style>
        /* General body and layout styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: row;
        }

        /* Image styling */
        .image-container {
            width: 25%;
            background-image: url('https://img.freepik.com/premium-vector/access-code_82783-829.jpg?ga=GA1.1.1961871871.1731652696&semt=ais_hybrid');
            background-size: cover;
            background-position: center;
            height: 60%;
            border-radius: 8px 0 0 8px;
            margin-right: 20px;  /* Add gap between image and login container */
        }

        /* Login container styling */
        .login-container {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 40%;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            border: none;
            color: white;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
        }

        .login-button:hover {
            background-color: #0056b3;
        }

        .forgot-password {
            text-align: center;
            margin-top: 10px;
        }

        .forgot-password a {
            color: #007BFF;
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }

        .error-message {
            color: red;
            font-size: 14px;
            text-align: center;
            margin-bottom: 10px;
        }

        /* Responsive Design */
        @media screen and (max-width: 768px) {
            body {
                flex-direction: column;
            }

            .image-container {
                width: 100%;
                height: 300px;
                border-radius: 8px 8px 0 0;
                margin-right: 0; /* Reset margin in small screens */
            }

            .login-container {
                width: 100%;
                margin-top: 20px;
            }
        }
    </style>
</head>
<body>

    <!-- Image Container -->
    <div class="image-container"></div>

    <!-- Login Form Container -->
    <div class="login-container">
        <h2>Student Login</h2>
        <form action="checkstudentlogin" method="POST">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="cemail" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="cpwd" required>
            </div>
            <div class="g-recaptcha" data-sitekey="6Lce6pAqAAAAABxCjw9-CQsbo6LQZt7auZhuymJH"></div>
            
            <button type="submit" class="login-button">Login</button>
        </form>
        <div class="forgot-password">
            <a href="forgotpassword.jsp">Forgot Password?</a>
        </div>
    </div>
</body>
</html>
