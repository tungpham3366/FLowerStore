<%-- 
    Document   : product-details
    Created on : Jul 6, 2023, 4:10:09 PM
    Author     : PC
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Customer" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="description" content="">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <!-- Title  -->
        <title>Amado - Furniture Ecommerce Template | Product Details</title>

        <!-- Favicon  -->
        <link rel="icon" href="img/core-img/favicon.ico">

        <!-- Core Style CSS -->
        <link rel="stylesheet" href="css/core-style.css">

    </head>

    <body>
        <!-- Search Wrapper Area Start -->
        <div class="search-wrapper section-padding-100">
            <div class="search-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="search-content">
                            <form action="search" method="get">
                                <input type="search" name="search" id="search" placeholder="Type your keyword...">
                                <button type="submit"><img src="img/core-img/search.png" alt=""></button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Wrapper Area End -->

        <!-- ##### Main Content Wrapper Start ##### -->
        <div class="main-content-wrapper d-flex clearfix">

            <!-- Mobile Nav (max width 767px)-->
            <div class="mobile-nav">
                <!-- Navbar Brand -->
                <div class="amado-navbar-brand">
                    <a href="home"><img src="img/core-img/logo.png" alt=""></a>
                </div>
                <!-- Navbar Toggler -->
                <div class="amado-navbar-toggler">
                    <span></span><span></span><span></span>
                </div>
            </div>

            <!-- Header Area Start -->
            <header class="header-area clearfix">
                <!-- Close Icon -->
                <div class="nav-close">
                    <i class="fa fa-close" aria-hidden="true"></i>
                </div>
                <!-- Logo -->
                <div class="logo">
                    <a href="home"><img src="img/core-img/logo.png" alt=""></a>
                </div>
                <!-- Amado Nav -->
                <nav class="amado-nav">
                    <ul>
                        <li><a href="home">Home</a></li>
                        <li><a href="shop">Shop</a></li>
                        <li class="active"><a href="product-details">Product</a></li>
                        <li><a href="cart">Cart</a></li>
                        <li><a href="checkout">Checkout</a></li>
                    </ul>
                </nav>
                <!-- Button Group -->
                <div class="amado-btn-group mt-30 mb-100">
                    <a href="#" class="btn amado-btn mb-15">%Discount%</a>
                    <a href="#" class="btn amado-btn active">New this week</a>
                </div>
                <!-- Cart Menu -->
                <div class="cart-fav-search mb-100">

                    <% 
                        Customer account = (Customer) session.getAttribute("account");
                    %>
                    <% if (account != null && account.getRole()==1) { %>

                    <a href="managerproduct" class="search-nav"> Manager Products</a>
                    <a href="manageuser" class="search-nav"> Manager User</a>

                    <% }else if (account != null && account.getRole()==2) { %>
                    <a href="managerproduct" class="search-nav"> Manager Products</a>
                    <%}%>


                    <%
                       if(session.getAttribute("account")!=null)
                       {
                    %>
                    <a href="profile" class="search-nav"><img style="width: 21px; height: 19px" src="img/core-img/OIP.jpg" alt=""> ${sessionScope.account.username}</a>
                        <%
                        }
                        else
                        {
                        %>
                    <a href="login" class="search-nav"><img style="width: 21px; height: 19px" src="img/core-img/OIP.jpg" alt="">Login</a>
                        <%
                            }
                        %>
                    <a href="cart" class="cart-nav"><img src="img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>
                    <a href="#" class="fav-nav"><img src="img/core-img/favorites.png" alt=""> Favourite</a>
                    <a href="#" class="search-nav"><img src="img/core-img/search.png" alt=""> Search</a>
                </div>
                <!-- Social Button -->
                <div class="social-info d-flex justify-content-between">
                    <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                    <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                </div>
            </header>
            <!-- Header Area End -->

            <!-- Product Details Area Start -->
            <div class="single-product-area section-padding-100 clearfix">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-12">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb mt-50">
                                    <li class="breadcrumb-item"><a href="home">Home</a></li>
                                    <li class="breadcrumb-item"><a href="shop">Shop</a></li>
                                    <li class="breadcrumb-item"><a href="product-details">Product-details</a></li>
                                    <li class="breadcrumb-item active" aria-current="page"></li>
                                </ol>
                            </nav>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-12 col-lg-7">
                            <div class="single_product_thumb">
                                <div id="product_details_slider" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <c:forEach items="${images}" var="i">
                                            <li data-target="#product_details_slider" data-slide-to="${i.image_id}" style="background-image: url(${i.image_URL});">
                                            </li>

                                        </c:forEach>
                                    </ol>
                                    <div class="carousel-inner">
                                        <c:forEach items="${images}" var="i">
                                            <div class="carousel-item active">
                                                <a class="gallery_img" href="${i.image_URL}">
                                                    <img class="d-block w-100" src="${i.image_URL}" alt="First slide">
                                                </a>
                                            </div>
                                        </c:forEach>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5">
                            <div class="single_product_desc">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price"><fmt:formatNumber pattern="##.#" value="${product.price}" /></p>
                                    <a href="product-details">
                                        <h6>${product.name}</h6>
                                    </a>
                                    <!-- Ratings & Review -->
                                    <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                        <div class="ratings">
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                            <i class="fa fa-star" aria-hidden="true"></i>
                                        </div>
                                        <div class="review">
                                            <a href="#">Write A Review</a>
                                        </div>
                                    </div>
                                    <!-- Avaiable -->
                                    <c:if test="${product.status==1}">
                                        <p style="color: green" class="avaibility"> In Stock</p>
                                    </c:if>
                                    <c:if test="${product.status==0}">
                                        <p style="color: red" class="avaibility"> Out of Stock</p>
                                    </c:if>
                                </div>

                                <div class="short_overview my-5">
                                    <p>Ngày Sản Xuất: ${product.date}</p>
                                </div>

                                <div class="short_overview my-5">
                                    <p>${product.describe}</p>
                                </div>

                                <!-- Add to Cart Form -->
                                <form name="f" action="carting" class="cart clearfix">
                                    <div class="cart-btn d-flex mb-50">
                                        <p>Qty</p>
                                        <div class="quantity">
                                            <input type="hidden" name="id" value="${product.flower_id}">
                                            <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if (!isNaN(qty) & amp; & amp; qty & gt; 1) effect.value--; return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                            <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="num" value="1">
                                            <span class="qty-plus" onclick="var effect = document.getElementById('qty');
                                                    var qty = effect.value;
                                                    if (!isNaN(qty))
                                                        effect.value++;
                                                    return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                        </div>
                                    </div>
                                    <input type="button" name="addtocart" value="Add to cart" onclick="buy(${product.flower_id})" class="btn amado-btn">
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Product Details Area End -->
        </div>
        <!-- ##### Main Content Wrapper End ##### -->

        <!-- ##### Newsletter Area Start ##### -->
        <section class="newsletter-area section-padding-100-0">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Newsletter Text -->
                    <div class="col-12 col-lg-6 col-xl-7">
                        <div class="newsletter-text mb-100">
                            <h2>Subscribe for a <span>25% Discount</span></h2>
                            <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                        </div>
                    </div>
                    <!-- Newsletter Form -->
                    <div class="col-12 col-lg-6 col-xl-5">
                        <div class="newsletter-form mb-100">
                            <form action="#" method="post">
                                <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                                <input type="submit" value="Subscribe">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- ##### Newsletter Area End ##### -->

        <!-- ##### Footer Area Start ##### -->
        <footer class="footer_area clearfix">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-4">
                        <div class="single_widget_area">
                            <!-- Logo -->
                            <div class="footer-logo mr-50">
                                <a href="home"><img src="img/core-img/logo2.png" alt=""></a>
                            </div>
                            <!-- Copywrite Text -->
                            <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a> & Re-distributed by <a href="https://themewagon.com/" target="_blank">Themewagon</a>
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                    </div>
                    <!-- Single Widget Area -->
                    <div class="col-12 col-lg-8">
                        <div class="single_widget_area">
                            <!-- Footer Menu -->
                            <div class="footer_menu">
                                <nav class="navbar navbar-expand-lg justify-content-end">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                    <div class="collapse navbar-collapse" id="footerNavContent">
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item active">
                                                <a class="nav-link" href="home">Home</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="shop">Shop</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="product-details">Product</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="cart">Cart</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="checkout">Checkout</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- ##### Footer Area End ##### -->

        <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
        <script src="js/jquery/jquery-2.2.4.min.js"></script>
        <!-- Popper js -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap js -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Plugins js -->
        <script src="js/plugins.js"></script>
        <!-- Active js -->
        <script src="js/active.js"></script>
        <script type="text/javascript">
                                    function buy(id) {
                                        var m = document.f.num.value;
                                        document.f.action = "carting?id=" + id + "&num" + m;
                                        document.f.submit();
                                    }
        </script>   
    </body>

</html>
