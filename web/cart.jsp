<%@include file = "navbar.jsp" %>
<!--==============page header============-->
        <div class="page-breadcrumb" data-stellar-background-ratio="0.5">
            <div class="container text-center">
                <h1>My cart</h1>
            </div>
        </div>
        <!--==============end page header============-->
        <div class="space-80"></div>

        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-sm-offset-1">
                    <div class="table-responsive">
                        <table class="table table-bordered cart-table">
                            <tbody>
                                <%
                                
                                 ResultSet res = (ResultSet) request.getAttribute("cart-items");
                                 
                                 while (res.next()) {
                                     int id = res.getInt("item_id");
                                     String name = res.getString("item_name");
                                     String image = res.getString("item_image");
                                     float price = res.getFloat("item_price");
                                     int count = res.getInt("item_count");
                                 %>
                                <tr>
                                    <td class="item-thumb">
                                        <img src="<%=image%>" alt="" width="70">
                                    </td>
                                    <td class="item-name">
                                        <h4><%=name%></h4>
                                    </td>
                                    <td class="item-price">
                                        <h4>RM <%=price%></h4>
                                    </td>
                                    <td class="item-count">
                                        <div class="count-input">
                                            <a class="incr-btn minus-meal"  add="<%=id%>" data-action="decrease" href="#">-</a>
                                            <input class="quantity" type="text" value="<%=count%>">
                                            <a class="incr-btn plus-meal" min="<%=id%>" data-action="increase" href="#">+</a>
                                        </div>
                                    </td>
                                    <td class="item-remove">
                                        <a href="#"><i class="ion-trash-b"></i></a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table>                  
                    </div><!--end cart table-->
                         <div class="row">
                             
                             <div class="col-md-7 col-md-offset-5 margin-b-30">
                                 <div class="cart-totals margin-b-20">
                                    <div class="cart-totals-title">
                                        <h3>Cart Totals</h3>
                                    </div>
                                     <div class="cart-totals-fields">
                                         <table class="table">
                                             <tr>
                                                 <td>Cart Subtotal</td>
                                                 <td>RM <span id="subtotal"></span></td>
                                             </tr>
                                              <tr>
                                                 <td>Shipping & Handling</td>
                                                 <td>$2.00</td>
                                             </tr>
                                              <tr>
                                                  <td class="text-color"><strong>Total</strong></td>
                                                  <td class="text-color"><strong>$31.00</strong></td>
                                             </tr>
                                         </table>
                                     </div>
                                 </div><!--end cart totals-->
                                 <div class="cart-buttons text-right">
                                     <a href="#" class="btn btn-primary btn-lg">Checkout</a>
                                 </div>
                             </div>
                        </div>
                </div>
            </div>
        </div>
                            
                            
                            

        <%@include file = "footer.jsp" %>