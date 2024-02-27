<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Form</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS for Form */
        .form-group {
            margin-bottom: 20px;
        }

        /* Custom CSS for Labels */
        .control-label {
            font-weight: bold;
        }

        /* Custom CSS for center aligning */
        .container-box {
            width: 400px; /* Adjust width as needed */
            margin: 0 auto;
            margin-top: 50px; /* Add some top margin for spacing */
            border: 1px solid #ccc; /* Optional: Add border for visual effect */
            padding: 20px; /* Optional: Add padding for spacing inside the box */
            border-radius: 5px; /* Optional: Add border-radius for rounded corners */
            background-color: #f9f9f9; /* Optional: Add background color for better visual */
        }

        /* Custom CSS for center aligning submit button */
        .center-submit {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container-box">
        <form:form action="saveproduct" modelAttribute="product" class="form-horizontal">
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Enter Name:</label>
                <div class="col-sm-8">
                    <form:input path="name" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Enter Type:</label>
                <div class="col-sm-8">
                    <form:input path="type" class="form-control" />
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-4 col-form-label">Enter Cost:</label>
                <div class="col-sm-8">
                    <form:input path="cost" class="form-control" />
                </div>
            </div>
            <div class="form-group row center-submit">
                <div class="col-sm-12">
                    <input type="submit" class="btn btn-primary" value="Submit" />
                </div>
            </div>
        </form:form>
    </div>

    <!-- Bootstrap JS and jQuery (if needed) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
