<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c" %> 
 
<!DOCTYPE html> 
<html> 
<head> 
    <meta charset="UTF-8"> 
    <title>View Customer By ID</title> 
</head> 
<body> 
    <%@ include file="adminnavbar.jsp" %><br/><br/> 
    <h3 align="center">View Course By ID</h3> 
    <div class="container" align="center"> 
        <form method="post" action="displaycourse"> 
            <label>Select Course</label> 
            <select name="id" class="form-select" required="required"> 
                <option value="">---select---</option> 
                <!-- Corrected forEach tag --> 
                <c:forEach items="${courselist}" var="course"> 
                    <option> <c:out value="${course.id}" /> </option> 
                </c:forEach> 
            </select><br><br> 
 
            <input type="submit" value="View" class="btn btn-success"/> 
        </form> 
    </div> 
</body> 
</html>
