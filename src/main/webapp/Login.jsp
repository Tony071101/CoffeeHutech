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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <style>
        th1{
            font-size: 100%;
    margin: 0;
    outline: 0;
    padding: 0;
    vertical-align: baseline;
        margin-right: 5px;
        }
        th2{

        }
    </style>
    <title>The Coffee Hutech</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="/style.css">
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
                            <div class="header__top__right__language">
                                <img src="img/product/details/vietnam.png" width="28" height="25" alt="">
                                <div>Tiếng Việt</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Tiếng Việt</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Section End -->
    <!-- Hero Section Begin -->
    <!-- Hero Section End -->
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/banner/back.jpg" > 
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Đăng Nhập</h2>
                        <div class="breadcrumb__option">
                            <a href="./home">Trang Chủ</a>
                            <span>Đăng Nhập</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Checkout Section Begin -->
     <div id="logreg-forms">
            <form action="login" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng Nhập</h1>
                <p class="text-danger">${mess}</p>
                <input name="username"  type="text" id="inputEmail" class="form-control" placeholder="Username" required="" autofocus=""> <br>
                <input name="password"  type="password" id="inputPassword" class="form-control" placeholder="Password" required=""><br>


                <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i>Đăng Nhập</button>
                <hr>

            </form>

            <form action="signup" method="post">
                <h1 class="h3 mb-3 font-weight-normal" style="text-align: center">Đăng Ký</h1>
                <input name="username" type="text" id="user-name" class="form-control" placeholder="Username" required=""><br>
                <input name="password" type="password" id="user-pass" class="form-control" placeholder="Password" required=""><br>
                <input name="repass" type="password" id="user-repeatpass" class="form-control" placeholder="Repeat Password" required=""><br>
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i>Đăng Ký</button>
                <a href="home" id="cancel_signup"><i class="fas fa-angle-left"></i>Trở Về</a>
            </form>
            <br>

        </div>
    <!-- Checkout Section End -->
    <!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="Home.jsp"><img src="img/banner/logo_coffee.jpg" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa Chỉ: HUTECH UNIVERSITY</li>
                        <li>SĐT: +65 11.188.888</li>
                        <li>Email: coffeehutech@gmail.com</li>
                        <li>Facebook:<a href="https://www.facebook.com/The-Coffee-Hutech-109901345031106"> The Coffee Hutech </a></li> 
                    </ul>
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
