<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : ACER NITRO
--%>
<%@include file="./inc/header.jsp"%>
<div>
    
</div>
<div id="app__container ">
    <div class="container">
        <div class="product-content">
            <div class="row">
                <div class="col-md-6">
                    <div class="product-content-top">
                        <img src="${product.thumbnail}" alt="" class="product-content-top-img">
                        <div class="product-content-top-value">
                            <a href="" class="product-content-top-link"><i
                                    class=" product-content-top-icon fa-regular fa-heart"></i></a>
                            <div class="product-mes-item">
                                <a href="" class="product-mes-link"><span class="product-mes">Add
                                        towishlist</span></a>
                            </div>
                        </div>
                    </div>
<!--                    <div class="row">
                        <c:forEach items="${product.galleries}" var="image">
                            <div class="col-md-3">
                                <div class="product-content-bottom">
                                    <img src="${image.url}" alt=""
                                         class="product-content-bottom-img-saferi">
                                </div>
                            </div>
                        </c:forEach>
                    </div>-->
                </div>
                <div class="col-md-6">
                    <div class="product-content-right">
                        <h1 class="product-content-right-heading">${product.name}</h1>
                        <span class="product-content-right-price">$${product.price}</span>
                        <div class="product-content-right-evaluate">
                            <div class="product-content-right-start">
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                                <i class="fa-solid fa-star"></i>
                            </div>
                            <a href="#" class="product-content-right-cmt"> (1 customer review)</a>
                        </div>
                        <span class="product-content-right-content">Lorem ipsum dolor sit amet, consectetur
                            adipisicing elit. Vero quos, ullam quidem suscipit, doloribus laboriosam unde libero
                            necessitatibus ipsa autem excepturi dolorum modi voluptatem quia cum optio!
                            Adipisci, aut placeat!</span>
                         <form class="product-content-right-form" action="CartServlet" method="post">
                            <input type="hidden" name="action" value="create"/>
                            <input type="hidden" name="productId" value="${product.id}"/>
                            <input type="hidden" name="productPrice" value="${product.price}"/>
                            <div class="product-content-right-quality">
                                <input name="quantity" value="1" type="number" min="1" class="quality-number"/>
                            </div>
                            <button class="_btn _btn-quality" type="submit"><i class="fa-sharp fa-solid fa-cart-shopping"></i>
                                add to cart 
                            </button>
                        </form>

                        <span class="product-content-right-category">Category: <a href=""
                                                                                  class="content-right-category-link">Engine</a></span>
                        <div class="product-content-right-share">Share:
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-twitter"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-vk"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-pinterest"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-solid fa-envelope"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-invision"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-solid fa-phone-volume"></i>
                            </a>
                            <a href="" class="content-right-share-link">
                                <i class="fa-brands fa-skype"></i>
                            </a>
                        </div>
                    </div>

                </div>

            </div>
            <!-- w3-tav -->
            <ul class="w3-tav-list">
                <li class="w3-tav-item"><a href="#" class="w3-tav-link">Description</a></li>
                <li class="w3-tav-item"><a href="#" class="w3-tav-link">Reviews (1)</a></li>
            </ul>
        </div>


    </div>
</div>
<%@include file="./inc/footer.jsp"%>