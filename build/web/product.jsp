<%@include file="./inc/header.jsp"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="section1-product margin-for-div">
    <div class="container">
        <div class="row">
            <c:forEach items="${productList}" var="product">
                <div class="border col-md-3 col-sm-6">
                    <div class="product-item">
                        <div class="thumbnail-wrap">
                            <div class="img-link">
                                <div class="img-product-wrap">
                                    <a href="ProductDetailServlet?productId=${product.id}">
                                        <img class="img-lv1" src="${product.thumbnail}" alt="product">
                                    </a>
                                </div>
                                <div class="footer-inner">
                                    <ul class="product-favourite1">
                                        <li>
                                                <a href="#" class="text-action" class="text-action"><i class="fa-solid fa-cart-shopping"></i></a>
                                            </li>
                                        <li>
                                            <a href="#" class="text-action" class="text-action"><i class="fa-regular fa-heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#" class="text-action"><i class="fa-solid fa-arrows-rotate"></i></a>
                                        </li>
                                        <li>
                                            <a href="#" class="text-action"><i class="fa-regular fa-eye"></i></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form class="product-footer" action="CartServlet" method="post">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="quantity" value="1"  min="1" />
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="productPrice" value="${product.price}"/>
                            <span class="product-category">${product.category.name}</span>
                            <h1>${product.name}</h1>
                            <div class="product-price-wrap">
                                <span class="product-price">
                                    <fmt:setLocale value = "en_US"/>
                                    <fmt:formatNumber type="currency" value = "${product.price}" /> 
                                </span>
                            </div>
                            <button type="submit" class="deal-info-button">Add to cart</button>
                        </form>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>
