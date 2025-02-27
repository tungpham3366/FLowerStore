<%-- 
    Document   : login
    Created on : Jul 11, 2023, 7:16:56 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> Login Form | CodingLab </title>
    <style>
    *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins',sans-serif;
}
html,body{
  display: grid;
  height: 100vh;
  place-items:center;
  background: #be2edd;
}
.main_div{
  width: 365px;
  background: #fff;
  padding: 30px;
  border-radius: 5px;
  box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.15);
}
.main_div .title{
  text-align: center;
  font-size: 30px;
  font-weight: 600;
}
.main_div .social_icons{
  margin-top: 20px;
  display: flex;
  justify-content: center;
}
.social_icons a{
  display: block;
  height: 45px;
  width: 100%;
  line-height: 45px;
  text-align: center;
  border-radius: 5px;
  font-size: 20px;
  color: #fff;
  text-decoration: none;
  transition: all 0.3s linear;
}
.social_icons a span{
  margin-left: 5px;
  font-size: 18px;
}
.social_icons a:first-child{
  margin-right: 5px;
  background: #4267B2;
}
.social_icons a:first-child:hover{
  background: #375695;
}
.social_icons a:last-child{
  margin-left: 5px;
  background: #1DA1F2;
}
.social_icons a:last-child:hover{
  background: #0d8bd9;
}
form {
  margin-top: 25px;
}
form .input_box{
  height: 50px;
  width: 100%;
  position: relative;
  margin-top: 15px;
}
.input_box input{
  height: 100%;
  width: 100%;
  outline: none;
  border: 1px solid lightgrey;
  border-radius: 5px;
  padding-left: 45px;
  font-size: 17px;
  transition: all 0.3s ease;
}
.input_box input:focus{
  border-color: #be2edd;
}
.input_box .icon{
  position: absolute;
  top: 50%;
  left: 20px;
  transform: translateY(-50%);
  color: grey;
}
form .option_div{
  margin-top: 5px;
  display: flex;
  justify-content: space-between;
}
.option_div .check_box{
  display: flex;
  align-items: center;
}
.option_div span{
  margin-left: 5px;
  font-size: 16px;
  color: #333;
}
.option_div .forget_div a{
  font-size: 16px;
  color: #be2edd;
}
.button input{
  padding-left: 0;
  background: #be2edd;
  color: #fff;
  border: none;
  font-size: 20px;
  font-weight: 500;
  cursor: pointer;
  transition: all 0.3s linear;
}
.button input:hover{
  background: #a720c5;
}
form .sign_up{
  text-align: center;
  margin-top: 25px;
}
.sign_up a{
  color: #be2edd;
}
form a{
  text-decoration: none;
}
form a:hover{
  text-decoration: underline;
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

  <div class="main_div">
      <button  class="back-button"><a  href="home">Back</a></button>

    <div class="title">Login to Florentino</div>
    
    <form action="login" method="post">
        <h3 style="color: red"> ${requestScope.error}</h3>
      <div class="input_box">
          <input type="text" name="username" placeholder="User Name" required>
        <div class="icon"><i class="fas fa-user"></i></div>
      </div>
      <div class="input_box">
          <input type="password" name="password" placeholder="Password" >
        <div class="icon"><i class="fas fa-lock"></i></div>
      </div>
      <div class="option_div">
        <div class="check_box">
          <input type="checkbox">
          <span>Remember me</span>
        </div>
        <div class="forget_div">
          <a href="forgot">Forgot password?</a>
        </div>
      </div>
      <div class="input_box button">
        <input type="submit" value="Login">
      </div>
      <div class="sign_up">
        Not a member? <a href="signin">Sign up now</a>
      </div>
    </form>
  </div>
  
</body>
</html>
