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
        background-color: #f0f0f0; /* Light gray background */
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    form {
        background-color: #fff; /* White background for the form */
        padding: 50px;
        border-radius: 8px;
        box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1); /* Shadow for the form */
        width: 300px; /* Width of the form */
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="submit"] {
        width: calc(100% - 22px); /* Make the input fields full width minus padding and border */
        padding: 10px; /* Add some padding to the input fields */
        margin-bottom: 10px; /* Add some space between input fields */
        border: 1px solid #ccc; /* Gray border for input fields */
        border-radius: 4px;
        box-sizing: border-box; /* Include padding and border in the width */
    }

    input[type="submit"] {
        background-color: #007bff; /* Blue color for the button */
        color: #fff; /* White text color */
        border: none; /* Remove border */
        cursor: pointer; /* Add pointer cursor on hover */
        transition: background-color 0.3s; /* Smooth transition for background color */
    }

    input[type="submit"]:hover {
        background-color: #0056b3; /* Darker blue color on hover */
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
</style>
</head>
<body>
    <form:form action="saveadmin" modelAttribute="admin">
        <label for="name">Enter name:</label>
        <input type="text" name="name" id="name" placeholder="Enter name"/><br>
        <label for="email">Enter email:</label>
        <input type="email" name="email" id="email" placeholder="Enter email"/><br>
        <label for="password">Enter password:</label>
        <input type="password" name="password" id="password" placeholder="Enter password"/><br>
        <input type="submit" value="Submit">
    </form:form>


</body>
</html>