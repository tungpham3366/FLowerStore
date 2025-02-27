<%-- 
    Document   : data
    Created on : Jul 19, 2023, 2:17:28 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Table Example</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <style>
            table {
                border-collapse: collapse;
                width: 100%;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }

            th {
                background-color: #4CAF50;
                color: white;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2
            }   
        </style>
    </head>
    <body>
        <h1>Most Honor Customers</h1>

        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Total Bills</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.cus}" var="c">
                <tr>
                    <td>${c.customer_id}</td>
                    <td>${c.lastname}</td>
                    <td>${c.email}</td>
                    <td></td>
                </tr>
                </c:forEach>    
            </tbody>
        </table>
        
        <h1>Most Banned Customers</h1>

        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.cu}" var="c">
                <tr>
                    <td>${c.customer_id}</td>
                    <td>${c.lastname}</td>
                    <td>${c.email}</td>
                </tr>
                </c:forEach>    
            </tbody>
        </table>
        
         <h1>Least Soldout Product</h1>

        
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Total Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.lea}" var="p">
                <tr>
                    <td>${p.flower_id}</td>
                    <td>${p.name}</td>
                    <td>${p.price}</td>
                    <td></td>
                </tr>
                </c:forEach>    
            </tbody>
        </table>
         <h1>Most Soldout Product</h1>
         <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Product Name</th>
                    <th>Price</th>
                    <th>Total Quantity</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${requestScope.pro}" var="p">
                <tr>
                    <td>${p.flower_id}</td>
                    <td>${p.name}</td>
                    <td>${p.price}</td>
                    <td></td>
                </tr>
                </c:forEach>    
            </tbody>
        </table>
    </body>
</html>