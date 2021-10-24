<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from UET_h1.kenzap.com/login-page.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2017 10:04:20 GMT -->
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
   <link rel="icon" href="favicon.ico" type="image/ico" />
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/styles.css" />
    <link rel="stylesheet" type="text/css" href="css/meanmenu.css" />
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="../cdn.linearicons.com/free/1.0.0/icon-font.min.css">
    <script src="js/libs/modernizr.custom.js"></script>
    <title> Login Page </title>
</head>
<body>
<div class="main-wrapper page">
    <!--Begin header ưrapper-->
    <div class="header-wrapper">
        <header id="header" class="container-header type1">
            <div class="top-nav">
                <div class="container">
                    <div class="row">
                        <div class="top-left col-sm-6 hidden-xs">
                            <ul class="list-inline">
                                <li>
                                    <a href="mailto:alumni@uet.edu">
                                        <span class="icon mail-icon"></span>
                                        <span class="text">alumni@uet.edu</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="icon phone-icon"></span>
                                        <span class="text">0334479091</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="top-right col-sm-6 col-xs-12">
                            <ul class="list-inline">
                                <li class="top-search">
                                    <form class="navbar-form search no-margin no-padding">
                                        <input type="text" name="q" class="form-control input-search" placeholder="search..." autocomplete="off">
                                        <button type="submit" class="lnr lnr-magnifier"></button>
                                    </form>
                                </li>
                                <li class="login">
                                    <a href="admin.jsp">Admin Log In</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="header-middle">
                <div class="container">
                    <div class="logo hidden-sm hidden-xs">
                        <a href="index.jsp"> <img src="images/ulogo.png" alt="logo" width="120px" height = "120px" ></a>
                    </div>
                    <div class="menu">
                        <nav>
                            <ul class="nav navbar-nav">
                                <li>
                                    <a href="about-us.jsp">ABOUT US</a>
                                </li>
                                <li>
                                    <a href="programs-events.jsp">PROGRAM &amp; EVENTS</a>
                                </li>

                                <li>
                                   <a href="alumni-story.jsp">ALUMNI STORY</a>
                                </li>
                                <li>
                                    <a href="career-opportunity.jsp">CAREER OPPORTUNITY</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <div class="area-mobile-content visible-sm visible-xs">
                        <div class="logo-mobile">
                            <a href="index.jsp"> <img src="images/logo-small.png" alt="logo"></a>
                        </div>
                        <div class="mobile-menu ">
                        </div>
                    </div>
                </div>
            </div>
        </header>
    </div>
    <!--End header wrapper-->

    <!--Begin content wrapper-->
    <div class="content-wrapper">
        <div class="account-page login text-center">
            <div class="container">
                <div class="account-title">
                    <h4 class="heading-light">LOG IN INTO ALUMNI DASHBOARD</h4>
                </div>
                <div class="account-content">
                    <form action="alumLogin.jsp">
                        <div class="input-box email">
                            <input type="email" placeholder="Email Address" name="loginMail">
                        </div>
                        <div class="input-box password">
                            <input type="password" placeholder="Password" name="loginPwd">
                        </div>
                        <div class="buttons-set">
                            <button type="submit" class="bnt bnt-theme text-regular text-uppercase btn btn-large">Log In</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--End content wrapper-->
    <!--Begin footer wrapper-->
    <div class="footer-wrapper type2">
        <footer class="foooter-container">
            <div class="container">
                <div class="footer-middle">
                    <div class="row">
                        <div class="col-md-4 col-sm-12 col-xs-12 animated footer-col">
                            <div class="contact-footer">
                                <div class="logo-footer">
                                  <a href="index.jsp"><img src="images/ulogo.png" alt="UET LOGO" width="150px" height = "150px" ></a>
                                </div>
                                <div class="contact-desc">
                                    <p class="text-light">Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare.</p>
                                </div>
                                <div class="contact-phone-email">
                                    <span class="contact-phone"><a href="#">+10872229</a> | <a href="#">+10872228 </a> </span>
                                    <span class="contact-email"><a href="#">alumni@uet.edu</a></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-12  col-xs-12 animated footer-col">
                            <div class="links-footer">
                                <div class="row">
                                    <div class="col-sm-4 col-xs-12">
                                        <h6 class="heading-bold">DASHBOARD</h6>
                                        <ul class="list-unstyled no-margin">
                                            <li><a href="register-page.jsp">REGISTER</a></li>
                                            <li><a href="career-opportunity.jsp">CAREER</a></li>
                                            <li><a href="alumni-story.jsp">STORY</a></li>
                                            <li><a href="alumni-directory.jsp">DIRECTORY</a></li>
                                        </ul>
                                    </div>
                                    
                                    <div class="col-sm-4 col-xs-12">
                                        <h6 class="heading-bold">ABOUT US</h6>
                                        <ul class="list-unstyled no-margin">
                                            <li><a href="event-single.jsp">EVENTS</a></li>
                                            <li><a href="galery.jsp">GALLERY</a></li>
                                            <li><a href="index.jsp">HOMEPAGE V1</a></li>
                                            <li><a href="homepage-2.jsp">HOMEPAGE V2</a></li>
                                        </ul>
                                    </div>
                                    
                                    <div class="col-sm-4 col-xs-12">
                                        <h6 class="heading-bold">SUPPORT</h6>
                                        <ul class="list-unstyled no-margin">
                                            <li><a href="job-detail.jsp">FAQ</a></li>
                                            <li><a href="about-us.jsp#contacts">CONTACT US</a></li>
                                            <li><a href="blog.jsp">ORGANIZER</a></li>
                                            <li><a href="blog-single-fullwith.jsp">SOCIAL</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-12 col-xs-12 animated footer-col">
                            <div class="links-social">
                                <div class="login-dashboard">
                                    <a href="login-page.jsp" class="bg-color-theme text-center text-regular">Login Dashboard</a>
                                </div>
                                <ul class="list-inline text-center">
                                    <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                    <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom text-center">
                    <p class="copyright text-light">©2017 Alumni Association of the University of Engineering and Technology Lahore</p>
                </div>
            </div>
        </footer>
    </div>
    <!--End footer wrapper-->
</div>

<script src="js/libs/jquery-2.2.4.min.js"></script>
<script src="js/libs/bootstrap.min.js"></script>
<script src="js/libs/owl.carousel.min.js"></script>
<script src="js/libs/jquery.meanmenu.js"></script>
<script src="js/libs/parallax.min.js"></script>
<script src="js/libs/jquery.waypoints.min.js"></script>
<script src="js/custom/main.js"></script>
</body>

<!-- Mirrored from UET_h1.kenzap.com/login-page.jsp by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Feb 2017 10:04:21 GMT -->
</html>