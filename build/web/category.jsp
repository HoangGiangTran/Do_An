<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : ACER NITRO
--%>
<%@include file="./inc/header.jsp"%>
<div id=app__container"">
    <div class="top-arrival container">
        <!-- top new arrivals -->
        <div class="row">
            <h1 class="heading-title">${category.name}</h1>
        </div>
        <!-- heading product -->
        <div class="heading-bar">
            <span class="heading-desc">
                Browse the collection of our best selling and top interesting products.
            </span>
            <ul class="heading-list">
                <li class="heading-item">
                    <span class="heading-text heading-text-color"> New arrivals</span>
                </li>
                <li class="heading-item">
                    <span class="heading-text"> Featured </span>
                </li>
            </ul>
        </div>
        <!-- top new product -->
        <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="thumnnail-wrap">
                            <a href="ProductDetailServlet?productId=${product.id}">
                                <img src="${product.thumbnail}" alt="" class="product-thumbnail">
                            </a>
                            <div class="product-favourite">
                                <div class="text-action">
                                    <i class="fa fa-address-book-o" aria-hidden="true"></i>
                                </div>
                                <div class="text-action">
                                    <i class="fa fa-address-book-o" aria-hidden="true"></i>
                                </div>
                                <div class="text-action">
                                    <i class="fa fa-address-book-o" aria-hidden="true"></i>
                                </div>
                            </div>
                        </div>
                        <div class="product-footer">
                            <a href="ProductDetailServlet?productId=${product.id}">
                                <h3 class="product-name">${product.name}</h3>
                            </a>
                            <span class="product-category">${product.category.name}</span>
                            <span class="product-price">$${product.price}</span>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>