<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="./inc/header.jsp" %>
<div class="body-wrapper">
    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="./assets/images/headerbackground1.jpg"
                     class="d-block w-100" alt="...">
                <img src="./assets/images/headerbackground2.jpg"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item active">
                <img src="./assets/images/headerbackground2.jpg"
                     class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item active">
                <img src="./assets/images/headerbackground3.jpg"
                     class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExample"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
</div>
<div class="section1">
    <div class="section1-top">
        <h1>TOP TRENDING PRODUCTS</h1>
        <h3><span class="section1content">Here are our top trending products</span></h3>
    </div>
    <div class="section1-product">
        <div class="container">
            <div class="row">
                <c:forEach items="${productHot}" var="product">
                    <div class="col-md-3 col-sm-6">
                        <div class="product-item">
                            <div class="thumnnail-wrap">
                                <a href="ProductDetailServlet?productId=${product.id}">
                                    <img src="${product.thumbnail}" alt="" class="product-thumbnail">
                                </a>
                                <div class="product-favourite">
                                    <div class="text-action">
                                        <i class="fa-solid fa-heart" aria-hidden="true"></i>
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
</div>
<div class="section2">
    <div class="section2-product">
        <div class="pw">
            <div class="row">
                <c:forEach items="${categoryList}" var="category">
                    <div class="col-md-3 col-sm-6">
                        <div class="product-item2">
                            <div class="thumnnail-wrap">
                                <img src="${category.thumbnail}" alt="" class="product-thumbnail">
                                <div class="product-favourite">
                                    <div class="content">
                                        <a href="CategoryServlet?categoryId=${category.id}">
                                            <h1 class="title">${category.name}</h1>
                                        </a>
                                        <span class="text"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>

        </div>
    </div>
    <div class="section2-brand">
        <div class="sect-brand-item">
            <img src="./assets/images/brand1.png" alt="">
        </div>
        <div class="sect-brand-item">
            <img src="./assets/images/brand2.png" alt="">
        </div>
        <div class="sect-brand-item">
            <img src="./assets/images/brand3.png" alt="">
        </div>
        <div class="sect-brand-item">
            <img src="./assets/images/brand4.png" alt="">
        </div>
        <div class="sect-brand-item">
            <img src="./assets/images/brand5.png" alt="">
        </div>
    </div>
    <div class="section2-testimonials">
        <div class="testimonials-content">
            <h3>I LOVE THE PRODUCTS</h3>
            <p>"I would go to cosmetics counters and buy two or three foundations and powders, and then go home and mix them before I came up with something suitable for my undertones."</p>
            <p>-Jane-</p>
        </div>
        <div class="testimonials-content">
            <h3>GREAT SITE</h3>
            <p>"I don't work with a glam squad to get me together for the red carpet, I really enjoy the time it takes to do it myself, to choose my clothes and do my own makeup and my own hair."</p>
            <p>-Jeanny-</p>
        </div>
        <div class="testimonials-content">
            <h3>EXCELLENT SERVICE</h3>
            <p>"Biagiotti is definitely the place to be when it comes to makeup: You go into the store, and touch it, and try it, and love it. I've never bought anything on the Internet. I like experience."</p>
            <p>-Jennifer-</p>
        </div>
    </div>
    <div class="setction2-policy">
        <div class="sect2-policy-content">
            <div class="row">
                <div class="col-md-3 col-sm-6 policy">
                    <h3 class="policy-title">ON-LINE PURCHASE</h3>
                    <p class="policy-content">At vero eos et accusamus et iusto odio digniss ducimus qui
                        blanditiis praesentium volu</p>
                </div>
                <div class="col-md-3 col-sm-6 policy">
                    <h3 class="policy-title">FREE SHIPPING</h3>
                    <p class="policy-content">At vero eos et accusamus et iusto odio digniss ducimus qui
                        blanditiis praesentium volu</p>
                </div>
                <div class="col-md-3 col-sm-6 policy">
                    <h3 class="policy-title">MONEY BACK</h3>
                    <p class="policy-content">At vero eos et accusamus et iusto odio digniss ducimus qui
                        blanditiis praesentium volu</p>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="section4">
    <div class="sect4-top">
        <div class="row">
            <div class="col-md-6 ">
                <img src="./assets/images/section4.1.jpg" alt="" section4-top-left">
            </div>
            <div class="col-md-6 section4-top-right">
                <div class="section4-cotent">
                    <h1>
                        HOW DID WE GET HERE
                    </h1>
                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
                        voluptatum deleniti atque corrupt
                    </p>
                    <p>
                        At vero eos et accusamus et iusto odi odgnissimos ducimus qui blanditiis praesentium
                        volup tatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                        occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt
                        mollitia animi
                    </p>
                </div>

            </div>
        </div>
    </div>
    <div class="sect4-bottom">
        <div class="row">
            <div class="col-md-6 section4-bottom-left">
                <div class="section4-cotent">
                    <h1>
                        HOW DID WE GET HERE
                    </h1>
                    <p>
                        At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium
                        voluptatum deleniti atque corrupt
                    </p>
                    <p>
                        At vero eos et accusamus et iusto odi odgnissimos ducimus qui blanditiis praesentium
                        volup tatum deleniti atque corrupti quos dolores et quas molestias excepturi sint
                        occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt
                        mollitia animi
                    </p>
                </div>
            </div>
            <div class="col-md-6 section4-bottom-right">
                <img src="./assets/images/section4.4.jpg" alt="">
            </div>
        </div>
    </div>

</div>
<div class="section5">
    <div class="section5-title">
        <h2>
            LATEST SKINCARE ESSENTIALS
        </h2>
        <p>
            At vero eos et accusamus et iusto
        </p>
    </div>
    <div class="section5-products">
        <div class="container">
            <div class="row">
                <c:forEach items="${productLatest}" var="product">
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
</div>

<%@include file="./inc/footer.jsp" %>