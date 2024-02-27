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
        margin: 0;
        padding: 0;
        background-image: url('https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg'); /* Replace 'background-image.jpg' with your image path */
        background-size: cover;
        background-position: center;
    }

    .container {
        max-width: 400px;
        margin: 50px auto;
        background-color: rgba(255, 255, 255, 0.8); /* Adding opacity to the background color */
        padding: 40px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    input[type="text"] {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 75%;
        padding: 10px;
        border: none;
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        text-align: center;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body> 
    <div class="container">
        <h2>Food Order Form</h2>
        <form:form action="savefoodorder" modelAttribute="foodorder">
            <label for="name">Enter Name:</label>
            <form:input type="text" path="name" id="name" placeholder="name"/>
            <label for="mobilenumber">Enter Mobile Number:</label>
            <form:input type="text" path="mobilenumber" id="mobilenumber" placeholder="mobile number"/>
            <input type="submit" value="Submit"/>
        </form:form>
    </div>
</body> 
</html>
