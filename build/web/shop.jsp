<%-- 
    Document   : shop
    Created on : Jul 6, 2023, 3:35:23 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
        <title> Shop</title>

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
                        <li class="active"><a href="shop">Shop</a></li>
                        <li><a href="product-details">Product</a></li>
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

            <div class="shop_sidebar_area">
                <!-- ##### Single Widget ##### -->
                <div class="widget catagory mb-50">
                    <!-- Widget Title -->
                    <h6 class="widget-title mb-30">Catagories</h6>

                    <!--  Catagories  -->

                    <div class="catagories-menu">
                        <ul class="active">
                            <li><a href="shop?category_id=0">ALL</a></li>
                                <c:forEach items="${requestScope.category}" var="l">
                                <li><a href="shop?category_id=${l.category_id}">${l.name}</a></li>
                                </c:forEach> 
                        </ul>
                    </div>

                </div>
                <!-- ##### Single Widget ##### -->
                <!-- ##### Single Widget ##### -->
                <div class="widget color mb-50">
                    <!-- Widget Title -->
                    <h6 class="widget-title mb-30">Color</h6>

                    <div class="widget-desc">
                        <form action="searchbycolor">
                            <ul  class="d-flex">
                                <li><a href="searchbycolor?color=White" class="color1"></a></li>
                                <li><a href="searchbycolor?color=Grey" class="color2"></a></li>
                                <li><a href="searchbycolor?color=Black" class="color3"></a></li>
                                <li><a href="searchbycolor?color=Blue" class="color4"></a></li>
                                <li><a href="searchbycolor?color=Red" class="color5"></a></li>
                                <li><a href="searchbycolor?color=Yellow" class="color6"></a></li>
                                <li><a href="searchbycolor?color=Orange" class="color7"></a></li>
                                <li><a href="searchbycolor?color=Brown" class="color8"></a></li>
                            </ul>
                        </form>
                    </div>
                </div>

                <!-- ##### Single Widget ##### -->
                <div class="widget price mb-50">
                    <!-- Widget Title -->
                    <h6 class="widget-title mb-30">Price</h6>

                    <div class="widget-desc">
                        <div class="slider-range">
                            <form id="myKey" action="searchbyprice">    
                                <input type="radio" name="price" value="1" onclick="submitForm2()">100đ-1tr<br/>
                                <input type="radio" name="price" value="2" onclick="submitForm2()">1tr-10tr<br/>
                                <input type="radio" name="price" value="3" onclick="submitForm2()">10tr-100tr
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <div class="amado_product_area section-padding-100">
                <div class="container-fluid">

                    <div class="row">
                        <div class="col-12">
                            <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                                <!-- Total Products -->
                                <div class="total-products">
                                    <p>Showing 1-8 0f 25</p>
                                    <div class="view d-flex">
                                        <a href="#"><i class="fa fa-th-large" aria-hidden="true"></i></a>
                                        <a href="#"><i class="fa fa-bars" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <!-- Sorting -->
                                <div class="product-sorting d-flex">
                                    <div class="sort-by-date d-flex align-items-center mr-15">
                                        <p>Sort by</p>
                                        <form id="myForm" action="sortbydate">
                                            <select onchange="submitForm()" name="select">
                                                <option value="1">Longest</option>
                                                <option value="2">Newest</option>
                                            </select>
                                        </form>


                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>


                    <div class="row">

                        <!-- Single Product Area -->
                        <c:forEach items="${requestScope.product}" var="p">
                            <div >
                                <div class="single-product-wrapper">  
                                    <!-- Product Image -->
                                    <div class="product-img" style="width: 300px; height: 300px; padding-bottom: 30px;">
                                        <img src="${p.images}" alt="">
                                        <!-- Hover Thumb -->
                                        <img class="hover-img" src="" alt="">
                                    </div>

                                    <!-- Product Description -->
                                    <div class="product-description d-flex align-items-center justify-content-between">
                                        <!-- Product Meta Data -->
                                        <div class="product-meta-data">
                                            <div class="line"></div>
                                            <p class="product-price">
                                                <fmt:formatNumber pattern="##.#" value="${p.price*2}" />
                                            </p>
                                            <a href="product-details?flower_id=${p.flower_id}">
                                                <h6>${p.name}</h6>
                                            </a>
                                        </div>
                                        <!-- Ratings & Cart -->
                                        <div class="ratings-cart text-right">
                                            <div class="ratings">
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                                <i class="fa fa-star" aria-hidden="true"></i>
                                            </div>
                                            <div class="cart">
                                                <a href="cart" data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="img/core-img/cart.png" alt=""></a>
                                                <input style="background-color: orange" type="button" onclick="buy('id')" value="add to cart"/>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                    </div>



                    <div class="row">
                        <div class="col-12">
                            <!-- Pagination -->
                            <nav aria-label="navigation">
                                <ul class="pagination justify-content-end mt-50">
                                    <li class="page-item active"><a class="page-link" href="#">01.</a></li>
                                    <li class="page-item"><a class="page-link" href="#">02.</a></li>
                                    <li class="page-item"><a class="page-link" href="#">03.</a></li>
                                    <li class="page-item"><a class="page-link" href="#">04.</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
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
                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
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

        <script>
            function submitForm2() {
                document.getElementById("myKey").submit();
            }
        </script>

        <script>
            function submitForm() {
                document.getElementById("myForm").submit();
            }
        </script>
    </script>
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
</body>

</html>
<script type="text/javascript">
    function buy(id){
        var m=document.f.num.value;
        document.f.action="buy?id="+id+"&num"+m;
        document.f.submit();
    }
 </script>   