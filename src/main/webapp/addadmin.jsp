<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image:url("https://assets.materialup.com/uploads/61d86780-be13-47fa-81a6-226aac22db27/preview.jpg");
         /* This property ensures that the background image covers the entire element */
       
    }
    .links{
    
    background-color:lightgray;
    padding:100px;
     border: 2px solid gray; /* Set border style */
        border-radius: 20%;
    }
</style>
</head>
<body class="d-flex justify-content-center align-items-center vh-100">
    <div class="links text-center">
        <a href="adddadmin" class="btn btn-primary btn-lg mb-3">Create Account</a><br>
        <a href="adminlogin.jsp" class="btn btn-primary btn-lg">Login</a>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>