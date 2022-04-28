<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>The Coffee Hutech </title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
   

    <!-- Humberger Begin -->
    
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="img/product/vietnam.png"width=28" height="25" alt="">
                                <div>Tiếng Việt</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Tiếng Việt</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <c:if test="${sessionScope.acc.isAdmin == 1}">
                                <div class="header__top__right__auth">
                                    <a class="nav-link" href="manager">Đặt Hàng</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                                <div class="header__top__right__auth">
                                    <a class="nav-link" href="#">Hello ${sessionScope.acc.username}</a>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.acc != null}">
                                <div class="header__top__right__auth">
                                <a class="nav-link" href="logout">Đăng Xuất</a>
                            </div>
                            </c:if>
                            <c:if test="${sessionScope.acc == null}">
                                <div class="header__top__right__auth">
                                    <a class="nav-link" href="Login.jsp">Đăng Nhập</a>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">

                       
                        <a href="./index.html"><img src="img/cf.png" alt="logo" width="250" height="50"></a>

                    </div>
                </div>
                <div class="col-md-9">
                    <nav class="header__menu">
                        <ul>

                            <li class="active"><a href="./home">Trang Chủ</a></li>
                            <li><a href="ManagerProduct.jsp">Đặt Hàng</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./Cart.jsp">Shopping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                </ul>
                            </li>

                          
                           

                        </ul>
                    </nav>
                </div>
                
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    
    <!-- Hero Section End -->

    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/coffee.png">
                            <h5><a href="#">Coffee</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">

                       

                        <div class="categories__item set-bg" data-setbg="img/categories/tea.png">
                            <h5><a href="#">Tea</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/smooth.png">
                            <h5><a href="#">Juice Fruit</a></h5>

                        </div>
                    </div>
               
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Menu</h2>
                    </div>

                    <div class="featured__controls">
                        <ul>
                            <c:forEach items="${listC}" var="o">
                                <li class="list-group-item-dark text-white-50"><a href="category?cid=${o.cid}">${o.cname}</a></li>
                            </c:forEach>
                        </ul>
                    </div>

                                            
                    

                </div>
              
						
						
				</div>	
			</section>
            </div>
            <div class="row featured__filter">
                <c:forEach items="${listP}" var="o">
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="featured__item">
                        <div class="featured__item__pic">
                            <img class="card-img-top" src="${o.img}" alt="" width="320" height="320">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#" class="fa fa-shopping-cart"></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6 class="card-title show_txt"><a href="#" title="Featured Product">${o.name}</a></h6>
                            <h5 class="card-title show_txt">${o.price}VNĐ</h5>
                        </div>
                    </div>
                </div>
                </c:forEach>   
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    
    <!-- Blog Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="Home.jsp"><img src="img/cf.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: HUTECH UNIVERSITY</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: coffeehutech@gmail.com</li>
                            <li>Facebook:<a href="https://www.facebook.com/The-Coffee-Hutech-109901345031106"> The Coffee Hutech </a></li> 
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Me can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://www.facebook.com/lenguyenthanhdang/" target="_blank">Me</a>
  <!-- Link back to Me can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>