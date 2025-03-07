<%-- 
    Document   : profile
    Created on : Jul 12, 2023, 3:18:29 AM
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
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                width: 100%;
                height: 100vh;
                display: flex;
                position: relative;
                background: #eeeeec;
                align-items: center;
                flex-direction: column;
                justify-content: center;

                font-family: 'Open Sans', sans-serif;
                font-size: 100%;
            }

            // ------------------------------------------------

            $purple-gradient: linear-gradient(45deg, rgba(87,29,146,1) 0%,rgba(172,25,102,1) 100%);
            $purple-gradient: linear-gradient(to bottom right, #C90A6D, #FF48A0);
            $blue1-gradient: linear-gradient(to bottom right, #5E5AEC, #3F9EFC);
            $blue2-gradient: linear-gradient(to bottom right, #6452E9, #639FF9);
            $shadow: 0 13px 26px rgba(#000, .2), 0 3px 6px rgba(#000, .2);

            // ------------------------------------------------

            .customSlider {
                opacity: 0;
                display: none;
                + label {
                    position: relative;
                    top: 35px;
                    left: 15px;
                    cursor: pointer;
                    &:before, &:after {
                        background: #FFFFFF;
                        position: absolute;
                        content: '';
                    }
                    &:before {
                        top: -90px;
                        left: -60px;
                        width: 80px;
                        height: 40px;
                        background: #ccc;
                        border-radius: 20px;
                        transition: background .75s;
                    }
                    &:after {
                        height: 34px;
                        width: 34px;
                        top: -87px;
                        left: -55px;
                        border-radius: 50%;
                        transition: all .5s;
                    }
                }

                &:checked + label:after {
                    height: 34px;
                    width: 34px;
                    top: -87px;
                    left: -19px;
                    border-radius: 50%;
                }

                &:checked ~ .wrapper {
                    color: #fff;
                    transition: background .6s ease;
                    background: #31394D;

                    .top-icons {
                        i {
                            color: #fff;
                        }
                    }

                    .profile {
                        // &:after {background: #ececece;}
                        .name {
                            color: #FDFEFF;
                        }

                        .title {
                            color: #7C8097;
                        }

                        .description {
                            color: #FDFEFF;
                        }
                    }
                    .icon {
                        h4 {
                            color: #FFFFFF;
                        }

                        p {
                            color: #666B7D;
                        }
                    }
                }
            }

            .wrapper {
                width: 320px;
                height: 540px;
                background: #FDFEFF;
                transition: background .6s ease;
                border-radius: 10px;
                padding: 20px 20px 20px 20px;
                box-shadow: 0 8px 40px rgba(#000000, .2);

                .top-icons {
                    i {
                        color: #080911;
                        &:nth-of-type(1) {
                            float: left;
                        }
                        &:nth-of-type(2) {
                            float: right;
                        }
                        &:nth-of-type(3) {
                            float: right;
                            padding-right: .8em;
                        }
                    }
                }
                .profile {
                    margin-top: 2.2em;
                    position: relative;

                    &:after {
                        width: 100%;
                        height: 1px;
                        content: ' ';
                        display: block;
                        margin-top: 1.3em;
                        background: #E9EFF6;
                    }

                    .check {
                        position: absolute;
                        right: 5em;
                        bottom: 12.7em;
                        i {
                            color: #fff;
                            width: 20px;
                            height: 20px;
                            font-size: 12px;
                            line-height: 20px;
                            text-align: center;
                            border-radius: 100%;
                            background: $purple-gradient;
                        }
                    }
                    .thumbnail {
                        width: 124px;
                        height: 124px;
                        display: flex;
                        margin-left: auto;
                        margin-right: auto;
                        margin-bottom: 1.5em;
                        border-radius: 100%;
                        box-shadow: $shadow;
                    }
                    .name {
                        color: #2D354A;
                        font-size: 24px;
                        font-weight: 600;
                        text-align: center;
                    }

                    .title {
                        color: #7C8097;
                        font-size: .75em;
                        font-weight: 300;
                        text-align: center;
                        padding-top: .5em;
                        padding-bottom: .7em;
                        letter-spacing: 1.5px;
                        text-transform: uppercase;
                    }

                    .description {
                        color: #080911;
                        font-size: 14px;
                        font-weight: 300;
                        text-align: center;
                        margin-bottom: 1.3em;
                    }

                    .btn {
                        color: #fff;
                        width: 130px;
                        height: 42px;
                        outline: none;
                        border: none;
                        display: block;
                        cursor: pointer;
                        font-weight: 300;
                        margin-left: auto;
                        margin-right: auto;
                        border-radius: 70px;
                        box-shadow: 0 13px 26px rgba(#000, .16), 0 3px 6px rgba(#000, .16);
                        background: $purple-gradient;
                    }
                }

                .social-icons {
                    display: flex;
                    margin-top: 1.2em;
                    justify-content: space-between;

                    .icon {
                        display: flex;
                        align-items: center;
                        flex-direction: column;
                        a {
                            color: #fff;
                            width: 60px;
                            height: 60px;
                            font-size: 28px;
                            line-height: 60px;
                            text-align: center;
                            border-radius: 30px;
                            box-shadow: $shadow;
                        }
                        &:nth-of-type(1) {
                            a {
                                background: $purple-gradient;
                            }
                        }
                        &:nth-of-type(2) {
                            a {
                                background: $blue1-gradient;
                            }
                        }
                        &:nth-of-type(3) {
                            a {
                                background: $blue2-gradient;
                            }
                        }

                        h4 {
                            color: #080911;
                            font-size: 1em;
                            margin-top: 1.3em;
                            margin-bottom: .2em;
                        }

                        p {
                            color: #666B7D;
                            font-size: 12px;
                        }
                    }
                }
            }

            .concept {
                position: absolute;
                bottom: 25px;
                color: #AAB0C4;
                font-size: .9em;
                font-weight: 400;
                a {
                    color: rgba(172,25,102,1);
                    text-decoration: none;
                }
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
.btn {
  border: none;
  background-color: transparent;
  display: inline-block;
  margin-right: 10px;
}

.btn a {
  text-decoration: none;
  color: #333;
}

.btn:hover {
  background-color: #f5f5f5;
}
body {
  background-image: url('img/bg-img/8.jpg');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

body::before {
  content: "";
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background-color: rgba(255, 255, 255, 0.5);
  z-index: -1;
}
        </style>
    </head>
    <body>
        <button  class="back-button"><a  href="home">Back</a></button>
        <label for="slider"></label>

        <div class="wrapper">
            <div class="top-icons">
                <i class="fas fa-long-arrow-alt-left"></i>
                <i class="fas fa-ellipsis-v"></i>
                <i class="far fa-heart"></i>
            </div>

            <div class="profile">
                <img src="${sessionScope.profile.avatar}" class="thumbnail">
                <div class="check"><i class="fas fa-check"></i></div>
                <h3 class="name">${sessionScope.profile.firstname} ${sessionScope.profile.lastname}</h3>
               
                <p class="title">${sessionScope.profile.information}</p>
                <p class="description">Address: ${sessionScope.profile.address}</p>
                <center><p>Gender:  <img width="18" height="18" src="${(sessionScope.profile.gender?'img/gender/male.png':'img/gender/female.png')}"/></p>
                    <p>Email: ${sessionScope.profile.email}</p>
                    <p>Date of Birth: ${sessionScope.profile.dob}</p>
                    <p>hotline: ${sessionScope.profile.phone}</p>
                </center>
                    <button type="button" class="btn"><a  href="updateprofile?customer_id=${sessionScope.profile.customer_id}">Edit Profile</a> </button>
                <button type="button" class="btn"><a  href="change">Change Password</a> </button>
                <button type="button" class="btn"><a  href="logout">Logout</a> </button>
            </div>
        </div>
    </body>
</html>
