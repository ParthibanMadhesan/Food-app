<%@page import="com.jsp.Entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 20px;
        padding: 20px;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        border:3px solid black;
    }

    th, td {
        padding: 10px;
       
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #f2f2f2;
        border:2px solid black;
        text-align:center;
        color:blue;
       
    }

    tr:hover {
        background-color: lightgreen;
        
    }

    a {
        text-decoration: underline;
       
        text-align:center;
        
    }
    h1{
      background-image: linear-gradient(to right, red,orange,yellow,green,blue,indigo,violet);
       text-align:center;
       color:white;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
         color: black;
    }
</style>
</head>
<body>
<% List<Product> products=(List)request.getAttribute("productslist");%>

<table cellpadding="20px" border="1">
<tr>
<th>ID</th>
<th>NAME</th>
<th>TYPE</th>
<th>COST</th>
<th>ADD ITEM</th>
</tr>

<% for(Product p:products){ %>
<tr>
<td><%=p.getId() %></td>
<td><%=p.getName() %></td>
<td><%=p.getType() %></td>
<td><%=p.getCost() %></td>
<td><a href="additem?id=<%= p.getId()%>">add</a></td>
</tr>
<%} %>
</table>

<h1>
<a href="submitfoodorder">submit order</a>
</h1>
</body>
</html>
