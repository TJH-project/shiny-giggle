<%@page import="java.sql.*"%>
<%@include file = "cpanel-nav.jsp" %>
<script>
    $(document).ready(function() {
    $('select').material_select();
  }); 
</script>
    
<div class="cpanel-body">
    
    <div class="container">
        <br>
        <br>
        <br>
        <div class="row">
    <div class="col s12 m12">
        
        
<!--        Promotion Card-->
<div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/bg2.jpg">
          <span class="card-title primary-dark-bg">Promotion</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>You have not set any promotion. press + to add one</p>
        </div>
      </div>
</div>

<script>
     $(document).ready(function(){
    $('.modal').modal();
  });
</script>
     <!--      News Card-->  
    <div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/news.jpg">
            <a href="./News"><span class="card-title primary-dark-bg">News</span></a>
            <a class="btn-floating halfway-fab waves-effect waves-light red modal-trigger" href="#news-modal"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>You have not posted any news. press + to add one</p>
        </div>
      </div>
    </div>

     <!--      Menu Card-->  
    <div class="col s6 m6">
      <div class="card">
        <div class="card-image">
            <img src="assets/images/menu/lamb_mandy.jpg">
          <span class="card-title primary-dark-bg">Menu</span>
          <a class="btn-floating halfway-fab waves-effect waves-light red modal-trigger" href="#menu-modal"><i class="material-icons">add</i></a>
        </div>
        <div class="card-content">
          <p>To add a new Item, press the + button</p>
        </div>
      </div>
    </div>
     
      <!-- Modal News -->
  <div class="modal" id="news-modal">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
          <form action="publishPost" method="post">
        <div class="modal-header">
          <h4 class="modal-title">Add Post</h4>
        </div>
        <div class="modal-body">
            <div class="row">
                
                    <div class="input-field col s12">
                        <input id="title" type="text" class="validate" name="news-title" style="padding-left: 5px">
                        <label for="title">Post title</label>
                    </div>
                    
                    <div class="input-field col s12">
                        <textarea name="news-contents" id="post-contents"></textarea>
                    </div>
                    <script>
                        CKEDITOR.replace('news-contents');
                    </script>
                
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-default">Publish</button>
        </div>
          </form>
      </div>
    </div>
  </div>
     
      
      <!-- Modal Menu Item -->
  <div class="modal" id="menu-modal" role="dialog">
    <div class="modal-dialog modal-sm">
      <div class="modal-content">
          <form action="addMeal" method="post" enctype="multipart/form-data">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Add Menu Item</h4>
        </div>
        <div class="modal-body">
            <div class="row">
                
                    <div class="input-field col s6">
                        <input id="title" type="text" class="validate" name="meal">
                        <label for="title">Item name:</label>
                    </div>
                    
                    <div class="input-field col s6">
                        <select name="category">
                          <optgroup label="Food">
                              <%
                              try{
                                  ResultSet food = (ResultSet) request.getAttribute("foodcats");
                              
                              
                                while(food.next()) {
                                    
                                String catname = food.getString("f_category");
                              
                              %>
                            <option value="<%=catname%>"><%=catname%></option>
                            <%}%>
                          </optgroup>
                          <optgroup label="Beverages">
                             <%
                                 }catch(Exception e) {

                                    }
                                 
                              try{
                                  
                                  ResultSet bev = (ResultSet) request.getAttribute("beveragescats");
                                  
                                  while(bev.next()) {
                                    
                                String catname = bev.getString("b_category");
                              
                              %>
                            <option value="<%=catname%>"><%=catname%></option>
                            <%}}catch(Exception e) {
                                e.getCause();
                                }%>
                          </optgroup>
                        </select>
                        <label>Category</label>
                  </div>
            </div>
            <div class="row">
                
                <div class="file-field input-field col s6">
                        <div class="btn ">
                          <span>Add Image</span>
                          <input type="file" name="image">
                        </div>
                        <div class="file-path-wrapper">
                          <input class="file-path validate" type="text">
                        </div>
                    </div>
                
                <div class="input-field col s6">
                        <input name="price" id="item-price" type="number" class="validate">
                        <label for="title">Price: RM</label>
                    </div>
            </div>
            
            <div class="row">
                    <div class="input-field col s12">
                        <textarea name="description" id="desc" cols="30" rows="20"></textarea>
                        <label for="title">Description</label>
                    </div>
                
            </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-success">Add</button>
        </div>
              </form>
      </div>
    </div>
  </div>
</div>
            
            
</div>
        
        
        
    </div>
  </div>
    </div>
    
</div>

<%@include file = "cpanel-footer.jsp" %>
