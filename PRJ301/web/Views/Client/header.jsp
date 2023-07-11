<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <div class="top-link">
                <div class="container">
                    <div class="row">
                        <div class="col-md-7 col-md-offset-3 col-sm-9 hidden-xs">
                            <div class="site-option">
                                <ul>
                                    <li class="currency"><a href="<%=request.getContextPath()%>/LoadProductController">USD <i class="fa fa-angle-down"></i> </a>
                                        <ul class="sub-site-option">
                                            <li><a href="<%=request.getContextPath()%>/LoadProductController">Eur</a></li>
                                            <li><a href="<%=request.getContextPath()%>/LoadProductController">Usd</a></li>
                                        </ul>
                                    </li>
                                    <li class="language"><a href="<%=request.getContextPath()%>/LoadProductController">English <i class="fa fa-angle-down"></i> </a>
                                        <ul class="sub-site-option">
                                            <li><a href="<%=request.getContextPath()%>/LoadProductController">English</a></li>
                                            <li><a href="<%=request.getContextPath()%>/LoadProductController">English2</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="call-support">
                                <p>Call support free: <span> (800) 123 456 789</span></p>
                            </div>
                        </div>
                        <div class="col-md-2 col-sm-3">
                            <div class="dashboard">
                                <div class="account-menu">
                                    <ul>
                                        <li class="search">
                                            <a href="<%=request.getContextPath()%>/LoadProductController">
                                                <i class="fa fa-search"></i>
                                            </a>
                                            <ul class="search">
                                                <li>
                                                    <form action="<%=request.getContextPath()%>/SearchByName">
                                                        <input type="text" name="search">
                                                        <button type="submit"> <i class="fa fa-search"></i></button>
                                                    </form>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="<%=request.getContextPath()%>/LoadProductController">
                                                <i class="fa fa-bars"></i>
                                            </a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">my account</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">my wishlist</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">my cart</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Checkout</a></li>
                                                    <c:if test="${sessionScope.account != null}">
                                                    <!-- khi nguoi dung click change password 
                                                         redirect sang view NewPassWord
                                                    -->
                                                    <li><a href="<%=request.getContextPath()%>/Views/Login/NewPassWord.jsp">Change Password</a></li>
                                                    <li><a href="<%=request.getContextPath()%>/LogoutController">Log out</a></li>
                                                    </c:if>
                                                    <c:if test="${sessionScope.account == null}">
                                                    <li><a href="<%=request.getContextPath()%>/Views/Login/login.jsp">Log in</a></li>
                                                    </c:if>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="cart-menu">
                                    <ul>
                                        <c:set var="s" value="${sessionScope.size}"/>
                                        <li><a href="<%=request.getContextPath()%>/CheckOut"> <img src="img/icon-cart.png" alt=""> <span>${s}</span> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="mainmenu-area home2 product-items">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="logo">
                                <a href="<%=request.getContextPath()%>/LoadProductController">
                                    <img src="<%=request.getContextPath()%>/img/logo.png" alt="">
                                </a>
                            </div>
                        </div>
                        <div class="col-md-9">
                            <div class="mainmenu">
                                <nav>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Home</a>
                                            <div class="sub-menu">
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Home version 1</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Home version 2</a>
                                                </span>
                                            </div>
                                        </li>
                                        <li class="mega-women"><a href="<%=request.getContextPath()%>/LoadProductController">Women</a>
                                            <div class="mega-menu women">
                                                <div class="part-1">
                                                    <span>
                                                        <a href="#">Dresses</a>
                                                        <a href="#">Cocktail</a>
                                                        <a href="#">Day</a>
                                                        <a href="#">Evening</a>
                                                        <a href="#">Sports</a>
                                                    </span>
                                                    <span>
                                                        <a href="#">shoes</a>
                                                        <a href="#">Sports</a>
                                                        <a href="#">run</a>
                                                        <a href="#">sandals</a>
                                                        <a href="#">Books</a>
                                                    </span>
                                                    <span>
                                                        <a href="#">Handbags</a>
                                                        <a href="#">Blazers</a>
                                                        <a href="#">table</a>
                                                        <a href="#">coats</a>
                                                        <a href="#">kids</a>
                                                    </span>
                                                    <span>
                                                        <a href="#">Clothing</a>
                                                        <a href="#">T-shirts</a>
                                                        <a href="#">coats</a>
                                                        <a href="#">Jackets</a>
                                                        <a href="#">jeans</a>
                                                    </span>
                                                </div>
                                                <div class="part-2">
                                                    <a href="#">
                                                        <img src="img/banner/menu-banner.png" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="mega-men"><a href="shop.html">Men</a>
                                            <div class="mega-menu men">
                                                <span>
                                                    <a href="#">Bags</a>
                                                    <a href="#">Bootees  Bags</a>
                                                    <a href="#">Blazers</a>
                                                </span>
                                                <span>
                                                    <a href="#">Clothing</a>
                                                    <a href="#">coats</a>
                                                    <a href="#">T-shirts</a>
                                                </span>
                                                <span>
                                                    <a href="#">Lingerie</a>
                                                    <a href="#">Bands</a>
                                                    <a href="#">Furniture</a>
                                                </span>
                                            </div>
                                        </li>
                                        <li class="mega-footwear"><a href="<%=request.getContextPath()%>/LoadProductController">Footwear</a>
                                            <div class="mega-menu footwear">
                                                <span>
                                                    <a href="#">Footwear Man</a>
                                                    <a href="#">gifts</a>
                                                </span>
                                                <span>
                                                    <a href="#">Footwear Womens</a>
                                                    <a href="#">boots</a>
                                                </span>
                                            </div>
                                        </li>
                                        <li class="mega-jewellery"><a href="<%=request.getContextPath()%>/LoadProductController">Jewellery</a>
                                            <div class="mega-menu jewellery">
                                                <span>
                                                    <a href="#">Rings</a>
                                                </span>
                                            </div>
                                        </li>
                                        <li><a href="shop.html">accessories</a></li>
                                        <li><a href="#">Pages</a>
                                            <div class="sub-menu pages">
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">About us</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Blog</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Blog Details</a>
                                                </span>
                                                <span>
                                                    <a href="cart.html">Cart</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Checkout</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Contact</a>
                                                </span>
                                                <span>
                                                    <a href="my-account.html">My account</a>
                                                </span>
                                                <span>
                                                    <a href="">Shop</a>
                                                </span>
                                                <span>
                                                    <a href="">Shop list</a>
                                                </span>
                                                <span>
                                                    <a href="">Single Shop</a>
                                                </span>
                                                <span>
                                                    <a href="login.html">Login page</a>
                                                </span>
                                                <span>
                                                    <a href="register.html">Ragister page</a>
                                                </span>
                                                <span>
                                                    <a href="<%=request.getContextPath()%>/LoadProductController">Wishlist</a>
                                                </span>
                                            </div>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="mobile-menu">
                                <nav>
                                    <ul>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Home</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Home 1</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Home 2</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Women</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Dresses</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Coctail</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">day</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">evening</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">sports</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">shoes</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Sports</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">run</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">sandals</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">boots</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">handbags</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Blazers</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">table</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">coats</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">kids</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">clothing</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">T-shirts</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">coats</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Jackets</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">jeans</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Men</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Bags</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Bootees bag</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Blazers</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">clothing</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">coats</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">T-shirts</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Lingerie</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Bands</a></li>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Furniture</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Foorwear</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">footwear men</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">gifts</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">footwear women</a>
                                                    <ul>
                                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">boots</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Jewellery</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Rings</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Accessories</a></li>
                                        <li><a href="<%=request.getContextPath()%>/LoadProductController">Pages</a>
                                            <ul>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">About us</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Blog</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Blog Details</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Cart</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Checkout</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Contact</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">My account</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Shop</a></li>
                                                <li><a href="">Shop list</a></li>
                                                <li><a href="">Single Shop</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">Wishlist</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">login page</a></li>
                                                <li><a href="<%=request.getContextPath()%>/LoadProductController">register page</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header area end -->
        <!-- product items banner start -->
        <div class="product-banner">
            <img src="img/product/banner.jpg" alt="">
        </div>
    </body>
</html>
