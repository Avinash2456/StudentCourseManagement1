<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
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
            width: 80%; 
            max-width: 1200px;
        }
        .image-container {
            flex: 1;
            padding-right: 20px;
        }
        .image-container img {
            width: 100%;
            height: auto;
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
            height:320px;
            width:1000px;
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
            width: 555px;
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
        <div class="image-container">
            <img src="https://img.freepik.com/premium-vector/man-forgot-her-personal-data-concept-web-screensaver-with-forgotten-password_505620-1376.jpg?ga=GA1.1.1961871871.1731652696&semt=ais_hybrid" alt="Forgot Password">
        </div>
        
        <div class="form-container">
            <h2>Forgot Password</h2>
            <form action="verifydetails" method="POST">
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="form-group">
                    <label for="contact">Phone Number</label>
                    <input type="text" id="contact" name="contact" required>
                </div>
                <button type="submit" class="submit-button">Verify</button>
            </form>
            <div class="error-message">${errorMessage}</div>
        </div>
    </div>
</body>
</html>
