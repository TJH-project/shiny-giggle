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
                <div class="col-sm-12">
                    <div class="table-responsive">
                        <table class="table table-bordered cart-table">
                            <tbody>
                                <%
                                int items = 0;
                                 ResultSet res = (ResultSet) request.getAttribute("cart-items");
                                 while (res.next()) {
                                     items++;
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
                                            <a class="incr-btn minus-meal"  min="<%=id%>" data-action="decrease" href="#">-</a>
                                            <input class="quantity" type="text" value="<%=count%>">
                                            <a class="incr-btn plus-meal" add="<%=id%>" data-action="increase" href="#">+</a>
                                        </div>
                                    </td>
                                    <td class="item-remove">
                                        <a href="#"><i class="ion-trash-b" trash="<%=id%>"></i></a>
                                    </td>
                                </tr>
                                <%}%>
                            </tbody>
                        </table> 
                    </div><!--end cart table-->
                    
                            <%
                            if (items != 0) {
                            %>
                         <div class="row" id="summary">
                             
                             <div id="totalcheck" class="col-md-7 col-md-offset-5 margin-b-30">
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
                                                 <td>Gov. tax (%6)</td>
                                                 <td>RM <span id="tax"></span></td>
                                             </tr>
                                              <tr>
                                                  <td class="text-color"><strong>Total</strong></td>
                                                  <td class="text-color"><strong>RM <span id="total"></span></strong></td>
                                             </tr>
                                         </table>
                                     </div>
                                 </div><!--end cart totals-->
                                 <div class="cart-buttons text-right">
                                     <a href="#" class="btn btn-primary btn-lg">Checkout</a>
                                 </div>
                             </div>
                        </div>
                         
                            <%} else out.print("<center> <h3>No items in the cart .. <a href=\"./menu\">add some?</a></h3> </center> ");%>
                            
                </div>
            </div>
        </div>
                            <script>
                                ret();
                                
                                // calculate subtotal
                                function ret() {
                                    $.ajax({
                                    url: 'testback.jsp',
                                    method: 'POST',
                                    data: {subtotal:1},
                                    success: function(data) {
                                        calc(data);
}
                                });
                                }
                                
                                function calc(data) {
                                    var price = parseFloat($.trim(data));
                                          $('#subtotal').text(price);
                                          // calculate tax
                                          var tax = parseFloat($.trim(data)) * 0.06;
                                $('#tax').text(tax.toFixed(2));
                                
                                $('#total').text(price+tax);
                                }
                                
                                
                                
                            </script>       
                            
                            

        <%@include file = "footer.jsp" %>