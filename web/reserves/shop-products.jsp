<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Resto - Responsive restaurant bootstrap template</title>

        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="assets/bower_components/flexslider/flexslider.css" rel="stylesheet">
        <link href="assets/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
        <!--main css file-->
        <link href="assets/css/style.css" rel="stylesheet">
        <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <!--pre-loader-->
        <div id="preloader"></div>
        <!--pre-loader-->

        <!--===============main navigation + top bar==========================-->
        <header class="header header-top-transparent">
            <!--top bar-->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 hidden-xs">
                            <ul class="list-inline">
                                <li><a href="javascript:void(0)"><i class="ion-ios-telephone"></i> +01 1800 495 593</a></li>
                                <li><a href="javascript:void(0)"><i class="ion-email"></i> support@resto.com</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">
                            <ul class="list-inline level-2">
                                <li class="b-table"><a href="#">Book a table</a></li>
                                <li class="lang"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Lang <i class="ion-ios-arrow-down"></i></a>
                                    <ul class="dropdown-menu lang-dropdown">
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/spanish.png" alt="Spanish">Spanish</a></li>
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/italy.png" alt="Italian">Italian</a></li>
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/german.png" alt="German">German</a></li>
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/fr.png" alt="French">French</a></li>
                                        <li><a href="javascript:void(0)"><span><img class="flag" src="assets/images/usa-flag.png" alt="English">English</span></a></li>
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/jp.png" alt="Japanise">Japanise</a></li>
                                        <li><a href="javascript:void(0)"><img class="flag" src="assets/images/in.png" alt="Hindi">Hindi</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!--end top bar-->
            <!--cart menu side panel-->
            <aside id="cartNavmenu" class="navmenu navmenu-inverse navmenu-fixed-right offcanvas">
                <div class="cart-inner">
                    <h4>Your cart (3)</h4>
                    <hr>
                    <ul class="list-unstyled cart-list margin-b-30">
                        <li class="clearfix">
                            <div class="cart-thumb">
                                <a href="#">
                                    <img src="assets/images/img-1.jpg" alt="" class="img-responsive" width="90">
                                </a>
                            </div>
                            <div class="cart-content">
                                <span class="close"><i class="ion-close"></i></span>
                                <h5>Bonanaza family pack</h5>
                                <p><span class="price">$48.00</span>  x 2</p>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="cart-thumb">
                                <a href="#">
                                    <img src="assets/images/img-2.jpg" alt="" class="img-responsive" width="90">
                                </a>
                            </div>
                            <div class="cart-content">
                                <span class="close"><i class="ion-close"></i></span>
                                <h5>Bonanaza family pack</h5>
                                <p><span class="price">$48.00</span>  x 2</p>
                            </div>
                        </li>
                        <li class="clearfix">
                            <div class="cart-thumb">
                                <a href="#">
                                    <img src="assets/images/img-3.jpg" alt="" class="img-responsive" width="90">
                                </a>
                            </div>
                            <div class="cart-content">
                                <span class="close"><i class="ion-close"></i></span>
                                <h5>Bonanaza family pack</h5>
                                <p><span class="price">$48.00</span>  x 2</p>
                            </div>
                        </li>
                        <li>
                            <div class="text-center">
                                <a href="shop-checkout.html" class="btn btn-default">Checkout</a>
                                <a href="shop-cart.html" class="btn btn-primary">View Cart</a>
                            </div>
                        </li>
                    </ul>                       
                </div>
            </aside>

            <!--main navigation-->
            <nav class="navbar navbar-default navbar-static-top sticky-header">
                <div class="container">

                    <!--cart icon-->
                    <div class="pull-right cart-nav">
                        <a href="javascript:void(0)" data-toggle="offcanvas" data-target="#cartNavmenu" data-canvas="body"><i class="ion-ios-cart"></i> <span class="badge">3</span></a>
                    </div>
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="index.html">
                            
                            <img src="assets/images/logo-light.png" alt="logo" class="logo-default">
                            <img src="assets/images/logo-dark.png" alt="logo" class="logo-scroll">

                        </a>
                    </div>
                    <div id="navbar" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Home <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.html">V1 - Default slider</a></li>
                                    <li><a href="index-video.html">V2 - Video background</a></li>
                                    <li><a href="index-parallax-static.html">V3 - parallax Static</a></li>                                   
                                    <li><a href="index-left-navbar.html">V4 - left navbar</a></li>
                                    <li><a href="index-right-navbar.html">V5 - right navbar</a></li>
                                    
                                    <li><a href="index-boxed.html">V6 - Boxed version</a></li><li><a href="one-page.html">V7 - One Page</a></li>
                                    <li class="dropdown-submenu">
                                        <a tabindex="-1" href="#">Menu Levels </a>
                                        <ul class="dropdown-menu">
                                            <li class="dropdown-submenu">
                                                <a tabindex="-1" href="#">menu level 2 </a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="#"> menu level 3</a></li>
                                                    <li><a href="#"> menu level 3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>

                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menu <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="menu-simple.html">Menu simple</a></li>
                                    <li><a href="menu-tiles.html">Menu tiles</a></li>
                                    <li><a href="menu-grid.html">Menu grid</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-rightsidebar.html">Right sidebar</a></li>
                                    <li><a href="blog-leftsidebar.html">Left sidebar</a></li>
                                    <li><a href="blog-masonry.html">Masonry</a></li>
                                    <li><a href="blog-fullwidth.html">Full width</a></li>
                                    <li><a href="blog-post.html">Single Page</a></li>
                                </ul>
                            </li>
                            <li><a href="reservation.html">Reservation</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="about.html">About</a></li>
                                    
                                    <li><a href="gallery.html">Gallery</a></li>
                                    <li><a href="contact.html">Contact us</a></li>
                                    <li><a href="login-register.html">Login Register</a></li>
                                    <li><a href="page-full-width.html">Page Full Width</a></li>
                                    <li><a href="error-404.html">Error 404</a></li>
                                    
                                    <li><a href="page-left-sidebar.html">Page left sidebar</a></li>
                                    <li><a href="typography.html">Typography</a></li>
                                    <li><a href="elements.html">Eelements</a></li>
                                </ul>
                            </li>
                            <li class="dropdown active">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Shop <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="shop-products.html">Products</a></li>                                   
                                    <li><a href="shop-cart.html">Cart</a></li>
                                    <li><a href="shop-checkout.html">Checkout</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>
        </header>

        <!--===============end main navigation + top bar =====================-->


        <!--==============page header============-->
        <div class="page-breadcrumb" data-stellar-background-ratio="0.5">
            <div class="container text-center">
                <h1>Our Store</h1>
            </div>
        </div>
        <!--==============end page header============-->
        <div class="space-80"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-1.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Choco Pie</a></h4>
                            <span>$9.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-2.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Wine</a></h4>
                            <span>$18.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-3.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Salad</a></h4>
                            <span>$12.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
            </div>
             <div class="row">
                <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-4.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Product Title</a></h4>
                            <span>$17.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-5.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Product Title</a></h4>
                            <span>$15.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-6.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">product title</a></h4>
                            <span>$7.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
            </div>
             <div class="row">
                <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-7.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Lorem Ipsum</a></h4>
                            <span>$13.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-8.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Product Title</a></h4>
                            <span>$16.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
                 <div class="col-sm-4 margin-b-30">
                    <div class="product-box">
                        <div class="product-thumb">
                            <img src="assets/images/img-9.jpg" alt="" class="img-responsive">
                            <a href="#" class="item-link"></a>
                            <div class="product-item-tools">
                                <a href="#" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="" data-original-title="Wishlist">
                                    <i class="ion-ios-heart"></i>
                                </a>
                                <a href="#" class="btn btn-primary">
                                    Add to cart
                                </a>
                            </div>
                        </div>
                        <div class="product-detail">
                            <h4><a href="#">Product Title</a></h4>
                            <span>$15.00</span>
                        </div>
                    </div><!--product box end-->
                </div><!--col end-->
            </div>
            
            <nav aria-label="Page navigation" class="text-right">
                        <ul class="pagination">
                            <li>
                                <a href="#" aria-label="Previous">
                                    <span aria-hidden="true">«</span>
                                </a>
                            </li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li>
                                <a href="#" aria-label="Next">
                                    <span aria-hidden="true">»</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
        </div>

        <div class="space-50"></div>
          <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 margin-b-30">
                        <img class="margin-b-20" src="assets/images/logo-light.png" alt="">
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                        </p>
                        <h5><a href="#">Read More...</a></h5>
                    </div>
                    <div class="col-md-3 margin-b-30">
                        <h3>Recent Posts</h3>
                        <ul class="list-unstyled recent-post">
                            <li class="clearfix">
                                <a href="#">
                                    <img src="assets/images/a1.jpg" alt="" width="70">
                                </a>
                                <div class="post-content">
                                    <h5><a href="#">Pizza cordoin lorem ipsum dolor sit amet</a></h5>
                                    <span>14 April 2016</span>
                                </div>
                            </li>
                            <li class="clearfix">
                                <a href="#">
                                    <img src="assets/images/a2.jpg" alt="" width="70">
                                </a>
                                <div class="post-content">
                                    <h5><a href="#">Cordoin lorem ipsum dolor sit amet</a></h5>
                                    <span>14 April 2016</span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-3 margin-b-30">
                        <h3>Opening hours</h3>
                        <p><span class="text-color">Monday: </span>Closed</p>
                        <p><span class="text-color">Tue-Wed :</span> 9:Am - 10PM</p>
                        <p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
                        <p><span class="text-color">Sat-Sun :</span> 5:PM - 10PM</p>
                    </div>
                    <div class="col-md-3 margin-b-30">
                        <h3>Contact Us</h3>
                        <p class="lead">
                            Ipsum Street, Lorem Tower, MO, Columbia, 302012
                        </p>
                        <p class="lead"><a href="#">+01 1800 100 1000</a></p>
                        <p><a href="#">info@resto.com</a></p>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-sm-12 text-center">
                        <ul class="list-inline f-social">
                            <li><a href="#"><i class="ion-social-facebook"></i></a></li>
                            <li><a href="#"><i class="ion-social-twitter"></i></a></li>
                            <li><a href="#"><i class="ion-social-linkedin"></i></a></li>
                            <li><a href="#"><i class="ion-social-googleplus"></i></a></li>
                            <li><a href="#"><i class="ion-social-instagram"></i></a></li>
                        </ul>
                        <span>&copy; Copyright 2016. Resto</span>
                    </div>
                </div>
            </div>
        </footer>


        <!--back to top-->
        <a href="#" class="scrollToTop"><i class="ion-android-arrow-up"></i></a>
        <!--back to top end-->



        <!-- jQuery plugins-->
        <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
        <script src="assets/js/jquery.easing.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/bower_components/flexslider/jquery.flexslider-min.js"></script>
        <script src="assets/js/jquery.stellar.min.js"></script>
        <script src="assets/js/jquery.sticky.js"></script>   
        <script src="assets/js/jquery.countdown.min.js"></script>
        <script src="assets/jasny-bootstrap/js/jasny-bootstrap.min.js"></script>
        <script src="assets/js/bootstrap-hover-dropdown.min.js"></script>
        <script src="assets/js/template-custom.js" type="text/javascript"></script> 
    </body>
</html>
