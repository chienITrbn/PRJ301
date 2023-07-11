<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title> Forgot || James </title>
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
        <%@include file="../Client/header.jsp" %>
        <div class="shopping-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="location">
                            <ul>
                                <li><a href="<%=request.getContextPath()%>/LoadProductController" title="go to homepage">Home<span>/</span></a>  </li>
                                <li><strong>Forgot page</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="login-area ptb-120">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3 text-center">
                        <div class="login">
                            <div class="login-form-container">
                                <div class="login-text">
                                    <h2>Forget Password</h2>
                                </div>
                                <div class="login-form">
                                    <form action="<%=request.getContextPath()%>/ForgotPassWord" method="post">
                                        <input type="text" name="username" placeholder="Username">
                                        <input name="useremail" placeholder="E-mail Address" type="email">
                                        <div class="button-box">
                                            <button type="submit" class="default-btn">Sent My Password</button>
                                        </div>
                                        <p class="mb-5 pb-lg-2" style="color: red;">${requestScope.ms}</p>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%@include file="../Client/footer.jsp" %>
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