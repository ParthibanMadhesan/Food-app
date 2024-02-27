<%@page import="com.jsp.Entities.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        padding: 20px;
    }

    .form-container {
        max-width: 500px;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="number"], input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
<%Product product=(Product)request.getAttribute("productdata"); %>

<div class="form-container">
    <form action="updatepro" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <input type="number" class="form-control" name="id" value="<%=product.getId() %>" readonly="true">
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" value="<%= product.getName() %>">
        </div>
        <div class="form-group">
            <label for="type">Type:</label>
            <input type="text" class="form-control" name="type" value="<%=product.getType() %>">
        </div>
        <div class="form-group">
            <label for="cost">Cost:</label>
            <input type="text" class="form-control" name="cost" value="<%=product.getCost() %>">
        </div>
        <input type="submit" class="btn btn-primary" value="Submit">
    </form>
</div>

</body>
</html>
 