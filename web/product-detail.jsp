<%-- 
    Document   : home
    Created on : May 5, 2023, 7:19:37?PM
    Author     : ACER NITRO
--%>
<%@include file="./inc/header.jsp"%>

<div class="topbanner">
    <img src="./assets/images/headerbackground1.jpg">
</div>
<div class="container margin-for-div">
    <div class="row-detail">
        <div class="img-preview col-md-6 border">
            <img src="${product.thumbnail}" alt="product">
        </div>
        <div class="product-detail-wrap col-md-6">
            <h1 class="product-name">${product.name}</h1>
            <p class="product-price">$${product.price}</p>
            <p class="product-des margin-for-div">${product.description}</p>
            <h4>Buy More Save More!</h4>
            <div class="box-discount border">
                <div class="discount-item border-bottom">
                    <div class="choise-discount">
                        <h5>Buy 3 Items Get 5% OFF</h5>
                        <p>on each product</p>
                    </div>
                    <div>
                        <form action="#" method="get">
                            <button type="submit" class="discount-btn btn btn-dark">Add</button>
                        </form>
                    </div>
                </div>
                <div class="discount-item border-bottom">
                    <div class="choise-discount">
                        <h5>Buy 6 Items Get 10% OFF</h5>
                        <p>on each product</p>
                    </div>
                    <div>
                        <form action="#" method="get">
                            <button type="submit" class="discount-btn btn btn-dark">Add</button>
                        </form>
                    </div>
                </div>
                <div class="discount-item border-bottom">
                    <div class="choise-discount">
                        <h5>Buy 10 Items Get 15% OFF</h5>
                        <p>on each product</p>
                    </div>
                    <div>
                        <form action="#" method="get">
                            <button type="submit" class="discount-btn btn btn-dark">Add</button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="product-quantity-submit">
                <form class="product-content-right-form" action="CartServlet" method="post">
                    <div class="row">
                        <input type="hidden" name="action" value="create"/>
                        <input type="hidden" name="productId" value="${product.id}"/>
                        <input type="hidden" name="productPrice" value="${product.price}"/>
                        <div class="select-quantity">
                            <input name="quantity" value="1" type="number" min="1" class="select-quantity"/>
                        </div>
                        <button class="add-btn btn btn-dark" type="submit"><i class="fa-sharp fa-solid fa-cart-shopping"></i>
                            Add to cart 
                        </button>
                        <div class="icon-btn border">
                            <a href="#"><i class="fa-solid fa-arrows-rotate"></i></a>
                        </div>
                        <div class="icon-btn border">
                            <a href="#"><i class="fa-regular fa-heart"></i></a>
                        </div>
                    </div>
                </form>
            </div>
            
            <div class="product-meta-wrap">
                <span class="product-meta">SKU:<span class="sku-code"> #1800343460</span></span>
                <span class="product-meta">Category:
                    <a href="#" class="category-name">Furniture</a>
                </span>
                <span class="product-meta">Tags:
                    <a href="#" class="product-tags">Furniture</a>,
                    <a href="#" class="product-tags">Storage</a>,
                    <a href="#" class="product-tags">Tables</a>
                </span>
                <span class="product-meta margin-for-div">Share: 
                    <a href="#" class="share-with">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>
                    <a href="#" class="share-with">
                        <i class="fa-brands fa-twitter"></i>
                    </a>
                    <a href="#" class="share-with">
                        <i class="fa-brands fa-tumblr"></i>
                    </a>
                    <a href="#" class="share-with">
                        <i class="fa-brands fa-linkedin-in"></i>
                    </a>
                </span>
            </div>
        </div>
    </div>
    <div class="row margin-for-div">
        <div class="product-description-wrap">
            <div class="des-top border-bottom">
                <div class="des-tab">
                    <a href="#">Description</a>
                </div>
                <div class="des-tab">
                    <a href="#">Reviews (0)</a>
                </div>
            </div>
            <div class="des-bottom">
                <div class="row des-bottom-item">
                    <div class="col-md-6 des-title">
                        <h2>Overview</h2>
                    </div>
                    <div class="col-md-6 des-info-wrap">
                        <h2>The Modern And Minimalist Design</h2>
                        <p>Add clean lines & geometric forms to your Living Room or Bedroom with the modern and minimalist design of the Henson Oak Wood Bedside & Side Table.</p>
                    </div>
                </div>
                <div class="row des-bottom-item">
                    <div class="col-md-6 des-title">
                        <h2>Specification</h2>
                    </div>
                    <div class="col-md-6 des-info-wrap">
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Style</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>Modern</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Main Material</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>Engineered Wood, Oak Veneer Finish</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Colour(S)</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>
                                    Dusty Oak, Espresso Black
                                </span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Overall Dimensions (Cm)</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>50cm (W) x 40cm (D) x 53cm (H)</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Product Width (Cm)</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>50</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Product Depth (Cm)</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>40</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Product Height (Cm)</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>53</span>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 des-info-title">
                                <p>Assembly</p>
                            </div>
                            <div class="col-md-6 des-info">
                                <span>No assembly required</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row des-bottom-item">
                    <div class="col-md-6 des-title">
                        <h2>Description</h2>
                    </div>
                    <div class="col-md-6 des-info">
                        <ul>
                            <li>Durable Engineered Wood finished in an Oak Veneer</li>
                            <li>Available in Dusty Oak or Espresso Black</li>
                            <li>Flush cuboid design with deep wood patterns</li>
                            <li>2x pull out drawers with flush semi-circule door handles</li>
                            <li>Metal runners for drawers</li>
                            <li>Raised base for modern look</li>
                            <li>Product comes fully assembled</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="related-products"></div>
    </div>
    <div class="row">
        <div class="recently-viewed"></div>
    </div>
</div>
<%@include file="./inc/footer.jsp"%>