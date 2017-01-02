<!--374413471625854958269706803072259202131399386829497836277471117216044734280924224462969371-->

<%@include file = "backend/config.jsp" %>


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
        
        <link href="assets/css/bootstrap-datepicker.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap-clockpicker.min.css" rel="stylesheet">
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
        
        <script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
    </head>
    <body>
        
        <script>
            
            $.ajax({
        url: 'testback.jsp',
        data:{badge:1},
        success: function(data) {
            $('.cart-item-count').text($.trim(data));
        }
    
            });
        </script>
        
        <!--===============main navigation + top bar==========================-->
        <header class="header header-top-transparent">
            <!--top bar-->
            <div class="top-bar">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 hidden-xs">
                           
                        </div>
                        <div class="col-sm-6 text-right">
                            <ul class="list-inline level-2">
                                <li class="b-table"><a href="#" class=" waves-float waves-button" data-toggle="modal" data-target="#myModal">Book a table</a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
            <!-- Book a table pop up-->
            
         <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
        <form method="post" class="reservation-form" id="reservation" action="./reserve-a-table">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Reserve a table</h4>
      </div>
      <div class="modal-body">
        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control " name="name" id="r_name" placeholder="Name" required>
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="number" class="form-control" name="guests" id="r_guest" placeholder="Guest Number" min="4" max="100" maxlength="3" required>
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="number" class="form-control" name="phone" id="r_phone" placeholder="Phone Number: 018########" minlength="11" maxlength="11"  required>
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-phone"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="email" id="r_email" placeholder="Email Id">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-envelope"></span>
                                    </div>
                                </div>
                            </div>
                            </div>
                            
                        
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group date">
                                    <input type="text" class="form-control datepicker" name="date" placeholder="Date" required>
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group clockpicker">
                                    <input type="text" class="form-control" name="time" id="r_time" placeholder="Time" required>
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        
                        <div id="r_result"></div>  
                    
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" onclick="return reservation()">Book</button>
      </div>
        </form>
    </div>
  </div>
</div>

        <!-- End book a table pop up -->
            
            <!--end top bar-->
            
            <!--cart menu side panel-->
            
           
            
           
            <aside id="cartNavmenu" class="navmenu navmenu-inverse navmenu-fixed-right offcanvas">
                <div class="cart-inner">
                    <h4>Your cart (<span class="cart-item-count"></span>)</h4>
                    <hr>
                    <ul class="list-unstyled cart-list margin-b-30"></ul> 
                    
                    
                    <ul class="list-unstyled margin-b-30 cart-options" style="display: none">
                        <li>
                           <div class="text-center">
                                <a href="shop-checkout.html" class="btn btn-default">Checkout</a>
                                <a href="./cart" class="btn btn-primary">View Cart</a>
                            </div>
                            </li>
                    </ul>                       
                </div>
            </aside>

            <!--main navigation-->
            
            <nav class="navbar navbar-default navbar-static-top sticky-header" >
                <div class="container">

                    <!--cart icon-->
                    <div class="pull-right cart-nav">
                        <a href="javascript:void(0)" data-toggle="offcanvas" data-target="#cartNavmenu" data-canvas="body"><i class="ion-ios-cart"></i> <span class="badge cart-item-count">0</span></a>
                    </div>
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand logo" href="./"><img src="assets/images/logo.png" alt="logo" class="logo-default"></a>
                        <a class="navbar-brand logo-small" href="./"><img src="assets/images/logo-small.png" alt="logo" class="logo-scroll"></a>
                        
                        
                        
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
                            <li><a href="./menu">Menu</a></li>
                            <li><a href="./reserve-a-table">Reservation</a></li>
                             <li><a href="reservation.html">News</a></li>
                             <li><a href="reservation.html">Catering</a></li>
                        </ul>
                    </div><!--/.nav-collapse -->
                </div><!--/.container-fluid -->
            </nav>
        </div>
        </header>

        <!--===============end main navigation + top bar =====================-->