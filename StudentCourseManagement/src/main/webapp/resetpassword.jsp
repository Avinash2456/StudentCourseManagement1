<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .wrapper {
            display: flex;
            justify-content: space-between;
            align-items: center;
            width: 80%; /* Adjust width for better responsiveness */
            max-width: 1200px;
        }
        .image-container {
            flex: 1;
            padding-right: 0px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .image-container img {
            width: 350px;
            height: 300px;
            object-fit: cover; /* Ensures the image is properly cropped and fits the size */
            border-radius: 8px;
        }
        .form-container {
            flex: 1;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 550px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .submit-button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            border: none;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
        .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <!-- Image Section -->
        <div class="image-container">
            <img src="https://img.freepik.com/free-vector/reset-password-concept-illustration_114360-7876.jpg?ga=GA1.1.1961871871.1731652696&semt=ais_hybrid" alt="Reset Password">
        </div>
        
        <!-- Form Section -->
        <div class="form-container">
            <h2>Reset Password</h2>
            <form action="resetpassword" method="POST">
                <div class="form-group">
                    <label for="newPassword">New Password</label>
                    <input type="password" id="newPassword" name="newPassword" required>
                </div>
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required>
                </div>
                <button type="submit" class="submit-button">Reset Password</button>
            </form>
            <div class="error-message">${errorMessage}</div>
        </div>
    </div>
</body>
</html>
