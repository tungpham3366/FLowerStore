<%-- 
    Document   : signin
    Created on : Jul 11, 2023, 7:28:07 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Amado - Furniture Ecommerce Template | Checkout</title>

        <!-- Favicon  -->
        <link rel="icon"  href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="css/core-style.css">
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
        <div class="main-content-wrapper d-flex clearfix">
            <div class="cart-table-area section-padding-100">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12 col-lg-8">
                            <div class="checkout_details_area mt-50 clearfix">
                                <div class="cart-title">
                                    <div class="cart-title">
                                        <h2 >Sign In</h2>
                                    </div>
                                </div>

                                <form action="signin" method="post">
                                    <h3 style="color: red">${requestScope.er}</h3>
                                    <div class="row">
                                        <div class="col-md-12 mb-3">
                                            <input type="text" class="form-control" id="username" name="username" value="" placeholder="User Name" required>
                                        </div>
                                        <div class="col-md-12 mb-3">
                                            <input type="password" class="form-control" id="password" name="password" value="" placeholder="Pass Word" required>
                                        </div>
                                        <div class="col-md-12 mb-3">
                                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Seller  <input type="radio" name="role" checked value="2"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           Customer <input type="radio" name="role" checked value="3">
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <input type="text" class="form-control" id="first_name" name="firstname" value="" placeholder="First Name" required>
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <input type="text" class="form-control" id="last_name" name="lastname" value="" placeholder="Last Name" required>
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="text" class="form-control" id="information" name="information" placeholder="Describe" value="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="">
                                        </div>
                                       
                                        <div class="col-12 mb-3">
                                            <input type="text" class="form-control mb-3" id="street_address" name="address" placeholder="Address" value="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="text" class="form-control" id="phone"name="phone" placeholder="Phone" value="">
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Men  <input type="radio" name="gender" checked value="1"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                           Women <input type="radio" name="gender" checked value="0">
                                        </div>
                                        <div class="col-md-6 mb-3">
                                            <input type="date" class="form-control" id="dob" name="dob" min="0" placeholder="Date Of Birth" value="">
                                        </div>
                                        <div class="col-12 mb-3">
                                            <input type="text" class="form-control" id="avatar" name="avatar" placeholder="Avatar Link" value="">
                                        </div>
                                        <div class="col-md-12 mb-2">
                                            <center>
                                         <input  type="submit" value="Sign In"/>   
                                        </center>
                                        </div>  
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-12 col-lg-4">
                            <div class="cart-summary">
                                <img src="images/cayvanphong/img31.jpg"></img>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
