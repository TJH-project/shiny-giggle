<%@include file = "navbar.jsp" %>

<!--==============page header============-->
        <div class="page-breadcrumb" data-stellar-background-ratio="0.5">
            <div class="container text-center">
                <h1>Reservation</h1>
            </div>
        </div>
        <!--==============end page header============-->
        <div class="space-80"></div>
        
        

<div class="container">
            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
                    <div class="margin-b-40">
                        <h2 class="text-uppercase text-center">Book a table</h2>
                        <p>
                            Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.
                        </p>
                    </div>

                    <form role="form" method="post" class="reservation-form" id="reservation-form" action="">
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group date">
                                    <input type="text" class="form-control datepicker" name="r_date" placeholder="Date">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-th"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control " name="r_name" id="r_name" placeholder="Name">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="r_email" id="r_email" placeholder="Email Id">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-envelope"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group clockpicker">
                                    <input type="text" class="form-control" name="r_time" id="r_time" value="09:30" placeholder="Time">
                                    <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-time"></span>
                                    </span>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="r_guest" id="r_guest" placeholder="Guest Number">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-user"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" name="r_phone_number" id="r_phone_number" placeholder="Phone Number">
                                    <div class="input-group-addon">
                                        <span class="glyphicon glyphicon-phone"></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-xl btn-dark btn-block" name="r_submit" value="Book">
                        <div id="r_result"></div>  
                    </form>

                </div>
            </div>
        </div>

<%@include file = "footer.jsp" %>