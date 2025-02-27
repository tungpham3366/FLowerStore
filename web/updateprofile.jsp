<%-- 
    Document   : updateprofile
    Created on : Jul 14, 2023, 10:10:43 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    .form-container {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f7f7f7;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .form-container h3 {
        color: red;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-container .form-control {
        margin-bottom: 15px;
    }

    .form-container .col-md-6 {
        padding-left: 0;
        padding-right: 0;
    }

    .form-container label {
        font-weight: bold;
    }

    .form-container input[type="submit"] {
        width: 100%;
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
        border-radius: 5px;
    }

    .form-container input[type="submit"]:hover {
        background-color: #45a049;
    }

    .form-container center {
        margin-top: 20px;
    }
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
                <div>
             <button  class="back-button"><a  href="profile">Back</a></button>
        </div>
        <div class="form-container">
    <form action="updateprofile" method="post">
        <h1>Update profile</h1>
        <h3>${requestScope.er}</h3>
        <div class="row">
             <div class="col-md-12 mb-3">
                 <input type="hidden" class="form-control" id="password" name="id" value="${sessionScope.profile.customer_id}" placeholder="id" required>
            </div>
           
            <div class="col-md-12 mb-3">
                <input type="text" class="form-control" id="username" name="username" value="${sessionScope.profile.username}" placeholder="User Name" required>
            </div>
           
            <div class="col-md-12 mb-3">
                <div class="form-check form-check-inline">
                    <input type="radio" name="role" id="seller" value="2" checked>
                    <label class="form-check-label" for="seller">Seller</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="role" id="customer" value="3">
                    <label class="form-check-label" for="customer">Customer</label>
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <input type="text" class="form-control" id="first_name" name="firstname" value="${sessionScope.profile.firstname}" placeholder="First Name" required>
            </div>
            <div class="col-md-6 mb-3">
                <input type="text" class="form-control" id="last_name" name="lastname" value="${sessionScope.profile.lastname}" placeholder="Last Name" required>
            </div>
            <div class="col-12 mb-3">
                <input type="text" class="form-control" id="information" name="information" placeholder="Describe" value="${sessionScope.profile.information}">
            </div>
            <div class="col-12 mb-3">
                <input type="email" class="form-control" id="email" name="email" placeholder="Email" value="${sessionScope.profile.email}">
            </div>
            <div class="col-12 mb-3">
                <input type="text" class="form-control mb-3" id="street_address" name="address" placeholder="Address" value="${sessionScope.profile.address}">
            </div>
            <div class="col-12 mb-3">
                <input type="text" class="form-control" id="phone" name="phone" placeholder="Phone" value="${sessionScope.profile.phone}">
            </div>
            <div class="col-md-6 mb-3">
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" id="gender_male" value="1" checked>
                    <label class="form-check-label" for="gender_male">Men</label>
                </div>
                <div class="form-check form-check-inline">
                    <input type="radio" name="gender" id="gender_female" value="0">
                    <label class="form-check-label" for="gender_female">Women</label>
                </div>
            </div>
            <div class="col-md-6 mb-3">
                <input type="date" class="form-control" id="dob" name="dob" min="0" placeholder="Date Of Birth" value="${sessionScope.profile.dob}">
            </div>
            <div class="col-12 mb-3">
                <input type="text" class="form-control" id="avatar" name="avatar" placeholder="Avatar Link" value="${sessionScope.profile.avatar}">
            </div>
            <div class="col-md-12 mb-2">
                <center>
                    <input type="submit" value="Update" class="btn btn-primary">    
                </center>
            </div>
        </div>
    </form>
</div>
    </body>
</html>
