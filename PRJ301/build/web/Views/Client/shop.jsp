<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title> Shop || James </title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <link href='https://fonts.googleapis.com/css?family=Norican' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.carousel.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.theme.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/owl.transitions.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/jquery-ui.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/meanmenu.min.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/lib/css/nivo-slider.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/lib/css/preview.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/animate.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/magic.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/normalize.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/main.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/css/responsive.css">
        <script src="<%=request.getContextPath()%>/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="product-main-items">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="location">
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/LoadProductController" title="go to homepage">Home<span>/</span></a>  </li>
                                <li><strong> shop</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-3">
                        <div class="product-sidebar">
                            <div class="sidebar-title">
                                <h2>Shopping Options</h2>
                            </div>
                            <div class="single-sidebar">
                                <div class="single-sidebar-title">
                                    <h3>Category</h3>
                                </div>
                                <div class="single-sidebar-content">
                                    <c:forEach var="lCat" items="${requestScope.lCat}">
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/LoadCategoryController?cid=${lCat.id}">${lCat.name}</a></li>
                                    </ul>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="single-sidebar">
                                <div class="single-sidebar-title">
                                    <h3>Brand</h3>
                                </div>
                                <div class="single-sidebar-content">
                                    <c:forEach var="b" items="${requestScope.lBrand}">
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/LoadBrand?bid=${b.id}">${b.name}</a></li>
                                    </ul>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="single-sidebar price">
                                <div class="single-sidebar-title">
                                    <h3>Price</h3>
                                </div>
                                <div class="single-sidebar-content">
                                    <div class="price-range">
                                        <div class="price-filter">
                                            <div id="slider-range"></div>
                                            <div class="price-slider-amount">
                                                <input type="text" id="amount" name="price"  placeholder="Add Your Price" />
                                            </div>
                                        </div>
                                        <button type="submit"> <span>search</span> </button>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-left">
                                <a href="#">
                                    <img src="img/product/banner_left.jpg" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-9">
                        <div class="product-bar">
                            <ul class="product-navigation" role="tablist">
                                <li role="presentation" class="active gird">

                                    <a href="#gird" aria-controls="gird" role="tab" data-toggle="tab">
                                        <span>
                                            <img class="primary" src="img/product/grid-primary.png" alt="">
                                            <img class="secondary" src="img/product/grid-secondary.png" alt="">
                                        </span>
                                        Gird
                                    </a>
                                </li>
                                <li role="presentation" class="list">
                                    <a href="#list" aria-controls="list" role="tab" data-toggle="tab">
                                        <span>
                                            <img class="primary" src="img/product/list-primary.png" alt="">
                                            <img class="secondary" src="img/product/list-secondary.png" alt="">
                                        </span>
                                        List
                                    </a>
                                </li>
                            </ul>
                                <div class="sort-by">
                                    <label>Sort By</label>
                                    <select name="sort" >
                                        <option value="#" selected >Position</option>
                                        <option value="0">Name</option>
                                        <option value="1">Price</option>
                                    </select>
                                    <a href="#" title="Set Descending Direction">
                                        <img src="img/product/i_asc_arrow.gif" alt="">
                                    </a>
                                </div>
                            <div class="limit-product">
                                <label>Show</label>
                                <select name="show">
                                    <option value="#" selected>9</option>
                                    <option value="#">12</option>
                                    <option value="#">24</option>
                                    <option value="#">36</option>
                                </select>
                                per page
                            </div>
                        </div>
                        <div class="row">
                            <div class="product-content">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane active fade in home2" id="gird">
                                        <c:forEach var="lP" items="${requestScope.lProduct}">
                                        <div class="col-lg-4 col-sm-6">
                                            <div class="single-product">
                                                <div class="level-pro-new">
                                                    <span>new</span>
                                                </div>
                                                <!---- Truyen pid sang controller DetailProductController ----->
                                                <div class="product-img">
                                                    <a href="DetailProductController?pid=${lP.productId}">
                                                        <img src="${lP.image}" alt="" class="primary-img">
                                                    </a>
                                                </div>
                                                <div class="actions">
                                                    <button type="submit" class="cart-btn" title="Add to cart">add to cart</button>
                                                    <ul class="add-to-link">
                                                        <li><a class="modal-view" data-target="#productModal" data-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
                                                        <li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
                                                        <li><a href="#"> <i class="fa fa-refresh"></i></a></li>
                                                    </ul>
                                                </div>
                                                <div class="product-price">
                                                    <div class="product-name">
                                                        <a href="" title="">${lP.name}</a>
                                                    </div>
                                                    <div class="price-rating">
                                                        <span>${lP.competitive_price}</span>
                                                        <div class="ratings">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="toolbar-bottom">
                                    <ul>
                                        <c:set var="cPage" value="${requestScope.cidPage}"/>
                                        <li><span>Pages:</span></li>
                                        <c:forEach var="i" begin="0" end="${requestScope.endPage}">
                                            <li class="current"><a href="<%=request.getContextPath()%>/LoadCategoryController?index=${i}&cid=${requestScope.cidPage}">${i+1}</a></li>
                                        </c:forEach>
                                        <li><a href="#"> <img src="img/product/pager_arrow_right.gif" alt=""> </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- product main items area end -->
        <%@include file="footer.jsp" %>
        <script src="<%=request.getContextPath()%>/js/vendor/jquery-1.12.1.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/wow.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery-price-slider.js"></script>
        <script src="<%=request.getContextPath()%>/lib/js/jquery.nivo.slider.js"></script>
        <script src="<%=request.getContextPath()%>/lib/home.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.meanmenu.js"></script>
        <script src="<%=request.getContextPath()%>/js/owl.carousel.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.elevatezoom.js"></script>
        <script src="<%=request.getContextPath()%>/js/jquery.scrollUp.min.js"></script>
        <script src="<%=request.getContextPath()%>/js/plugins.js"></script>
        <script src="<%=request.getContextPath()%>/js/main.js"></script>
    </body>
</html>
