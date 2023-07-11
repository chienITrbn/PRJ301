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
        <c:set var="productById" value="${requestScope.productById}"/>
        <div class="single-product-details">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="single-product-img tab-content">
                            <div class="single-pro-main-image tab-pane active" id="pro-large-img-1">
                                <a href="#"><img class="optima_zoom" src="${productById.image}" data-zoom-image="img/product/7.png" alt="optima"/></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="single-product-details">
                            <a href="#" class="product-name">${productById.name}</a>
                            <div class="list-product-info">
                                <div class="price-rating">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                        <a href="#" class="review">1 Review(s)</a>
                                        <a href="#" class="add-review">Add Your Review</a>
                                    </div>
                                </div>
                            </div>
                            <div class="avalable">
                                <p>Availability:<span> In stock</span></p>
                            </div>
                            <div class="single-product-info">
                                <p>${productById.description}</p>
                                <div class="share">
                                    <img src="img/product/share.png" alt="">
                                </div>
                            </div>
                            <div class="action">
                                <ul class="add-to-links">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-heart"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-envelope"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <div class="select-catagory">
                                <div class="size-select">
                                    <label class="required">
                                        <em>*</em> Size
                                    </label>
                                    <div class="input-box">
                                        <select id="select-2">
                                            <option value="">-- Please Select --</option>
                                            <c:forEach var="s" items="${requestScope.lSize}">
                                                <option value="${s.idSize}">${s.size}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </div>
                            </div>
                                <form name="f" action="#" method="POST">
                                        <div class="cart-item">
                                            <div class="price-box">
                                                <span>${productById.competitive_price}</span>
                                            </div>
                                            <div class="single-cart">
                                                <div class="cart-plus-minus">
                                                    <label>Qty: </label>
                                                    <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                                                </div>
                                                <button class="cart-btn" onclick="Cart('${productById.productId}')">Add to cart</button>
                                            </div>
                                        </div>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-product-tab-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="single-product-tab">
                            <ul class="single-product-tab-navigation" role="tablist">
                                <li role="presentation" class="active"><a href="#tab1" aria-controls="tab1" role="tab" data-toggle="tab">Product Description</a></li>
                                <li role="presentation"><a href="#tab2" aria-controls="tab2" role="tab" data-toggle="tab">reviews</a></li>
                                <li role="presentation"><a href="#tab3" aria-controls="tab3" role="tab" data-toggle="tab">product tag</a></li>
                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content single-product-page">
                                <div role="tabpanel" class="tab-pane fade in active" id="tab1">
                                    <div class="single-p-tab-content">
                                        <p>${productById.description}</p>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="tab2">
                                    <div class="single-p-tab-content">
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="product-review">
                                                    <p> <a href="#"> plaza</a> <span>Review by</span> plaza </p>
                                                    <div class="product-rating-info">
                                                        <p>value</p>
                                                        <div class="ratings">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="product-rating-info">
                                                        <p>Quality</p>
                                                        <div class="ratings">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="product-rating-info">
                                                        <p>Price</p>
                                                        <div class="ratings">
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star"></i>
                                                            <i class="fa fa-star-half-o"></i>
                                                        </div>
                                                    </div>
                                                    <div class="review-date">
                                                        <p>plaza <em> (Posted on 8/27/2015)</em></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="rate-product hidden-xs">
                                                    <div class="rate-product-heading">
                                                        <h3>You're reviewing: Fusce aliquam</h3>
                                                        <h3>How do you rate this product? <em>*</em></h3>
                                                    </div>
                                                    <form action="#">
                                                        <table class="product-review-table">
                                                            <thead>
                                                                <tr>
                                                                    <th></th>
                                                                    <th>1 star</th>
                                                                    <th>2 star</th>
                                                                    <th>3 star</th>
                                                                    <th>4 star</th>
                                                                    <th>5 star</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <th>Price</th>
                                                                    <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[1]"> </td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Value</th>
                                                                    <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[2]"> </td>
                                                                </tr>
                                                                <tr>
                                                                    <th>Quality</th>
                                                                    <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                                    <td> <input type="radio" class="radio" name="ratings[3]"> </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <ul class="form-list">
                                                            <li>
                                                                <label> nickname <em>*</em> </label>
                                                                <input type="text">
                                                            </li>
                                                            <li>
                                                                <label> Summary of Your Review <em>*</em> </label>
                                                                <input type="text">
                                                            </li>
                                                            <li>
                                                                <label> Review <em>*</em> </label>
                                                                <textarea cols="3" rows="5"></textarea>
                                                            </li>
                                                        </ul>
                                                        <button type="submit"> submit review</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane fade" id="tab3">
                                    <div class="single-p-tab-content">
                                        <div class="add-tab-title">
                                            <p> add your tag </p>
                                        </div>
                                        <div class="add-tag">
                                            <form action="#">
                                                <input type="text">
                                                <button type="submit">add tags</button>
                                            </form>
                                        </div>
                                        <p class="tag-rules">Use spaces to separate tags. Use single quotes (') for phrases.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
<script type="text/javascript">
    function Cart(id){
       var m=document.f.qtybutton.value;
       document.f.action="Cart?id="+id+"&num="+m;
       document.f.submit();
    }
</script>
