<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f8f9fa;
        padding-top: 50px;
    }

    .jumbotron {
        background-color: #343a40;
        padding-left:40px;
        color: #fff;
        padding: 50px 70px ;
        margin: 70px;
    }

    .btn-custom {
        background-color: #007bff;
        border-color: #007bff;
        color: #fff;
        transition: all 0.3s;
    }

    .btn-custom:hover {
        background-color: #0056b3;
        border-color: #0056b3;
    }
</style>
</head>
<body>
 <h1 style="color: green;">${message}</h1>
 
    <div class="jumbotron text-center">
        <h1 class="lead">welcome to add which food is available</h1>
    </div>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6 text-center">
                <a href="addproduct" class="btn btn-lg btn-custom btn-block mb-3">Add Product</a>
                <a href="viewallproducts" class="btn btn-lg btn-secondary btn-block">View All Products</a>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</body>
</html>