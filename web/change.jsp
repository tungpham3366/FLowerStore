<%-- 
    Document   : change
    Created on : Jul 12, 2023, 11:59:10 AM
    Author     : PC
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Change Password Form</title>
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

            input[type="password"] {
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
            .matched {
                color: #008000;
                background-color: #ADFF2F;
            }

            .not-matched {
                color: #FF0000;
                background-color: #FFC0CB;
            }
        </style>
    </head>
    <body>
        <h1>Change Password Form</h1>
        <button  class="back-button"><a  href="forgot">Back</a></button>
        <h3 style="color: red"> ${requestScope.er}</h3>
        <form method="post" action="change">
            <input type="hidden"  name="username" value="${requestScope.username}">
            <h3>Change password for user: ${requestScope.username}</h3>
            <label for="newPassword">New Password:</label>
            <input type="password" id="password1" name="password1" required>
                
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="password2" name="password2" required>

            <input type="submit" value="Submit">
        </form>
            <script>
            var password1Input = document.getElementById("password1");
            var password2Input = document.getElementById("password2");

// Lắng nghe sự kiện input trên password1Input
            password2Input.addEventListener("input", checkPasswordMatch);

// Hàm kiểm tra sự khớp của mật khẩu
            function checkPasswordMatch() {
                var password1Value = password1Input.value;
                var password2Value = password2Input.value;

                if (password1Value === password2Value) {
// Nếu mật khẩu khớp, thay đổi lớp CSS thành "matched"
                    password2Input.classList.remove("not-matched");
                    password2Input.classList.add("matched");
                } else {
// Nếu mật khẩu không khớp, thay đổi lớp CSS thành "not-matched"
                    password2Input.classList.remove("matched");
                    password2Input.classList.add("not-matched");
                }
            }

        </script>
    </body>
</html>
