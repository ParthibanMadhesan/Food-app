<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Navigation Links</title>
    <style>
        /* Custom CSS for Centering */
        .container {
            width: 30%;
           padding: 40px 40px;
            margin-left:380px ;
             margin-top:80px ;
            text-align: center;

            background-image:url("https://cdn.pixabay.com/photo/2017/10/10/07/48/hills-2836301_640.jpg");
            border: 1px solid #007bff;
            border-radius: 7px;
        }
        /* Custom CSS for Links */
        a {
            display: inline-block;
            padding: 10px 40px;
            margin: 10px;
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            border: 1px solid #007bff;
            border-radius: 4px;
            transition: background-color 0.3s, border-color 0.3s, color 0.3s;
        }
        a:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <a href="createuserAccount">Create User Account</a><br>
        <a href="loginuser.jsp">User Login</a>
    </div>
</body>
</html>
