<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        text-align: center;
        padding: 50px;
        background-image:url("https://www.niagarafallsstatepark.com/~/media/parks/niagara-falls/niagara-falls-state-park/photos-and-videos/photo-gallery-8.jpg");
        background-size:cover;
         background-position: center;
        
    }
    
    form {
        background-color:  rgba(25, 255, 255, 0.2);
        padding: 50px;
        border-radius: 10px;
        display: inline-block;
    }
    
    h2 {
        margin-bottom: 20px;
    }
    
    label {
        display: block;
        margin-bottom: 10px;
    }
    
    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin-bottom: 20px;
    }
    
    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
    }
</style>
</head>
<body>

${a}
<form action="validateuser" method="post">
    <h2>Login Form</h2>
    <label for="email">Enter Email:</label>
    <input type="text" name="email" id="email">
    <br>
    <label for="password">Enter Password:</label>
    <input type="password" name="password" id="password">
    <br>
    <input type="submit" value="Submit"><br><br>

   
   
    
</form>

</body>
</html>
