<%-- 
    Document   : forgot
    Created on : Jul 15, 2023, 1:07:55 PM
    Author     : PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>Forget Password Form</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
	<style>
		form {
			display: flex;
			flex-direction: column;
			align-items: center;
			padding: 20px;
			background-color: #f7f7f7;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			max-width: 400px;
			margin: 0 auto;
		}
		
		input[type="text"], input[type="email"] {
			padding: 10px;
			border-radius: 5px;
			border: none;
			margin-bottom: 10px;
			width: 100%;
			box-sizing: border-box;
		}
		
		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			border: none;
			padding: 10px;
			border-radius: 5px;
			cursor: pointer;
		}
		
		input[type="submit"]:hover {
			background-color: #3e8e41;
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
	<h1>Forget Password Form</h1>
	        <button  class="back-button"><a  href="login">Back</a></button>

        <h3 style="color: red">${requestScope.er}</h3>
	
	<form method="post" action="forgot">
		<label for="username">Username:</label>
		<input type="text" id="username" name="username" required>
		
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>
		
		<input type="submit" value="Submit">
	</form>
</body>
</html>