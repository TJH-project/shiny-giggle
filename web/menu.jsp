<%@page import="java.sql.ResultSet"%>
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

<form action="" class="search-form">
                <div class="form-group has-feedback">
            		<label for="search" class="sr-only">Search</label>
            		<input type="text" class="form-control" name="search" id="search" placeholder="Type then press Enter">
                        <span class="glyphicon glyphicon-search form-control-feedback"></span>
            	</div>
            </form>

<ul class="menu-filter-list list-inline margin-b-40 text-center">
                <li class="is-checked" data-filter="*">All</li>
                <li data-filter=".food-menu">Food</li>
                <li data-filter=".bev-menu">Beverages</li>
                
            </ul>

<div class="row menu-filter-items">
    
    <ul class="food-menu menu-filter-list list-inline text-center menu-item menu-cats">
                <li class="food-menu" data-filter=".soup">Soups</li>
                <li data-filter=".bread">Bread</li>
                <li data-filter=".apitz">Appetizers</li>
                <li data-filter=".main-dishes">Main Dishes</li>
                <li data-filter=".hot">Hot Dishes</li>
                <li data-filter=".bbq">Barbecue</li>
                <li data-filter=".seafood">Seafood</li>
</ul>

    <ul class="bev-menu menu-filter-list list-inline margin-b-40 menu-item">
                <li data-filter=".fresh">Fresh</li>
                <li data-filter=".hot-drinks">Hot Drinks</li>
                

            </ul>
</div>
            
        


            <div class="row menu-filter-items">
                
                <%
                ResultSet rs = (ResultSet) request.getAttribute("results");
                
                while (rs.next()) {
                    String name = rs.getString("p_name");
                    String category = rs.getString("p_category");
                    String image = rs.getString("p_image");
                    float price = rs.getFloat("p_price");
                
                %>
                
                <div class="<%=category%> col-sm-4 margin-b-30 menu-item">
                        <a href="#" class="menu-grid">
                            <img src="<%=image%>" alt="" class="img-responsive">
                            <div class="menu-grid-desc">                               
                                <span class="price pull-right">RM <%=price%></span>
                                <h4><%=name%></h4>
                                <p>
                                    Mauris malesuada fames Aliquam erat ac ipsum dipiscing Nulla amet elt wisi bulum Integer luctus et.
                                </p>
                                
                                <div class="input-group">
                                    <div class="input-group-btn">
                                      <!-- Button and dropdown menu -->
                                    </div>
                                    <input type="text" class="form-control" aria-label="...">
                                  </div>
                            </div>                           
                        </a>
                </div>
                 <%}%>
            </div>
        </div>

       <%@include file = "footer.jsp" %>