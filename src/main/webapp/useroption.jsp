<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://images.pexels.com/photos/1266810/pexels-photo-1266810.jpeg');
        background-size: cover;
        background-position: center;
        padding-top: 50px;
        text-align: center;
    }

    a {
        display: block;
        margin-left: 200px;
        margin-right: 200px;
        background-color:hsla(201, 0%, 98%, 0.5);
       
        padding: 30px 10px;
        color: black;
        font-weight: bold;
        text-decoration: none;
        border-radius: 5px;
        transition: background-color 0.3s;
    }

    a:hover {
        background-color: #0056b3;
        color:white;
    }
</style>
</head>
<body>
<h1 style="color: green">${b}</h1>

<a href="createorder"><i class="fas fa-arrow-right"></i> Order Food</a>
<a href="viewallfoodorder"><i class="fas fa-arrow-right"></i> View All Food Orders</a>
<a href="updatefoodorder"><i class="fas fa-arrow-right"></i> Update Food Order</a>
<a href="generatebill?"><i class="fas fa-arrow-right"></i> Print Bill</a>
</body>
</html>
