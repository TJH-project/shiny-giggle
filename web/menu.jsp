<%@page import="java.sql.*"%>
<!DOCTYPE html><%@include file = "navbar.jsp" %>


        <!--==============page header============-->
        <div class="page-breadcrumb" data-stellar-background-ratio="0.5">
            <div class="container text-center">
                <h1 class="br-pages">Menu</h1>
            </div>
        </div>
        <!--==============end page header============-->
        <div class="space-80"></div>


        <div class="container">
<!--            <ul class="menu-filter-list list-inline margin-b-40 text-center">
                <li class="is-checked" data-filter="*">All</li>
                <li data-filter=".start">start</li>
                <li data-filter=".breakfast">Breakfast</li>
                <li data-filter=".lunch">Lunch</li>
                <li data-filter=".dinner">Dinner</li>

            </ul>-->

<form action="./search" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="Type then press Enter">
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            </form>

<ul class="menu-filter-list list-inline margin-b-40 text-center">
<!--                <li class="is-checked" data-filter="*">All</li>-->
                <li data-filter=".food-menu">Food</li>
                <li data-filter=".bev-menu">Beverages</li>
                
            </ul>

<div class="row menu-filter-items">
    
    <ul class="food-menu menu-filter-list list-inline text-center menu-item menu-cats">
        <li data-filter=".soup"><a href="#soups">Soups</a></li>
                <li data-filter=".bread"><a href="#bread">Bread</a></li>
                <li data-filter=".appetizers"><a href="#appetizers">Appetizers</a></li>
                <li data-filter=".main-dishes"><a href="#main-dishes">Main Dishes</a></li>
                <li data-filter=".hot"><a href="#hot-dishes">Hot Dishes</a></li>
                <li data-filter=".bbq"><a href="#bbq">Barbecue</a></li>
                <li data-filter=".seafood"><a href="#seafood">Seafood</a></li>
                <li data-filter=".desserts"><a href="#desserts">Desserts</a></li>
</ul>

    <ul class="bev-menu menu-filter-list list-inline margin-b-40 menu-item">
                <li data-filter=".fresh"><a href="#fresh-juices">Fresh Juices</a></li>
                <li data-filter=".hot-drinks"><a href="#hot-drinks">Hot Drinks</a></li>
                <li data-filter=".hot-drinks"><a href="#soft-drinks">Soft Drinks</a></li>
                

            </ul>
</div>
            
        


            <div class="row menu-filter-items">
                
                <%
                ResultSet rs = (ResultSet) request.getAttribute("results");
                
                while (rs.next()) {
                    int id = rs.getInt("p_id");
                    String name = rs.getString("p_name");
                    String description = rs.getString("p_description");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                
                %>
                
                <div class="<%=category%> col-md-4 margin-b-30 menu-item grid">
                        
                            <img id="prod" src="<%=image%>" alt="" class="img-responsive menu-image">
                            <div class="menu-grid-desc">                               
                                <span class="price pull-right">RM <%=price%></span>
                                <h4><%=name%></h4>
                                <p><%=description%></p>
                                <div class="pull-right">
                                    <a  class="fast-order btn btn-primary" href="" 
                                    data-toggle="modal" mid="<%=id%>" 
                                    data-target="#order">Fast Order</a>
                                    
                                <a class="add-to-cart btn btn-warning" mid="<%=id%>" 
                                   href="" data-toggle="tooltip" data-placement="top" 
                                   data-trigger="focus" title="Added">Add to cart</a>
                                </div>
                                

<!--    <ul class="dropdown-menu" id="menu1" aria-labelledby="drop4"> 
        <li><a class="fast-order btn btn-primary" href="#" data-toggle="modal" mid="<%=id%>" data-target="#order">Fast Order</a></li> 
        <li><a class="add-to-cart btn btn-warning" mid="<%=id%>" href="">Add to cart</a></li> 
    </ul>-->
                            </div>                           
                        
                </div>
                 <%}%>
            </div>
            <a href="product"></a>
        </div>
            
            
        <!-- Order pop up-->
            
<div class="modal fade" id="order" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog order" role="document">
    <div class="modal-content">
        <form class="form-horizontal" action="/order">

      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Order now!</h4>
      </div>
      <div class="modal-body">
          
          <div class="row">
          
          <div class="col-lg-8">
              
              <fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="name">Full name</label>  
  <div class="col-md-5">
  <input id="name" name="name" type="text" placeholder="Enter name here..." class="form-control input-md" required>
  <span class="help-block">Name of the recipient</span>  
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="phone">Contact No.</label>  
  <div class="col-md-5">
  <input id="phone" name="phone" type="text" placeholder="Phone number" class="form-control input-md" required>
  <span class="help-block">We will contact you there</span>  
  </div>
</div>

<!-- Multiple Radios (inline) -->
<div class="form-group">
  <label class="col-md-4 control-label" for="method">Type of order</label>
  <div class="col-md-4"> 
    <label class="radio-inline" for="method-0">
        <input type="radio" name="method" value="pickup" onclick="TOO('hidden')">
      Pick up
    </label> 
    <label class="radio-inline" for="method-1">
      <input type="radio" name="method" value="delivery" checked="checked"
             
             
             
             
             
             
             
             
             
             
             onclick="TOO('block')">
      Delivery
    </label>
  </div>
</div>

<script>
    
    function TOO(option) {
        
        if (option ==="hidden") {
            $('#deliveryAddress').hide();
        } else {
            $('#deliveryAddress').show();
            
        }
        
            
           
    }
    
</script>

<!-- Text input-->
<div id="deliveryAddress" class="form-group">
    <label class="col-md-4 control-label" for="address">Address</label>  
  <div class="col-md-5">
  <input id="address" name="address" type="text" placeholder="Your Address" class="form-control input-md">
  <span class="help-block">Delivery address</span>  
  </div>
</div>

</fieldset>
              
          </div>
              
          
          <div class="thumbnail col-sm-4 margin-b-30 menu-item">
                        
                            <img id="img" src="" alt="" class="img-responsive">
                            <div class="menu-grid-desc caption">                               
                                <span class="price pull-right">RM <span id="price"></span></span>
                                <h4 id="title"></h4>
                            </div>             
                </div>      


      </div>
      <div class="modal-footer">
          <input type="reset" class="btn btn-default" value="reset" />
        <button type="submit" class="btn btn-success">Order now!</button>
      </div>
        
              </div>
        </form>
              
    </div>
  </div>
</div>
       <%@include file = "footer.jsp" %>