<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html> 
<html> 
<head> 
    <title>Update Course</title>

    <!-- Internal CSS for purple theme with yellow hover effect -->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f3ff;
            margin: 0;
            padding: 0;
        }

        h2 {
            text-align: center;
            color: #6a0dad; /* Purple color */
            margin-top: 50px;
        }

        form {
            width: 40%;
            margin: 30px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            font-size: 16px;
            color: #6a0dad;
            margin-bottom: 8px;
            display: inline-block;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0 20px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
            font-size: 14px;
        }

        button[type="submit"] {
            background-color: #6a0dad;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        /* Hover effect with yellow color */
        button[type="submit"]:hover {
            background-color: #ffcc00; /* Yellow color */
            color: #333; /* Darker text on hover */
        }

        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            flex-direction: column; /* Align image and form vertically */
        }

        .form-container img {
            width: 150px;
            margin-bottom: 20px;
            border-radius:75px;
        }

        .form-container form {
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
        }
        
    </style>

</head> 
<body> 
    <div class="form-container">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm4lv1_hiVHVAtv2NohlJ7txpYAIWeacbQtKw5agAznVQHOBejbiMjWsA&s" alt="Course Image">
        <form action="<c:url value='/updatecourse' />" method="post"> 
            <h2>Update Course</h2>
            <input type="hidden" name="id" value="${course.id}" /> 

            <label>Name:</label> 
            <input type="text" name="name" value="${course.name}" required /><br><br> 

            <label>Course Code:</label> 
            <input type="text" name="code" value="${course.code}" required /><br><br> 

            <label>Description:</label> 
            <input type="text" name="description" value="${course.description}" required /><br><br> 

            <button type="submit">Update Course</button> 
        </form> 
    </div>
</body> 
</html>
