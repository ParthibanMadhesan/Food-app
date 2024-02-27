<%@page import="com.jsp.Entities.FoodOrder"%>
<%@page import="java.util.List"%>
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

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        padding: 12px;
        text-align: left;
        border-bottom: 1px solid #dee2e6;
    }

    th {
        background-color: #007bff;
        color: #fff;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>
<script type="text/javascript">
let f=window.print();

</script>

<% List<FoodOrder>foods=(List<FoodOrder>)request.getAttribute("foodlist"); %>

<table class="table">
    <thead class="thead-dark">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Mobile Number</th>
            <th>Total Cost</th>
        </tr>
    </thead>
    <tbody>
        <% for(FoodOrder f:foods) { %>
            <tr>
                <td><%=f.getId()%></td>
                <td><%=f.getName() %></td>
                <td><%=f.getMobilenumber() %></td>
                <td><%=f.getTotalcost() %></td>
            </tr>
        <%} %>
    </tbody>
    
    
</table>
</body>
</html>
