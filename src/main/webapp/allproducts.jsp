<%@page import="com.jsp.Entities.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product List</title>
    <style>
        /* Custom CSS for Table */
        table {
            width: 80%;
            margin: 20px auto; /* Center align the table */
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background-color: #f2f2f2; /* Gray background color for table headers */
        }
        tr:nth-child(even) {
            background-color: #f9f9f9; /* Alternate row color */
        }
        tr:hover {
            background-color: #f5f5f5; /* Hover color for rows */
        }
        a {
            text-decoration: none; /* Remove underline from links */
            color: blue; /* Link color */
        }
        a:hover {
            text-decoration: underline; /* Underline on hover for links */
        }
    </style>
</head>
<body>
    <% List<Product> prods = (List<Product>) request.getAttribute("productlist"); %>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>NAME</th>
                <th>TYPE</th>
                <th>COST</th>
                <th>EDIT</th>
                <th>DELETE</th>
                <th>ADD</th>
            </tr>
        </thead>
        <tbody>
            <% for(Product p:prods) { %>
                <tr>
                    <td><%= p.getId() %></td>
                    <td><%= p.getName() %></td>
                    <td><%= p.getType() %></td>
                    <td><%= p.getCost() %></td>
                    <td><a href="editproduct?id=<%= p.getId() %>">edit</a></td>
                    <td><a href="deleteproduct?id=<%= p.getId() %>">delete</a></td>
                    <td><a href="addproduct">add</a></td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <a href="Adminmenu.jsp">logout</a>
</body>
</html>
