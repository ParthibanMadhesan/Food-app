<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa; /* Light gray background */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #dc3545; /* Red color for the message */
            text-align: center;
            margin-bottom: 20px; /* Add some space below the message */
        }

        form {
            background-color: #fff; /* White background for the form */
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1); /* Shadow for the form */
            width: 300px; /* Width of the form */
        }

        input[type="email"],
        input[type="password"] {
            width: 100%; /* Make the input fields full width */
            padding: 10px; /* Add some padding to the input fields */
            margin-bottom: 10px; /* Add some space between input fields */
            border: 1px solid #ced4da; /* Gray border for input fields */
            border-radius: 4px;
            box-sizing: border-box; /* Include padding and border in the width */
        }

        input[type="submit"] {
            width: 100%; /* Make the submit button full width */
            padding: 10px; /* Add padding to the button */
            background-color: #007bff; /* Blue color for the button */
            color: #fff; /* White text color */
            border: none; /* Remove border */
            border-radius: 4px;
            cursor: pointer; /* Add pointer cursor on hover */
            transition: background-color 0.3s; /* Smooth transition for background color */
        }

        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue color on hover */
        }
    </style>
</head>
<body>
    <h1 style="color: green;">${message}</h1>
    <form action="validateadmin" method="post">
        Enter email:<input type="email" name="email">
        Enter Password:<input type="password" name="password">
        <input type="submit" value="Submit">
    </form>

</form>
</body>
</html>