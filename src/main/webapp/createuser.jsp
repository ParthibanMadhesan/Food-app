<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Registration Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS for Body */
        body {
            background-image: url('https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg'); /* Replace 'your-background-image.jpg' with your image URL */
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* Custom CSS for Form Container */
        .form-container {
            background-color: rgba(25, 255, 255, 0.2); /* Semi-transparent white background color */
            border-radius: 10px;
            padding: 40px;
            width: 400px;
        }

        /* Custom CSS for Form */
        .form-group {
            margin-bottom: 20px;
        }

        .control-label {
            font-weight: bold;
            color:black;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <form:form action="createusers" modelAttribute="users">
            <div class="form-group">
                <label class="control-label">Enter Name:</label>
                <form:input path="name" class="form-control" placeholder="Enter name"/>
            </div>
            <div class="form-group">
                <label class="control-label">Enter Mobile Number:</label>
                <form:input path="mobilenumber" class="form-control" placeholder="mobile number"/>
            </div>
            <div class="form-group">
                <label class="control-label">Enter Email:</label>
                <form:input path="email" class="form-control" placeholder="email"/>
            </div>
            <div class="form-group">
                <label class="control-label">Enter Password:</label>
                <form:input path="password" class="form-control" type="password" placeholder="enter password"/>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            
            <a href="loginuser.jsp">login</a>
        </form:form>
    </div>
    
    <!-- Bootstrap JS and jQuery (if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
