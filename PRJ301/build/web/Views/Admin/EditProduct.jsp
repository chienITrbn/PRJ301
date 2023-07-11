<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <title>Edit Product</title>

    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
        rel="stylesheet">

    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

        <link href="<%=request.getContextPath()%>/css/mainn.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Edit Product</h2>
                </div>
                <div class="card-body">
                    <!-- khi nguoi dung bam edit
                         chuyen ve method post
                    -->
                    <form action="<%=request.getContextPath()%>/EditProduct" method="get">
                        <c:set var="p" value="${requestScope.pid}"/>
                        <div class="form-row m-b-55">
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="pid" value="${p.productId}" readonly="" hidden>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="nameP" value="${p.name}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Description</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="desc" value="${p.description}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Category</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <c:set var="c" value="${requestScope.cid}"/>
                                        <select name="category">
                                            <c:forEach var="c" items="${requestScope.cat}">
                                                <option <c:if test="${p.categoryId == c.id}"> selected </c:if> value="${c.id}">${c.name}</option>
                                            </c:forEach>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Old Price</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="oldprice" value="${p.historical_cost}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">New Price</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="newprice" value="${p.competitive_price}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Brand</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <c:set var="b" value="${requestScope.bid}"/>
                                        <select name="brand">
                                            <c:forEach var="b" items="${requestScope.lBrand}">
                                                <option <c:if test="${p.brandId == b.id}"> selected </c:if> value="${b.id}">${b.name}</option>
                                            </c:forEach>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Image</div>
                            <div class="value">
                                <div class="input-group">
                                    <img style="width: 30%" src="${p.image}" alt="alt"/>
                                    <input type="file" class="form-control-file" name="fileUpload">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Quantity</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="quantity" value="${p.quantity}">
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Size</div>
                            <c:set var="s" value="${requestScope.size}"/>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="size">
                                            <c:forEach var="s" items="${requestScope.lSize}">
                                                <option <c:if test="${p.size == s.idSize}"> selected </c:if> value="${s.idSize}">${s.size}</option>
                                            </c:forEach>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <button class="btn btn--radius-2 btn--red" type="submit">Edit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>
    <script src="js/global.js"></script>
    
</body>

</html>
