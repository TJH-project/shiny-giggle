<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Taj Hadramawt Restaurant</title>
        <!-- Bootstrap -->
        <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/ionicons/css/ionicons.min.css" rel="stylesheet">
        <link href="assets/bower_components/flexslider/flexslider.css" rel="stylesheet">
        <link href="assets/jasny-bootstrap/css/jasny-bootstrap.min.css" rel="stylesheet">
        <!--slider revolution-->
        <link rel="stylesheet" type="text/css" href="assets/revolution/css/settings.css"> 
        <link rel="stylesheet" type="text/css" href="assets/revolution/css/layers.css">
        <link rel="stylesheet" type="text/css" href="assets/revolution/css/navigation.css">
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
                                <li class="b-table"><a href="#" class=" waves-float waves-button">Book a table</a></li>
                                
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

<!--                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Menu <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="menu-simple.html">Menu simple</a></li>
                                    <li><a href="menu-tiles.html">Menu tiles</a></li>
                                    <li><a href="menu-grid.html">Menu grid</a></li>
                                </ul>
                            </li>-->
                            <li><a href="reservation.html">Menu</a></li>
                            <li><a href="reservation.html">Reservation</a></li>
                             <li><a href="reservation.html">News</a></li>
                             <li class="dropdown">
                                <a href="#" class="dropdown-toggle js-activated" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Order now <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="menu-simple.html">Fast order</a></li>
                                    <li><a href="menu-tiles.html">Menu tiles</a></li>
                                </ul>
                            </li>
                            <li><a href="reservation.html">Catering</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>
        </header>

        <!--===============end main navigation + top bar =====================-->