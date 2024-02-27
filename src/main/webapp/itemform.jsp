<%@page import="com.jsp.Entities.Item"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
        background-image:url("https://pagalladka.com/wp-content/uploads/2018/12/full-size-HD-image-of-nature.jpg");
        background-size:cover;
        background-position:center;
        
    }

    form {
        max-width: 400px;
        margin: 50px auto;
        background-color: #f8f9fa;
        padding: 40px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"], input[type="number"] {
        width: calc(100% - 22px); /* Adjusted width to account for padding */
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

    label {
        display: block;
        font-weight: bold;
        margin-bottom: 5px;
    }
</style>
</head>
<body>
<%
Item i=(Item)request.getAttribute("itemobj");
%>

<form:form action="additemtofoodorder" modelAttribute="itemobj">
    <label for="name">Name:</label>
    <form:input path="name" value="<%=i.getName() %>" readonly="true"/> 
    <label for="type">Type:</label>
    <form:input path="type" value="<%=i.getType() %>" readonly="true"/> 
    <label for="cost">Cost:</label>
    <form:input path="cost" value="<%=i.getCost() %>" readonly="true"/> 
    <label for="quantity">Quantity:</label>
    <form:input path="quantity"/>
    <input type="submit" value="Add to Order">
</form:form>

</body>
</html>
