<%-- Document : home Created on : May 17, 2023, 7:08:51 PM Author : Admin --%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Biagiotti &#8211;Beauty and Cosmetics Shop</title>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <link rel="stylesheet" type="text/css" href="./assets/bootstrap-5.3.0-dist/css/bootstrap.min.css" />

        <!-- câu lệnh nếu trình duyệt nhỏ hơn IE 9 thì sẽ add thư viện hỗ trợ  vào -- bình thường thì không cần  -->
        <!--[if lt IE 9]>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <link rel="stylesheet" type="text/css" href="./assets/css/main1.css" />
        <link rel="stylesheet" type="text/css" href="./assets/bootstrap-5.3.0-dist/js/bootstrap.bundle.min.js" />        
    
      
        
    </head>

    <body>
        <div class="header-wrapper">
            <div class="header-info">
                <div class="container1">
                    <div class="header-info-row">
                        <div class="header-info-email" white>
                            <a href="biagiottitheme@gmail.com">biagiottitheme@gmail.com</a>
                        </div>
                        <div class="header-info-Free-shipping">Free shipping on international orders of $150+</div>
                        <div class="header-info-log-in">
                            <c:if test="${sessionScope.user != null}">
                                <a href="LoginServlet" class="header-link"><span><i class="fa-solid fa-user"></i>&nbsp${sessionScope.user.email}</span></a>
                                <span> / </span>
                                <a href="LogoutServlet" class="log-out">Log Out</span></a>
                            </c:if>
                            <c:if test="${sessionScope.user == null}">
                                <a href="LoginServlet" class="header-link"><span><i class="fa-solid fa-user"></i>&nbspSign in</span></a>
                                        </c:if>
                            <!--                                <a href="LoginServlet"><span>Log in</span>
                                                            <i class="fa fa-user" aria-hidden="true"></i>
                                                            </a>-->
                        </div>
                    </div>

                </div>
            </div>
            <div class="header-menu">
                <div class="container2">
                    <div class="header-menu-row">
                        <!-- 
                        <div class="header-menu-wishlist">
                            <i class="fa fa-heart-o" aria-hidden="true"></i>
                            <span>Wishlist</span>
                        </div> 
                        -->
                        <li class="menu-item" style="max-height: 3rem">
                            <a href="http://localhost:8080/BiagiottiApp/HomeServlet"><img src="./assets/images/logo.png"></a> 
                        </li>
<!--                        <li class="menu-item">
                            Biagiotti 
                            <ul class="menu-item-on-hover">
                                <li class="menu-link"><a href="aaa.com"></a>All Categories</li>
                                <li class="menu-link"><a href="aaa.com"></a>All Products</li>
                            </ul>
                        </li>-->
                        <li class="menu-item">
                            <a href="http://localhost:8080/BiagiottiApp/ProductDetailServlet">Products</a>
                            <ul class="menu-item-on-hover">
                                <c:forEach items="${categoryList}" var="category">
                                    <li class="menu-link">
                                        <a href="CategoryServlet?categoryId=${category.id}">
                                            <h1 class="category-name">${category.name}</h1>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </li>
                        <li class="menu-item">
                            Pages
                            <ul class="menu-item-on-hover">
                                <li class="menu-link"><a href="aaa.com"></a>About Us</li>
                                <li class="menu-link"><a href="aaa.com"></a>Our Team</li>
                                <li class="menu-link"><a href="aaa.com"></a>FAQ Page</li>
                                <li class="menu-link"><a href="aaa.com"></a>Coming Soon</li>
                                <li class="menu-link"><a href="aaa.com"></a>Pricing Plans</li>
                            </ul>
                        </li>
                        <li class="menu-item">
                            Blog
                            <ul class="menu-item-on-hover">
                                <li class="menu-link"><a href="aaa.com"></a>Skincare</li>
                                <li class="menu-link"><a href="aaa.com"></a>Make Up</li>
                                <li class="menu-link"><a href="aaa.com"></a>Stay Healthy</li>
                            </ul>

                        </li>
                       
                    </div>
                    <div class="header-menu-option">
                        <form action="SearchServlet">
                            <input type="text" name="key" class="form-control">
                            <button type="submit" class="header-menu-options-search"><i
                                    class="fa fa-search"></i></button>

                        </form>
                        <a href="CartServlet"><span class="header-menu-options-shoppingbag"><i class="fa fa-shopping-bag"></i></span>
                        </a>
                        <span class="header-menu-options-more-option">More</span>
                    </div>

                </div>
            </div>
            <div>

            </div>
        </div>
       