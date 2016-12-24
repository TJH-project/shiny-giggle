<%@include file = "navbar.jsp" %>

<!--==============page header============-->
        <div class="page-breadcrumb" data-stellar-background-ratio="0.5">
            <div class="container text-center">
                <h1 class="br-pages">Reservation</h1>
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

                    <form method="post" class="reservation-form" id="reservation" action="./reserve-a-table">
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
                        <input type="submit" class="btn btn-xl btn-dark btn-block" value="Book" onclick="return reservation()">
                        <div id="r_result"></div>  
                    </form>

                </div>
            </div>
        </div>
        
        

<%@include file = "footer.jsp" %>