<%-- 
    Document   : search
    Created on : Jul 17, 2023, 3:47:52 AM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Amado - Furniture Ecommerce Template | Home</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="css/core-style.css">

        <link rel="stylesheet" href="style.css">
        <style>
            .back-button {
                float: left;
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 5px;
            }
        </style>
    </head>
    <body>
        <button  class="back-button"><a  href="login">Back</a></button>
        <c:if test="${requestScope.list!=null}">
            <div class="main-content-wrapper d-flex clearfix">
    <c:forEach items="${requestScope.list}" var="p">
                        <div class="single-products-catagory clearfix">
                            <a href="product-details?flower_id=${p.flower_id}">
                                <img src="${p.images}" alt="">
                                <!-- Hover Content -->
                                <div class="hover-content">
                                    <div class="line"></div>
                                    <p>${p.price}</p>
                                    <h4>${p.name}</h4>
                                </div>
                            </a>
                        </div>
      </c:forEach>
            </div>
        </c:if>
        <c:if test="${requestScope.list==null}">
            <h3>Not found</h3>
        </c:if>
            <h3>${requestScope.er}</h3>
    </body>
</html>
